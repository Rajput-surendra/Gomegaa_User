import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:eshop_multivendor/Helper/ApiBaseHelper.dart';
import 'package:eshop_multivendor/Helper/Color.dart';
import 'package:eshop_multivendor/Helper/Constant.dart';
import 'package:eshop_multivendor/Helper/Session.dart';
import 'package:eshop_multivendor/Model/TodaySpecialModel.dart';
import 'package:eshop_multivendor/Provider/CategoryProvider.dart';
import 'package:eshop_multivendor/Screen/ProductList.dart';
import 'package:eshop_multivendor/Screen/QrcodeScanner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Helper/String.dart';
import '../Model/Section_Model.dart';
import '../Provider/HomeProvider.dart';
import 'package:http/http.dart' as http;

class SellerProfile extends StatefulWidget {
  final String? sellerID,
      sellerName,
      sellerImage,
      sellerRating,
      title,
      storeDesc,
      todaySpecial,
  todayCategory,
      storeQR,
  address,
      sellerStoreName,
      subCatId,
      estimatedTime,
      foodPerson,
      storerating;
  final sellerData;
  final search;
  final extraData;

  SellerProfile(
      {Key? key,
      this.sellerID,
      this.storerating,
      this.estimatedTime,
      this.sellerName,
        this.address,
        this.todaySpecial,
      this.sellerImage,
      this.title,
      this.storeQR,
      this.foodPerson,
      this.sellerRating,
      this.todayCategory,
      this.storeDesc,
      this.sellerStoreName,
      this.subCatId,
      this.sellerData,
      this.search,
      this.extraData})
      : super(key: key);

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  late TabController _tabController;
  bool _isNetworkAvail = true;
  bool isDescriptionVisible = false;

  @override
  void initState() {
    super.initState();
    print("this is seller ID @@ ${widget.sellerID}");
    _tabController = TabController(vsync: this, length: 2);
    Future.delayed(Duration(seconds: 2),(){
      return showCustomDialog();
    });
    Future.delayed(Duration(seconds: 1),(){
      return getCat();
    });
    getTodySpecialCategory();
  }

