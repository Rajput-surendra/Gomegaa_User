// import 'dart:convert';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:eshop_multivendor/Helper/Color.dart';
// import 'package:eshop_multivendor/Helper/Session.dart';
// import 'package:eshop_multivendor/Model/CurrentOrderModel.dart';
// import 'package:eshop_multivendor/Screen/OrderDetail.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
//
// import '../Helper/String.dart';
//
// class CurrentOrder extends StatefulWidget {
//   const CurrentOrder({Key? key}) : super(key: key);
//
//   @override
//   State<CurrentOrder> createState() => _CurrentOrderState();
// }
//
// class _CurrentOrderState extends State<CurrentOrder> {
//
//
//   String? currentDate;
//   getCurrentDate(){
//     DateTime dateTime = DateTime.now();
//
//     var dateData = DateFormat('dd/MM/yyyy').format(dateTime);
//     currentDate = dateData.toString();
//     print("current date here ${dateData}");
//   }
//
//   @override
//   void initState(){
//     super.initState();
//     getCurrentDate();
//     Future.delayed(Duration(seconds: 2),(){
//       return getCurrentOrders();
//     });
//   }
//
//   OrderModel? currentOrderModel;
//   List<OrderModel> searchList = [];
//
//   getCurrentOrders()async{
//     var headers = {
//       'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NjYzNTI5MzYsImlhdCI6MTY2NjM1MjYzNiwiaXNzIjoiZXNob3AifQ.SNSGvY-hTvnuDu5QA2OzQahveOWsOHFtOIvCRaWnunE',
//       'Cookie': 'ci_session=c42ea4ffe678130bf451a39488708f184bb6c3d4'
//     };
//     var request = http.MultipartRequest('POST', Uri.parse('https://developmentalphawizz.com/Gomega/app/v1/api/get_current_order'));
//     request.fields.addAll({
//       'user_id': CUR_USERID.toString(),
//       'table_id': '2',
//       'order_date': '${currentDate}',
//       'seller_id':'801'
//     });
//
//     request.headers.addAll(headers);
//
//     http.StreamedResponse response = await request.send();
//
//     if (response.statusCode == 200) {
//       var finalResponse = await response.stream.bytesToString();
//       final jsonResponse = OrderModel.fromJson(json.decode(finalResponse));
//       print("checking result here ${jsonResponse}");
//       setState(() {
//         currentOrderModel = jsonResponse;
//       });
//     }
//     else {
//       print(response.reasonPhrase);
//     }
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: getAppBar(getTranslated(context, "CURRENT_ORDER")!, context),
//       body:Container(
//         child: ListView.builder(
//           shrinkWrap: true,
//           padding: EdgeInsetsDirectional.only(top: 5.0),
//           itemCount: currentOrderModel.
//           physics: AlwaysScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             var j = currentOrderModel!.data![index].orderItems;
//             return Card(
//               elevation: 0,
//               //margin: EdgeInsets.all(5.0),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(7),
//                 child: Column(children: <Widget>[
//                   Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
//                     Hero(
//                         tag: "$index${currentOrderModel!.data![index].id}",
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(7.0),
//                               topLeft: Radius.circular(7.0)),
//                           child: FadeInImage(
//                             fadeInDuration: Duration(milliseconds: 150),
//                             image: CachedNetworkImageProvider(j![index].image.toString()),
//                             height: 100.0,
//                             width: 100.0,
//                             fit: BoxFit.cover,
//                             imageErrorBuilder: (context, error, stackTrace) =>
//                                 erroWidget(90),
//                             // errorWidget:(context, url,e) => placeHolder(90) ,
//                             placeholder: placeHolder(90),
//                           ),
//                         )),
//                     Expanded(
//                         flex: 9,
//                         child: Padding(
//                             padding: EdgeInsetsDirectional.only(
//                                 start: 10.0, end: 5.0, bottom: 8.0, top: 8.0),
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   // Text(
//                                   //   "$proStatus on $sDate",
//                                   //   style: Theme.of(context)
//                                   //       .textTheme
//                                   //       .subtitle2!
//                                   //       .copyWith(
//                                   //       color: Theme.of(context)
//                                   //           .colorScheme
//                                   //           .lightBlack),
//                                   // ),
//                                   Padding(
//                                       padding:
//                                       const EdgeInsetsDirectional.only(top: 10.0),
//                                       child: Text(
//                                         j[index].name.toString(),
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .subtitle2!
//                                             .copyWith(
//                                             color: Theme.of(context)
//                                                 .colorScheme
//                                                 .lightBlack2,
//                                             fontWeight: FontWeight.normal),
//                                         maxLines: 2,
//                                         overflow: TextOverflow.ellipsis,
//                                       )),
//                                 ]))),
//                     const Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 3.0),
//                       child: const Icon(
//                         Icons.arrow_forward_ios_rounded,
//                         color: colors.primary,
//                         size: 15,
//                       ),
//                     )
//                   ]),
//                 ]),
//                 onTap: () async {
//                   FocusScope.of(context).unfocus();
//                   // final result = await Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //       builder: (context) => OrderDetail(model: searchList[index])),
//                   // );
//                   // if (mounted && result == "update") {
//                   //   setState(() {
//                   //     _isLoading = true;
//                   //     isLoadingmore =true;
//                   //     offset = 0;
//                   //     total = 0;
//                   //     searchList.clear();
//                   //   });
//                   //   await getOrder();
//                   // }
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
// }

