import 'dart:async';
import 'dart:convert';
import 'package:eshop_multivendor/Model/SellerInfoModel.dart';
import 'package:http/http.dart'as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop_multivendor/Helper/ApiBaseHelper.dart';
import 'package:eshop_multivendor/Helper/Color.dart';
import 'package:eshop_multivendor/Helper/Session.dart';
import 'package:eshop_multivendor/Helper/String.dart';
import 'package:eshop_multivendor/Model/Section_Model.dart';
import 'package:eshop_multivendor/Model/response_recomndet_products.dart';
import 'package:eshop_multivendor/Provider/FavoriteProvider.dart';
import 'package:eshop_multivendor/Screen/Login.dart';
import 'package:eshop_multivendor/Screen/Product_Detail.dart';
import 'package:eshop_multivendor/Screen/Seller_Details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SubCategory extends StatefulWidget {
  final String title;
  final sellerId;
  final catId;
  final sellerData,
  sellerName,
  sellerImage,
  sellerRating,
  storeDesc,
  storeQR,
  sellerStoreName , subCatId,estimatedTime,foodPerson,storerating;
  const SubCategory(
      {Key? key,
        this.sellerImage,this.sellerStoreName,
        this.foodPerson,this.storerating,this.subCatId,
        this.sellerData,this.storeQR,this.storeDesc,
      required this.title,
      this.sellerId,
      this.estimatedTime,
        this.sellerRating,
        this.sellerName,
      this.catId})
      : super(key: key);

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  ApiBaseHelper apiBaseHelper = ApiBaseHelper();
  dynamic subCatData = [];
  var recommendedProductsData = [];
  bool mount = false;
  late ResponseRecomndetProducts responseProducts;
  var newData;
  StreamController<dynamic> productStream = StreamController();
  var imageBase = "";
  List<TextEditingController> _controller = [];
  bool _isLoading = true, _isProgress = false;
  bool _isNetworkAvail = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Future.delayed(Duration(seconds: 1),(){
        return showCustomDialog();
      });
      Future.delayed(Duration(seconds: 2),(){
        return getSellerInfoById();
      });
    getSubCategory(widget.sellerId, widget.catId);
    getRecommended(widget.sellerId);
  }

  @override
  void dispose() {
    super.dispose();
    productStream.close();
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
          InkWell(
            onTap: ()async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('table_id', "");
              prefs.setBool('isTakeAway', true);
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Row(
              children: [
                Icon(Icons.delivery_dining),
                SizedBox(width: 8,),
                Text("Take away",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
              ],
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
            child: Row(
              children: [
                Icon(Icons.restaurant),
                SizedBox(width: 8,),
                Text("In Restaurant",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ],
      ),);
    });
  }

  SellerInfoModel? sellerInfoModel;
  getSellerInfoById()async{
    var headers = {
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NjYzNTI5MzYsImlhdCI6MTY2NjM1MjYzNiwiaXNzIjoiZXNob3AifQ.SNSGvY-hTvnuDu5QA2OzQahveOWsOHFtOIvCRaWnunE',
      'Cookie': 'ci_session=4d1756a33af54b45cb86da348337f9b49e4b32de'
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/Gomega/app/v1/api/get_seller_information'));
    request.fields.addAll({
      'seller_id': '${widget.sellerId}'
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var finalResult = await response.stream.bytesToString();

      final jsonResponse = SellerInfoModel.fromJson(json.decode(finalResult));
      print("final result here ${jsonResponse.message} and ${jsonResponse.data}");
      setState(() {
        sellerInfoModel = jsonResponse;
      });
    }
    else {
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: sellerInfoModel == null ? getAppBar("", context) : getAppBar("${sellerInfoModel!.data!.storeName}", context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StreamBuilder<dynamic>(
                stream: productStream.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Container(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator());
                  }
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 90),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 60,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 40,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Recommended Products',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 150,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: snapshot.data["data"].length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1.0,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 4.5,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            dynamic model = snapshot.data["data"][index];
                            return InkWell(
                              onTap: () => onTapGoDetails(
                                  index: index, response: snapshot.data!),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 50),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: new Card(
                                      child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        ),
                                        child: FadeInImage(
                                          image: CachedNetworkImageProvider(
                                            snapshot.data["data"][index]
                                                    ["image"]
                                                .toString(),
                                          ),
                                          fadeInDuration:
                                              Duration(milliseconds: 120),
                                          fit: BoxFit.cover,
                                          height: 120,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          // width: 120,
                                          imageErrorBuilder:
                                              (context, error, stackTrace) =>
                                                  erroWidget(120),
                                          placeholder: placeHolder(120),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding:
                                            EdgeInsets.only(top: 5, left: 5),
                                        child: Text(
                                          snapshot.data["data"][index]["name"]
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .lightBlack),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                        Row(
                                        children: [
                                          SizedBox(width: 5,),
                                          Text(MONEY_TYPE),
                                          Text("${snapshot.data["data"][index]["min_max_price"]["max_special_price"]}"),
                                          Text(" ${snapshot.data["data"][index]["min_max_price"]["max_price"]}" , style: TextStyle(
                                            decoration: TextDecoration.lineThrough , fontSize: 10
                                          ),),
                                        ],
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );

                  // new
                }),
            // InkWell(
            //   onTap: () {
            //     Product model = Product.fromJson(newData["data"][0]);
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => ProductDetail(
            //               index: 0,
            //               model: model,
            //               secPos: 0,
            //               list: false,
            //             )));
            //   },
            //   child: Container(
            //     height: 60.0,
            //     width: 60.0,
            //     color: Colors.orange,
            //     child: Text("dsddd"),
            //   ),
            // ),
            mount
                ? subCatData.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: subCatData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              onTap: () {
                               // print(" values are here ${sellerInfoModel!.data!.estimatedTime}");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SellerProfile(
                                          search: false,
                                          sellerStoreName: sellerInfoModel!.data!.storeName,
                                              storeDesc: sellerInfoModel!.data!.storeDescription,
                                              sellerName: sellerInfoModel!.data!.username,
                                              sellerRating: sellerInfoModel!.data!.rating,
                                              storerating: sellerInfoModel!.data!.noOfRatings,
                                              storeQR: sellerInfoModel!.data!.qrCode,
                                              foodPerson: sellerInfoModel!.data!.foodPerson,
                                              estimatedTime: sellerInfoModel!.data!.estimatedTime,
                                              sellerID: sellerInfoModel!.data!.userId,
                                              subCatId: subCatData[index]["id"],
                                              sellerData: sellerInfoModel!.data,
                                            )));
                              },
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "$imageBase${subCatData[index]["image"] ?? ""}"),
                              ),
                              title: Text(subCatData[index]["name"] ?? ""),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          );
                        },
                      )
                    : Center(child: Text("No Sub Category"))
                : Text(""),
          ],
        ),
      ),
    );
  }

  getSubCategory(sellerId, catId) async {
    var parm = {};
    if (catId != null) {
      parm = {"seller_id": "$sellerId", "cat_id": "$catId"};
    } else {
      parm = {"seller_id": "$sellerId"};
    }
    apiBaseHelper.postAPICall(getSubCatBySellerId, parm).then((value) {
      setState(() {
        subCatData = value["recommend_products"];
        imageBase = value["image_path"];
        mount = true;
      });
      print("sds ${subCatData}");
    });
  }

  getRecommended(sellerId) async {
    // var parm = {"seller_id": "$sellerId"};
    // try {
    var parm = {"seller_id": sellerId};
    print(parm);
    var data = await apiBaseHelper.postAPINew(recommendedProductapi, parm);
    newData = data;
    setState(() {});
    // responseProducts = ResponseRecomndetProducts.fromJson(newData);
    if (newData["data"].isNotEmpty) {
      productStream.sink.add(newData);
    } else {
      productStream.sink.addError("");
    }
    // } catch (e) {
    //   productStream.sink.addError('ddd');
    // }
  }

  onTapGoDetails({response, index}) {
    Product model = Product.fromJson(response["data"][0]);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductDetail(
              index: index,
              model: model,
              secPos: 0,
              list: false,
            )));
  }

}
