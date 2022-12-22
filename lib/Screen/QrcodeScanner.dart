import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:eshop_multivendor/Helper/Color.dart';
import 'package:eshop_multivendor/Helper/Constant.dart';
import 'package:eshop_multivendor/Screen/Cart.dart';
import 'package:eshop_multivendor/Screen/Dashboard.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart'as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'package:eshop_multivendor/Helper/String.dart';
import 'package:eshop_multivendor/Screen/Payment.dart';
import 'package:eshop_multivendor/Screen/SubCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';


class QRViewExample extends StatefulWidget {
  late final bool? isTakeAway;
  final String? title;
  final sellerId;
  final catId;
  final sellerData,
      sellerName,
      sellerImage,
      sellerRating,
      storeDesc,
      storeQR,
      sellerStoreName , subCatId,estimatedTime,foodPerson,storerating;
  QRViewExample({this.isTakeAway, this.sellerImage,this.sellerStoreName,
    this.foodPerson,this.storerating,this.subCatId,
    this.sellerData,this.storeQR,this.storeDesc,
    this.title,
    this.sellerId,
    this.estimatedTime,
    this.sellerRating,
    this.sellerName,
    this.catId,
  });

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}
StateSetter? checkoutState;

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  checkTableBooking(String sellerId,tableId)async{
    print("SELLERqqqqqqqqqqqqq${sellerId}");
    print("Tableqqqqqqqqqqqq${tableId}");
    var headers = {
      'Cookie': 'ci_session=c96606a855f83aa6fa32e680f84eb69236c6d19d'
    };
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl+'barcode_checker'));
    request.fields.addAll({
      'seller_id': '$sellerId',
      'table_no': '$tableId'
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var Resslt = await response.stream.bytesToString();
      final jsanReponce = json.decode(Resslt);
      print("Ruuuuuuuuu${jsanReponce.toString()}");
      if(jsanReponce["error"] == true) {
        print("Dsds");

        Fluttertoast.showToast(msg: "${jsanReponce['message']}");
        Navigator.pop(context,{
          "tableId":"${tableId}",
          "sellerId":"${sellerId}"
        }
        );
      }else{
        Fluttertoast.showToast(msg: "${jsanReponce['message']}");
        Navigator.pop(context);
        // Fluttertoast.showToast(
        //     msg: "Already Booked",
        //
        // );
      //  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Dashboard()), (route) => false);
       // Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
        //Navigator.pop(context,true);
      }
    }
    else {
    print(response.reasonPhrase);
    }
  }

  String? orderType;
  checkRestrauntBooking(String sellerId,String orderType,Barcode barResult)async{
    String? iod = CUR_USERID;
    print("iod ${iod}");
    // if( widget.isTakeAway = true){
    //   orderType = "1";
    // }else{
    //   orderType = "2";
    // }
    print("SELLERqqqqqqqqqqqqq${sellerId}");
    var headers = {
      'Cookie': 'ci_session=c96606a855f83aa6fa32e680f84eb69236c6d19d'
    };
    print("checking values ${sellerId} and ${orderType.toString()}");
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl+'qur_code_checker'));
    request.fields.addAll({
      'seller_id': '$sellerId',
      'order_type' : orderType.toString(),
      'user_id':CUR_USERID.toString(),
      // 'table_no': '$tableId'
    });
    print("pppdddd ${request.fields.toString()}");
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    print("response code here ${response.statusCode}");
    if (response.statusCode == 200) {
      var Resslt = await response.stream.bytesToString();
      final jsanReponce = json.decode(Resslt);
      print("REEEEEEEEEEEEEEEEEEE${jsanReponce.toString()}");
      if(jsanReponce["error"] == false || jsanReponce['message'] == "Product Cart In Another Seller" ) {
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Product in a Cart is from another seller",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15),),
              ],
            ),
            actions: [
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.of(context);
                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Dashboard()), (route) => false);
                      //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Cart(fromBottom: true,)), (route) => false);
                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Cart(fromBottom: false)));
                    });
                  },
                  child: Container(
                      width: 70,
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange
                      ),
                      child: Text("OK",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)) )
            ],
          );
        });
      }
      else{
        if(mounted)
          {
            // showDialog(context: context, builder: (context){
            //   return AlertDialog(
            //     content: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Text("Call a waiter",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
            //       ],
            //     ),
            //     actions: [
            //     InkWell(
            //       onTap: (){
            //         Navigator.pop(context);
            //       },
            //       child: Container(
            //         height: 35,
            //         width: 90,
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //           color: Colors.green,
            //           borderRadius: BorderRadius.circular(6),
            //         ),
            //         child:  Text("Yes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
            //       ),
            //     ),
            //       SizedBox(width: 10,),
            //       InkWell(
            //         onTap: (){
            //           Navigator.pop(context);
            //         },
            //         child: Container(
            //           height: 35,
            //           width: 90,
            //           alignment: Alignment.center,
            //           decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(6),
            //           ),
            //           child:  Text("No",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 15),),
            //         ),
            //       ),
            //     ],
            //   );
           // });
              Navigator.pop(context,{
                "sellerId":"${sellerId}",
                "tableId":"0",
              },
              );
          }
        else{
          if(mounted)
            Navigator.pop(context,{
              "sellerId":"${sellerId}",
              "tableId":"0"
            },
            );
        }
        List ans = result!.code!.split("_");
        if(orderType != "1"){

          checkTableBooking("${ans[0]}","${ans[1]}".toString());
        }
        // Navigator.pop(context,{
        //   "seller_id":"${jsanReponce['seller_id']}"
        // });
        // Fluttertoast.showToast(
        //   msg: "Already Booked",
        // );
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
      }
    }
    else {
      print(response.reasonPhrase);
    }
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  SharedPreferences? pref;
  storeSharedPreference()async{
     pref = await SharedPreferences.getInstance();
  }

  checkNavigate(){
    return Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory(
            storeQR: widget.storeQR,
            sellerStoreName: widget.sellerStoreName,
            sellerName: widget.sellerName,
            sellerRating:widget.sellerRating,
            storerating:widget.storerating,
            foodPerson: widget.foodPerson,
            estimatedTime: widget.estimatedTime,
            storeDesc: widget.storeDesc,
            title:widget.title.toString(),
            sellerId: widget.sellerId.toString(),
            sellerData:widget.sellerData,
    )));
  }
  updateCheckout() {
    if (mounted) checkoutState!(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print("checking seller id here ${widget.title}");
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          // Expanded(
          //   flex: 1,
          //   child: FittedBox(
          //     fit: BoxFit.contain,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         if (result != null)
          //           Text(
          //               'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
          //         else
          //           const Text('Scan a code'),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: <Widget>[
          //             Container(
          //               margin: const EdgeInsets.all(8),
          //               child: ElevatedButton(
          //                   onPressed: () async {
          //                     await controller!.toggleFlash();
          //                     setState(() {});
          //                   },
          //                   child: FutureBuilder(
          //                     future: controller?.getFlashStatus(),
          //                     builder: (context, snapshot) {
          //                       return Text('Flash: ${snapshot.data}');
          //                     },
          //                   )),
          //             ),
          //             Container(
          //               margin: const EdgeInsets.all(8),
          //               child: ElevatedButton(
          //                   onPressed: () async {
          //                     await controller!.flipCamera();
          //                     setState(() {});
          //                   },
          //                   child: FutureBuilder(
          //                     future: controller?.getCameraInfo(),
          //                     builder: (context, snapshot) {
          //                       if (snapshot.data != null) {
          //                         return Text(
          //                             'Camera facing ${describeEnum(snapshot.data!)}');
          //                       } else {
          //                         return const Text('loading');
          //                       }
          //                     },
          //                   )),
          //             )
          //           ],
          //         ),
          //         // Row(
          //         //   mainAxisAlignment: MainAxisAlignment.center,
          //         //   crossAxisAlignment: CrossAxisAlignment.center,
          //         //   children: <Widget>[
          //         //     Container(
          //         //       margin: const EdgeInsets.all(8),
          //         //       child: ElevatedButton(
          //         //         onPressed: () async {
          //         //           await controller?.pauseCamera();
          //         //         },
          //         //         child: const Text('pause',
          //         //             style: TextStyle(fontSize: 20)),
          //         //       ),
          //         //     ),
          //         //     Container(
          //         //       margin: const EdgeInsets.all(8),
          //         //       child: ElevatedButton(
          //         //         onPressed: () async {
          //         //           await controller?.resumeCamera();
          //         //         },
          //         //         child: const Text('resume',
          //         //             style: TextStyle(fontSize: 20)),
          //         //       ),
          //         //     )
          //         //   ],
          //         // ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 40,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

   _onQRViewCreated(QRViewController controller) {
      this.controller = controller;
      controller.resumeCamera();
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });

      storeSharedPreference();
      bool? oType = pref!.getBool('isTakeAway');
     // bool oType = true;
      print("bool check ${oType}");
      // if(oType == true){
      //   orderType = "1";
      // }
      // else{
      //   orderType = "2";
      // }
      //  if(orderType == "1"){
      //
      //   checkRestrauntBooking(result!.code.toString(),orderType.toString());
      // }

     //else{
     //   checkRestrauntBooking(result!.code.toString(),orderType.toString());
      List ans;
         ans = result!.code!.split('_');
        //  if(ans.length<=1){
        // showDialog(context: context, builder: (context){
        //   return AlertDialog(
        //     content: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         Text("Does not match with your cart product"),
        //       ],
        //     ),
        //     actions: [
        //       InkWell(
        //         onTap: (){
        //           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Dashboard()), (route) => false);
        //         },
        //         child: Container(
        //           height: 40,
        //           width: 70,
        //           decoration: BoxDecoration(
        //               color: Colors.orange,
        //             borderRadius: BorderRadius.circular(6)
        //           ),
        //           alignment: Alignment.center,
        //           child: Text("Ok",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        //         ),
        //       ),
        //     ],
        //   );
        // });
        //    // if(result != null){
        //    //   print("ans[0] ${ans[0]}");
        //    //   // checkRestrauntBooking(ans[0],);
        //    //   // showDialog(context: context, builder: (context){
        //    //   //   return AlertDialog(content: Column(
        //    //   //     mainAxisSize: MainAxisSize.min,
        //    //   //     crossAxisAlignment: CrossAxisAlignment.start,
        //    //   //     mainAxisAlignment: MainAxisAlignment.center,
        //    //   //     children: [
        //    //   //       Text("Take away",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
        //    //   //       SizedBox(height: 8,),
        //    //   //       Text("In Restaurant",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),)
        //    //   //     ],
        //    //   //   ),);
        //    //   // });
        //    //   if(ans[0] == null || ans[0] == "" ){
        //    //     Navigator.pop(context,{
        //    //       "tableId":"${ans[1]}",
        //    //       "sellerId":"${ans[0]}"
        //    //     }
        //    //     );
        //    //   }
        //    //   else{
        //    //     // checkTableBooking("${ans[0]}","${ans[1]}".toString());
        //    //   }
        //    //   Navigator.pop(context,{
        //    //     "tableId":"${ans[1]}",
        //    //     "sellerId":"${ans[0]}"
        //    //   }
        //    //   );
        //    //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Payment(updateCheckout, "")));
        //    //   // setState(() {
        //    //   //   controller.dispose();
        //    //   // });
        //    //   controller.dispose();
        //    // }
        //  }
         //else{
      if( oType == true){
        orderType = "1";
      }else{
        orderType = "2";
      }
      checkRestrauntBooking(ans[0].toString(),orderType.toString(),result!);
                // setState(() {
           //   TABLE_ID = ans[1];
           //   SELLER_ID = ans[0];
           //   pref!.setString('seller_id',ans[0]);
           //   pref!.setString('table_id', ans[1]);
           // });
           // if(result != null){
           //   print("ans[0] ${ans[0]}");
           //   // checkRestrauntBooking(ans[0],);
           //   // showDialog(context: context, builder: (context){
           //   //   return AlertDialog(content: Column(
           //   //     mainAxisSize: MainAxisSize.min,
           //   //     crossAxisAlignment: CrossAxisAlignment.start,
           //   //     mainAxisAlignment: MainAxisAlignment.center,
           //   //     children: [
           //   //       Text("Take away",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
           //   //       SizedBox(height: 8,),
           //   //       Text("In Restaurant",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),)
           //   //     ],
           //   //   ),);
           //   // });
           //   if(ans[0] == null || ans[0] == "" ){
           //     Navigator.pop(context,{
           //       "tableId":"${ans[1]}",
           //       "sellerId":"${ans[0]}"
           //     }
           //     );
           //   }
           //   else{
           //     // checkTableBooking("${ans[0]}","${ans[1]}".toString());
           //   }
           //   Navigator.pop(context,{
           //     "tableId":"${ans[1]}",
           //     "sellerId":"${ans[0]}"
           //   }
           //   );
           //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Payment(updateCheckout, "")));
           //   // setState(() {
           //   //   controller.dispose();
           //   // });
           //   //controller.dispose();
           // }
       //  }

        // print("table id here ${ans} and ${ans[0]} and ${ans[1]}");

      //}
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}