import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop_multivendor/Model/Order_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Helper/AppBtn.dart';
import '../Helper/Color.dart';
import '../Helper/Constant.dart';
import '../Helper/Session.dart';
import '../Helper/String.dart';
import 'Login.dart';
import 'OrderDetail.dart';

class CurrentOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateCurrentOrder();
  }
}

List<OrderModel> searchList = [];
int offset = 0;
int total = 0;

int pos = 0;

class StateCurrentOrder extends State<CurrentOrder> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String? searchText;
  Animation? buttonSqueezeanimation;
  AnimationController? buttonController;
  bool _isNetworkAvail = true;
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = true;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();
  ScrollController scrollController = ScrollController();
  String _searchText = "", _lastsearch = "";
  bool isLoadingmore = true, isGettingdata = false, isNodata = false;
  String? activeStatus;

  List<String> statusList = [
    ALL,
    PLACED,
    PROCESSED,
    SHIPED,
    DELIVERD,
    CANCLED,
    RETURNED,
    awaitingPayment
  ];

  @override
  void initState() {
    scrollController.addListener(_scrollListener);

    searchList.clear();
    offset = 0;
    total = 0;
    getOrder();
    buttonController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    buttonSqueezeanimation = Tween(
      begin: deviceWidth! * 0.7,
      end: 50.0,
    ).animate(CurvedAnimation(
      parent: buttonController!,
      curve: const Interval(
        0.0,
        0.150,
      ),
    ));
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        if (mounted) {
          setState(() {
            _searchText = "";
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _searchText = _controller.text;
          });
        }
      }

      if (_lastsearch != _searchText &&
          ((_searchText.length > 2) || (_searchText == ""))) {
        _lastsearch = _searchText;
        isLoadingmore = true;
        offset = 0;
        getOrder();
      }
    });

    super.initState();
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (this.mounted) {
        setState(() {
          getOrder();
        });
      }
    }
  }

  @override
  void dispose() {
    buttonController!.dispose();
    super.dispose();
  }

  // Future<void> searchOperation(String searchText) async {
  //   orderList.addAll(searchList);
  //   searchList.clear();

  //   for (int i = 0; i < orderList.length; i++) {
  //     for (int j = 0; j < orderList[i].itemList.length; j++) {
  //       OrderModel map = orderList[i];

  //       if (map.id.toLowerCase().contains(searchText) ||
  //           map.itemList[j].name.toLowerCase().contains(searchText)) {
  //         searchList.add(map);
  //       }
  //     }
  //   }

  //   if (mounted) setState(() {});
  // }

  Future<Null> _playAnimation() async {
    try {
      await buttonController!.forward();
    } on TickerCanceled {}
  }

  Widget noInternet(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          noIntImage(),
          noIntText(context),
          noIntDec(context),
          AppBtn(
            title: getTranslated(context, 'TRY_AGAIN_INT_LBL'),
            btnAnim: buttonSqueezeanimation,
            btnCntrl: buttonController,
            onBtnSelected: () async {
              _playAnimation();

              Future.delayed(Duration(seconds: 2)).then((_) async {
                _isNetworkAvail = await isNetworkAvailable();
                if (_isNetworkAvail) {
                  getOrder();
                } else {
                  await buttonController!.reverse();
                  if (mounted) setState(() {});
                }
              });
            },
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.lightWhite,
      appBar: getAppBar(getTranslated(context, "CURRENT_ORDER")!, context),
      body: _isNetworkAvail
          ? _isLoading
          ? shimmer(context)
          : Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding:
                EdgeInsetsDirectional.only(start: 5.0, end: 5.0),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.fontColor,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    isDense: true,
                    fillColor: Theme.of(context).colorScheme.white,
                    prefixIconConstraints: const BoxConstraints(
                        minWidth: 40, maxHeight: 20),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    prefixIcon: SvgPicture.asset(
                      'assets/images/search.svg',
                      color: colors.primary,
                    ),
                    hintText: getTranslated(
                        context, 'FIND_ORDER_ITEMS_LBL'),
                    hintStyle: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .fontColor
                            .withOpacity(0.3),
                        fontWeight: FontWeight.normal),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                )),
            Expanded(
              child: searchList.length == 0
                  ? Center(
                  child: Text(getTranslated(context, 'noItem')!))
                  : RefreshIndicator(
                  color: colors.primary,
                  key: _refreshIndicatorKey,
                  onRefresh: _refresh,
                  child: ListView.builder(
                    shrinkWrap: true,
                    controller: scrollController,
                    padding: EdgeInsetsDirectional.only(top: 5.0),
                    itemCount: searchList.length,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      OrderItem? orderItem;
                      try {
                        if (searchList[index] != null &&
                            searchList[index].itemList!.length >
                                0) {
                          orderItem =
                          searchList[index].itemList![0];
                        }
                        if (isLoadingmore &&
                            index == (searchList.length - 1) &&
                            scrollController.position.pixels <=
                                0) {
                          getOrder();
                        }
                      } on Exception catch (_) {}

                      return orderItem == null
                          ? Container()
                          : productItem(index, orderItem);
                    },
                  )),
            ),
            isGettingdata
                ? Padding(
              padding:
              EdgeInsetsDirectional.only(top: 5, bottom: 5),
              child: CircularProgressIndicator(),
            )
                : Container(),
          ],
        ),
      )
      //))
          : noInternet(context),
    );
  }

  Future<Null> _refresh() {
    if (mounted) {
      setState(() {
        offset = 0;
        total = 0;
        isLoadingmore = true;
        _isLoading = true;
      });
    }
    return getOrder();
  }

  Future<Null> getOrder() async {
    String? tableid, sellerid;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    tableid = prefs.getString('table_id');
    sellerid = prefs.getString('seller_id');
    print("checking seller id and ${SELLER_ID} and ${TABLE_ID}");
    _isNetworkAvail = await isNetworkAvailable();
    if (_isNetworkAvail) {
      try {
        if (isLoadingmore) {
          if (mounted) {
            setState(() {
              isLoadingmore = false;
              isGettingdata = true;
              if (offset == 0) {
                searchList = [];
              }
            });
          }

          if (CUR_USERID != null) {
            var parameter = {
              USER_ID: CUR_USERID,
              'seller_id':'',
              'table_id':'',
              'order_date':''
            };
            if (activeStatus != null) {
              if (activeStatus == awaitingPayment) activeStatus = "awaiting";
              parameter[ACTIVE_STATUS] = activeStatus;
            }
            Response response =
            await post(Uri.parse(baseUrl + 'get_current_order'), body: parameter, headers: headers)
                .timeout(Duration(seconds: timeOut));

            var getdata = json.decode(response.body);
            bool error = getdata["error"];
            print(getOrderApi.toString());
            print(parameter.toString());
            print(getdata.toString());
            isGettingdata = false;
            if (offset == 0) isNodata = error;

            if (!error) {
              // total = int.parse(getdata["total"]);

              //  if ((offset) < total) {
              var data = getdata["data"];
              if (data.length != 0) {
                List<OrderModel> items = [];
                List<OrderModel> allitems = [];

                items.addAll((data as List)
                    .map((data) => OrderModel.fromJson(data))
                    .toList());

                allitems.addAll(items);

                for (OrderModel item in items) {
                  searchList.where((i) => i.id == item.id).map((obj) {
                    allitems.remove(item);
                    return obj;
                  }).toList();
                }
                searchList.addAll(allitems);

                isLoadingmore = true;
                offset = offset + perPage;
              } else {
                isLoadingmore = false;
              }

              // orderList = (data as List)
              //     .map((data) => new OrderModel.fromJson(data))
              //     .toList();
              // searchList.addAll(orderList);
              // offset = offset + perPage;
              // }
            } else {
              isLoadingmore = false;
            }

            if (mounted) {
              setState(() {
                _isLoading = false;
                //isLoadingmore = false;
              });
            }
          } else {
            if (mounted) if (mounted) {
              setState(() {
                isLoadingmore = false;
                //msg = goToLogin;
              });
            }

            Future.delayed(Duration(seconds: 1)).then((_) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            });
          }
        }
      } on TimeoutException catch (_) {
        if (mounted) {
          setState(() {
            _isLoading = false;
            isLoadingmore = false;
          });
        }
        setSnackbar(getTranslated(context, 'somethingMSg')!);
      }
    } else {
      if (mounted) {
        setState(() {
          _isNetworkAvail = false;
          _isLoading = false;
        });
      }
    }

    return null;
  }

  setSnackbar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.black),
      ),
      backgroundColor: Theme.of(context).colorScheme.white,
      elevation: 1.0,
    ));
  }

  productItem(int index, OrderItem orderItem) {
    if (orderItem != null) {
      String? sDate = orderItem.listDate!.last;
      String? proStatus = orderItem.listStatus!.last;
      if (proStatus == 'received') {
        proStatus = 'order placed';
      }
      String name = orderItem.name ?? "";
      name = name +
          " ${searchList[index].itemList!.length > 1 ? " and more items" : ""} ";

      return Card(
        elevation: 0,
        //margin: EdgeInsets.all(5.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(7),
          child: Column(children: <Widget>[
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Hero(
                  tag: "$index${orderItem.id}",
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7.0),
                        topLeft: Radius.circular(7.0)),
                    child: FadeInImage(
                      fadeInDuration: Duration(milliseconds: 150),
                      image: CachedNetworkImageProvider(orderItem.image!),
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                      imageErrorBuilder: (context, error, stackTrace) =>
                          erroWidget(90),
                      // errorWidget:(context, url,e) => placeHolder(90) ,
                      placeholder: placeHolder(90),
                    ),
                  )),
              Expanded(
                  flex: 9,
                  child: Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 10.0, end: 5.0, bottom: 8.0, top: 8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "$proStatus on $sDate",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .lightBlack),
                            ),
                            Padding(
                                padding:
                                const EdgeInsetsDirectional.only(top: 10.0),
                                child: Text(
                                  name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .lightBlack2,
                                      fontWeight: FontWeight.normal),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ]))),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: colors.primary,
                  size: 15,
                ),
              )
            ]),
          ]),
          onTap: () async {
            FocusScope.of(context).unfocus();
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OrderDetail(model: searchList[index])),
            );
            if(result == true){
              return getOrder();
            }
            if (mounted && result == "update") {
              setState(() {
                _isLoading = true;
                isLoadingmore =true;
                offset = 0;
                total = 0;
                searchList.clear();
              });
              await getOrder();
            }
          },
        ),
      );
    } else {
      return null;
    }
  }

  // getAppbar() {
  //   return AppBar(
  //     titleSpacing: 0,
  //     leading: Builder(builder: (BuildContext context) {
  //       return Container(
  //         margin: EdgeInsets.all(10),
  //         decoration: shadow(),
  //         child: Card(
  //           elevation: 0,
  //           child: InkWell(
  //             borderRadius: BorderRadius.circular(4),
  //             onTap: () => Navigator.of(context).pop(),
  //             child: Center(
  //               child: Icon(
  //                 Icons.keyboard_arrow_left,
  //                 color: colors.primary,
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     }),
  //     title: Text(
  //       getTranslated(context, 'MY_ORDERS_LBL')!,
  //       style: TextStyle(
  //         color: Theme.of(context).colorScheme.fontColor,
  //       ),
  //     ),
  //     actions: [
  //       Container(
  //         margin: EdgeInsets.all(10),
  //         decoration: shadow(),
  //         child: Card(
  //           elevation: 0,
  //           child: InkWell(
  //             borderRadius: BorderRadius.circular(4),
  //             onTap: filterDialog,
  //             child: Padding(
  //               padding: const EdgeInsets.all(4.0),
  //               child: Icon(
  //                 Icons.tune,
  //                 color: colors.primary,
  //                 size: 22,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  void filterDialog() {
    dialogAnimate(
        context,
        ButtonBarTheme(
          data: ButtonBarThemeData(
            alignment: MainAxisAlignment.center,
          ),
          child: AlertDialog(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              contentPadding: const EdgeInsets.all(0.0),
              content: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                      padding:
                      EdgeInsetsDirectional.only(top: 19.0, bottom: 16.0),
                      child: Text(
                        getTranslated(context, 'FILTER')!,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.fontColor),
                      )),
                  Divider(color: Theme.of(context).colorScheme.lightBlack),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: getStatusList()),
                    ),
                  ),
                ]),
              )),
        ));
  }

  List<Widget> getStatusList() {
    return statusList
        .asMap()
        .map(
          (index, element) => MapEntry(
        index,
        Column(
          children: [
            Container(
              width: double.maxFinite,
              child: TextButton(
                  child: Text(capitalize(statusList[index]),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .lightBlack)),
                  onPressed: () {
                    setState(() {
                      activeStatus = index == 0 ? null : statusList[index];
                      isLoadingmore = true;
                      offset = 0;
                    });

                    getOrder();

                    Navigator.pop(context, 'option $index');
                  }),
            ),
            Divider(
              color: Theme.of(context).colorScheme.lightBlack,
              height: 1,
            ),
          ],
        ),
      ),
    )
        .values
        .toList();
  }
}