  showCustomDialog(){
    return showDialog(
        barrierDismissible: false,
        context: context, builder: (context){
      return AlertDialog(
        // titlePadding: EdgeInsets.only(bottom: 0),
        // title: Align(
        //     alignment: Alignment.topRight,
        //     child: Icon(Icons.clear)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Where you want to enjoy your food",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),),
            SizedBox(height: 10,),
            InkWell(
              onTap: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('isTakeAway', true);
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    Icon(Icons.delivery_dining,size: 20,),
                    SizedBox(width: 8,),
                    Text("Take away",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),

            SizedBox(height: 8,),
            InkWell(
              onTap: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setBool('isTakeAway', false);
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                height: 45,
                child: Row(
                  children: [
                    Icon(Icons.restaurant,size: 20,),
                    SizedBox(width: 8,),
                    Text("Dine In",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
          ],
        ),);
    });
  }
  List<Product> catList = [];
  List<Product> popularList = [];
  void getCat() {
    Map parameter = {
      CAT_FILTER: "false",
      "seller_id":"${widget.sellerID}"
    };
    print("get cat api ${getCatApi}");
    print("${parameter}");
    apiBaseHelper.postAPICall(getCatApi, parameter).then((getdata) {
      bool error = getdata["error"];
      String? msg = getdata["message"];
      if (!error) {
        print("api working here");
        var data = getdata["data"];
        catList =
            (data as List).map((data) => new Product.fromCat(data)).toList();

        if (getdata.containsKey("popular_categories")) {
          var data = getdata["popular_categories"];
          popularList =
              (data as List).map((data) => new Product.fromCat(data)).toList();

          if (popularList.length > 0) {
            Product pop =
            new Product.popular("Popular", imagePath + "popular.svg");
            catList.insert(0, pop);
           // context.read<CategoryProvider>().setSubList(popularList);
          }
        }
      } else {
       // setSnackbar(msg!, context);
      }

      context.read<HomeProvider>().setCatLoading(false);
    }, onError: (error) {
    //  setSnackbar(error.toString(), context);
      context.read<HomeProvider>().setCatLoading(false);
    });
  }

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');


  getTodySpecialCategory()async{
    var headers = {
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzEyNjIxOTQsImlhdCI6MTY3MTI2MTg5NCwiaXNzIjoiZXNob3AifQ.M8LsdbHrK0Pw3nRrgGvnDrPW5p0lEDS0lsLP6DEWvbQ',
      'Cookie': 'ci_session=a316cbb6222497b2a67c267376b0ba7b9bb8c124'
    };
    var request = http.MultipartRequest('POST', Uri.parse('${baseUrl}get_product_today_special'));
    request.fields.addAll({
      'category_id': '${widget.todayCategory}',
      'seller_id': '${widget.sellerID}'
    });
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var finalResult = await response.stream.bytesToString();
      final jsonResponse = TodaySpecialModel.fromJson(json.decode(finalResult));
      print("final json response here ${jsonResponse} and ${jsonResponse.data}");
    }
    else {
      print(response.reasonPhrase);
    }
  }


  @override
  Widget build(BuildContext context) {
    print("STORE NAME==== ${widget.sellerStoreName} and ${imageUrl}${widget.todaySpecial} ");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.whiteTemp,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: colors.primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: widget.search
            ? Text(
                "${widget.sellerName}",
                style: TextStyle(color: colors.primary),
              )
            : Text(
                "${widget.sellerStoreName}",
                style: TextStyle(color: colors.primary),
              ),
      ),
      body: Material(
        child: Column(
          children: [
             widget.todaySpecial == "" || widget.todaySpecial == null ? SizedBox.shrink() : InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList(
                   fromSeller: true,
                   name: "",
                   id: widget.sellerID,
                   subCatId: widget.todayCategory.toString(),
                   tag: false,
                 )   ));
               },
               child: Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(borderRadius: BorderRadius.circular(7),
                child: Image.network("${imageUrl}${widget.todaySpecial}",fit: BoxFit.fill,),
                ),
            ),
             ) ,
            widget.search
                ? Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(widget.sellerImage.toString()),
                            ),
                            title:
                                Text("${widget.sellerStoreName}".toUpperCase()),
                            subtitle: Text(
                              "${widget.storeDesc}",
                              maxLines: 2,
                            ),
                          ),
                         widget.address == null  || widget.address == "" ? SizedBox.shrink() : Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("${widget.address}",style: TextStyle(color: Colors.black,fontSize: 14),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: colors.primary,
                                    ),
                                    Text("${widget.sellerRating}"),

                                  ],
                                ),
                                // widget.extraData["estimated_time"]
                                // widget.estimatedTime != ""
                                //     ? Column(
                                //         children: [
                                //           Text("Delivery Time"),
                                //           Text(
                                //             "${widget.estimatedTime}",
                                //             //"${widget.extraData["estimated_time"]}",
                                //             style:
                                //                 TextStyle(color: Colors.green),
                                //           ),
                                //         ],
                                //       )
                                //     : Container(),
                                // // widget.extraData["food_person"]
                                // widget.foodPerson != ""
                                //     ? Column(
                                //         children: [
                                //           Text("₹/Person"),
                                //           Text('${widget.foodPerson}'),
                                //           //Text("${widget.extraData["food_person"]}"),
                                //         ],
                                //       )
                                //     : Container()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Stack(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage(widget.sellerImage.toString()),
                                fit: BoxFit.fill)),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width * 0.35,
                          color: Colors.black.withOpacity(0.5),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  // backgroundImage: NetworkImage(widget.sellerData!.seller_profile),
                                  backgroundImage:
                                      NetworkImage("${widget.sellerImage}"),
                                ),
                                title: Text(
                                  "${widget.sellerStoreName.toString()}"
                                      .toUpperCase(),
                                  style: TextStyle(color: colors.whiteTemp),
                                ),
                                subtitle: Text(
                                  "${widget.storeDesc}",
                                  maxLines: 2,
                                  style: TextStyle(color: colors.whiteTemp),
                                ),
                              ),
                              // ListTile(title: Text("Address"), subtitle: Text("${widget.sellerData.address}"),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.star_rounded,
                                          color: colors.primary,
                                        ),
                                        Text(
                                          "${widget.sellerRating}",
                                          style: TextStyle(
                                              color: colors.whiteTemp),
                                        )
                                      ],
                                    ),
                                   // widget.estimatedTime != ""
                                   //     ?
                                   //  Column(
                                   //          children: [
                                   //            Text(
                                   //              "Delivery Time",
                                   //              style: TextStyle(
                                   //                  color: colors.whiteTemp),
                                   //            ),
                                   //            Text(
                                   //              "${widget.estimatedTime}",
                                   //              style: TextStyle(
                                   //                  color: Colors.green),
                                   //            ),
                                   //          ],
                                   //        )
                                   //      : Container(),
                                   //  widget.foodPerson != ""
                                   //      ? Column(
                                   //          children: [
                                   //            Text(
                                   //              "₹/Person",
                                   //              style: TextStyle(
                                   //                  color: colors.whiteTemp),
                                   //            ),
                                   //            Text(
                                   //              "${widget.foodPerson}",
                                   //              style: TextStyle(
                                   //                  color: colors.whiteTemp),
                                   //            ),
                                   //          ],
                                   //        )
                                   //      : Container()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            // widget.storeQR == ""
            //     ? SizedBox.shrink()
            //     : Container(
            //         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            //         width: MediaQuery.of(context).size.width,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("QR Scanner"),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             Align(
            //               alignment: Alignment.center,
            //               child: Container(
            //                 height: 90,
            //                 width: 100,
            //                 child: ClipRRect(
            //                     borderRadius: BorderRadius.circular(7),
            //                     child: Image.network(
            //                       "${imageUrl + widget.storeQR.toString()}",
            //                       fit: BoxFit.fill,
            //                     )),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),

            widget.sellerID == "" || widget.sellerID == null ? SizedBox.shrink(): Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Text("Categories",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                )),
       catList == null || catList.isEmpty ? Center(child: CircularProgressIndicator()):
       Expanded(child: ListView.builder(
           shrinkWrap: true,
           itemCount: catList.length,
           physics: ScrollPhysics(),
           itemBuilder: (c,i){
         return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white,
          ),
           margin: EdgeInsets.only(top: 10,left: 10,right: 10),
           padding: EdgeInsets.all(8),
           child: ListTile(
             onTap: (){
               print("sdsds ${catList[i].id}");
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList(
              fromSeller: true,
              name: "",
              id: widget.sellerID,
              subCatId: catList[i].id.toString(),
              tag: false,
            )));
             },
             contentPadding: EdgeInsets.symmetric(horizontal: 5),
             title: Text(catList[i].name.toString()),
             leading:Container(
               height: 90,
               width: 80,
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(6),
                 child: Image.network("${catList[i].image}",fit: BoxFit.cover,),
               ),
             )
           ),
         );
       })),
        // Expanded(
        //       child: ProductList(
        //         fromSeller: true,
        //         name: "",
        //         id: widget.sellerID,
        //         subCatId: widget.subCatId,
        //         tag: false,
        //       ),
        //     ),
          ],
        ),
      ),
    );

    DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: getAppBar(getTranslated(context, 'SELLER_DETAILS')!, context),
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: getTranslated(context, 'DETAILS')!),
                  Tab(text: getTranslated(context, 'PRODUCTS')),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    detailsScreen(),
                    ProductList(
                      fromSeller: true,
                      name: "",
                      id: widget.sellerID,
                      tag: false,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar:
      ),
    );
  }

  // Future fetchSellerDetails() async {
  //   var parameter = {};
  //   final sellerData = await apiBaseHelper.postAPICall(getSellerApi, parameter);
  //   List<Seller> sellerDetails = [];
  //   bool error = sellerData["error"];
  //   String? msg = sellerData["message"];
  //   if (!error) {
  //     var data = sellerData["data"];
  //     sellerDetails =
  //         (data as List).map((data) => Seller.fromJson(data)).toList();
  //   } else {
  //     setSnackbar(msg!, context);
  //   }
  //
  //   return sellerDetails;
  // }

  Widget detailsScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: CircleAvatar(
              radius: 80,
              backgroundColor: colors.primary,
              backgroundImage: NetworkImage(widget.sellerImage!),
              // child: ClipRRect(
              //   borderRadius: BorderRadius.circular(40),
              //   child: FadeInImage(
              //     fadeInDuration: Duration(milliseconds: 150),
              //     image: NetworkImage(widget.sellerImage!),
              //
              //     fit: BoxFit.cover,
              //     placeholder: placeHolder(100),
              //     imageErrorBuilder: (context, error, stackTrace) =>
              //         erroWidget(100),
              //   ),
              // )
            ),
          ),
          getHeading(widget.sellerStoreName!),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.sellerName!,
            style: TextStyle(
                color: Theme.of(context).colorScheme.lightBlack2, fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: colors.primary),
                      child: Icon(
                        Icons.star,
                        color: Theme.of(context).colorScheme.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      widget.sellerRating!,
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.lightBlack2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: colors.primary),
                        child: Icon(
                          Icons.description,
                          color: Theme.of(context).colorScheme.white,
                          size: 30,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isDescriptionVisible = !isDescriptionVisible;
                        });
                      },
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      getTranslated(context, 'DESCRIPTION')!,
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.lightBlack2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: colors.primary),
                          child: Icon(
                            Icons.list_alt,
                            color: Theme.of(context).colorScheme.white,
                            size: 30,
                          ),
                        ),
                        onTap: () => _tabController
                            .animateTo((_tabController.index + 1) % 2)),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      getTranslated(context, 'PRODUCTS')!,
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.lightBlack2,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
              visible: isDescriptionVisible,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 8,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: colors.primary)),
                child: SingleChildScrollView(
                    child: Text(
                  (widget.storeDesc != "" || widget.storeDesc != null)
                      ? "${widget.storeDesc}"
                      : getTranslated(context, "NO_DESC")!,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.lightBlack2),
                )),
              ))
        ],
      ),
    );
    // return FutureBuilder(
    //     future: fetchSellerDetails(),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.done) {
    //         // If we got an error
    //         if (snapshot.hasError) {
    //           return Center(
    //             child: Text(
    //               '${snapshot.error} Occured',
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           );
    //
    //           // if we got our data
    //         } else if (snapshot.hasData) {
    //           // Extracting data from snapshot object
    //           var data = snapshot.data;
    //           print("data is $data");
    //
    //           return Center(
    //             child: Text(
    //               'Hello',
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           );
    //         }
    //       }
    //       return shimmer();
    //     });
  }

  Widget getHeading(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.fontColor,
          ),
    );
  }

  Widget getRatingBarIndicator(var ratingStar, var totalStars) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: RatingBarIndicator(
        rating: ratingStar,
        itemBuilder: (context, index) => const Icon(
          Icons.star_outlined,
          color: colors.yellow,
        ),
        itemCount: totalStars,
        itemSize: 20.0,
        direction: Axis.horizontal,
        unratedColor: Colors.transparent,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
