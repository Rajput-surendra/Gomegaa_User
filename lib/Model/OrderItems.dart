class OrderItems {
  OrderItems({
      this.id, 
      this.userId, 
      this.orderId, 
      this.deliveryBoyId, 
      this.sellerId, 
      this.isCredited, 
      this.otp, 
      this.productName, 
      this.variantName, 
      this.productVariantId, 
      this.quantity, 
      this.price, 
      this.discountedPrice, 
      this.taxPercent, 
      this.taxAmount, 
      this.discount, 
      this.subTotal, 
      this.deliverBy, 
      this.status, 
      this.activeStatus, 
      this.dateAdded, 
      this.applicationOrder, 
      this.containerPrice, 
      this.estimateTime, 
      this.tableNo, 
      this.productId, 
      this.isCancelable, 
      this.storeName, 
      this.sellerLongitude, 
      this.sellerMobile, 
      this.sellerAddress, 
      this.sellerLatitude, 
      this.deliveryBoyName, 
      this.deliveryBoyNumber, 
      this.storeDescription, 
      this.sellerRating, 
      this.sellerProfile, 
      this.courierAgency, 
      this.trackingId, 
      this.url, 
      this.sellerName, 
      this.isReturnable, 
      this.image, 
      this.name, 
      this.type, 
      this.orderCounter, 
      this.orderCancelCounter, 
      this.orderReturnCounter, 
      this.varaintIds, 
      this.variantValues, 
      this.attrName, 
      this.imageSm, 
      this.imageMd, 
      this.isAlreadyReturned, 
      this.isAlreadyCancelled, 
      this.returnRequestSubmitted,});

  OrderItems.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    orderId = json['order_id'];
    deliveryBoyId = json['delivery_boy_id'];
    sellerId = json['seller_id'];
    isCredited = json['is_credited'];
    otp = json['otp'];
    productName = json['product_name'];
    variantName = json['variant_name'];
    productVariantId = json['product_variant_id'];
    quantity = json['quantity'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    taxPercent = json['tax_percent'];
    taxAmount = json['tax_amount'];
    discount = json['discount'];
    subTotal = json['sub_total'];
    deliverBy = json['deliver_by'];
    status = json['status'] != null ? json['status'].cast<String>() : [];
    activeStatus = json['active_status'];
    dateAdded = json['date_added'];
    applicationOrder = json['application_order'];
    containerPrice = json['container_price'];
    estimateTime = json['estimate_time'];
    tableNo = json['table_no'];
    productId = json['product_id'];
    isCancelable = json['is_cancelable'];
    storeName = json['store_name'];
    sellerLongitude = json['seller_longitude'];
    sellerMobile = json['seller_mobile'];
    sellerAddress = json['seller_address'];
    sellerLatitude = json['seller_latitude'];
    deliveryBoyName = json['delivery_boy_name'];
    deliveryBoyNumber = json['delivery_boy_number'];
    storeDescription = json['store_description'];
    sellerRating = json['seller_rating'];
    sellerProfile = json['seller_profile'];
    courierAgency = json['courier_agency'];
    trackingId = json['tracking_id'];
    url = json['url'];
    sellerName = json['seller_name'];
    isReturnable = json['is_returnable'];
    image = json['image'];
    name = json['name'];
    type = json['type'];
    orderCounter = json['order_counter'];
    orderCancelCounter = json['order_cancel_counter'];
    orderReturnCounter = json['order_return_counter'];
    varaintIds = json['varaint_ids'];
    variantValues = json['variant_values'];
    attrName = json['attr_name'];
    imageSm = json['image_sm'];
    imageMd = json['image_md'];
    isAlreadyReturned = json['is_already_returned'];
    isAlreadyCancelled = json['is_already_cancelled'];
    returnRequestSubmitted = json['return_request_submitted'];
  }
  String? id;
  String? userId;
  String? orderId;
  dynamic? deliveryBoyId;
  String? sellerId;
  String? isCredited;
  String? otp;
  String? productName;
  String? variantName;
  String? productVariantId;
  String? quantity;
  String? price;
  dynamic? discountedPrice;
  String? taxPercent;
  String? taxAmount;
  String? discount;
  String? subTotal;
  String? deliverBy;
  List<List<String>>? status;
  String? activeStatus;
  String? dateAdded;
  String? applicationOrder;
  String? containerPrice;
  String? estimateTime;
  String? tableNo;
  String? productId;
  String? isCancelable;
  String? storeName;
  String? sellerLongitude;
  String? sellerMobile;
  String? sellerAddress;
  String? sellerLatitude;
  String? deliveryBoyName;
  String? deliveryBoyNumber;
  String? storeDescription;
  String? sellerRating;
  String? sellerProfile;
  String? courierAgency;
  String? trackingId;
  String? url;
  String? sellerName;
  String? isReturnable;
  String? image;
  String? name;
  String? type;
  String? orderCounter;
  String? orderCancelCounter;
  String? orderReturnCounter;
  String? varaintIds;
  String? variantValues;
  String? attrName;
  String? imageSm;
  String? imageMd;
  String? isAlreadyReturned;
  String? isAlreadyCancelled;
  dynamic? returnRequestSubmitted;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['order_id'] = orderId;
    map['delivery_boy_id'] = deliveryBoyId;
    map['seller_id'] = sellerId;
    map['is_credited'] = isCredited;
    map['otp'] = otp;
    map['product_name'] = productName;
    map['variant_name'] = variantName;
    map['product_variant_id'] = productVariantId;
    map['quantity'] = quantity;
    map['price'] = price;
    map['discounted_price'] = discountedPrice;
    map['tax_percent'] = taxPercent;
    map['tax_amount'] = taxAmount;
    map['discount'] = discount;
    map['sub_total'] = subTotal;
    map['deliver_by'] = deliverBy;
    map['status'] = status;
    map['active_status'] = activeStatus;
    map['date_added'] = dateAdded;
    map['application_order'] = applicationOrder;
    map['container_price'] = containerPrice;
    map['estimate_time'] = estimateTime;
    map['table_no'] = tableNo;
    map['product_id'] = productId;
    map['is_cancelable'] = isCancelable;
    map['store_name'] = storeName;
    map['seller_longitude'] = sellerLongitude;
    map['seller_mobile'] = sellerMobile;
    map['seller_address'] = sellerAddress;
    map['seller_latitude'] = sellerLatitude;
    map['delivery_boy_name'] = deliveryBoyName;
    map['delivery_boy_number'] = deliveryBoyNumber;
    map['store_description'] = storeDescription;
    map['seller_rating'] = sellerRating;
    map['seller_profile'] = sellerProfile;
    map['courier_agency'] = courierAgency;
    map['tracking_id'] = trackingId;
    map['url'] = url;
    map['seller_name'] = sellerName;
    map['is_returnable'] = isReturnable;
    map['image'] = image;
    map['name'] = name;
    map['type'] = type;
    map['order_counter'] = orderCounter;
    map['order_cancel_counter'] = orderCancelCounter;
    map['order_return_counter'] = orderReturnCounter;
    map['varaint_ids'] = varaintIds;
    map['variant_values'] = variantValues;
    map['attr_name'] = attrName;
    map['image_sm'] = imageSm;
    map['image_md'] = imageMd;
    map['is_already_returned'] = isAlreadyReturned;
    map['is_already_cancelled'] = isAlreadyCancelled;
    map['return_request_submitted'] = returnRequestSubmitted;
    return map;
  }

}