// import 'dart:convert';
// /// error : false
// /// message : "Data retrieved successfully"
// /// total : "1"
// /// data : [{"id":"1176","user_id":"797","address_id":"277","mobile":"1234567890","total":"160","delivery_charge":"50","is_delivery_charge_returnable":"1","wallet_balance":"0","promo_code":" ","promo_discount":"0","discount":"0","total_payable":"210","final_total":"210","payment_method":"COD","latitude":"22.7484403","longitude":"75.8977364","address":"Medanta Hospital,Vijay Nagar,Indore, Ganesh, Pune, Madhya Pradesh, India, 411015","delivery_time":"","delivery_date":"","date_added":"2022-10-28 14:58:57","otp":"0","notes":"","application_order":"application_order","city":"Pune","table_no":"2","sellers_id":"801","order_date":"28/10/2022","username":"Dummy User","country_code":"91","name":"HALF MUTTON BIRYANI","attachments":[],"courier_agency":"","tracking_id":"","url":"","is_returnable":"0","is_cancelable":"0","is_already_returned":"0","is_already_cancelled":"0","return_request_submitted":null,"total_tax_percent":"0","total_tax_amount":"0","invoice_html":"<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Invoice Management |Gomegaa</title>\r\n    <!-- Tell the browser to be responsive to screen width -->\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <link rel=\"icon\" href=\"https://developmentalphawizz.com/Gomega/uploads/media/2022/web_logo.png\" type=\"image/gif\" sizes=\"16x16\">\r\n    <!-- Bootstrap Switch -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/bootstrap-switch.min.css\">\r\n    <!-- Font Awesome -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/all.min.css\">\r\n    <!-- Ionicons -->\r\n    <link rel=\"stylesheet\" href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\r\n    <!-- Tempusdominus Bbootstrap 4 -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/tempusdominus-bootstrap-4.min.css\">\r\n    <!-- iCheck -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/icheck-bootstrap.min.css\">\r\n    <!-- Dropzone -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/dropzone.css\">\r\n    <!-- JQVMap -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/jqvmap.min.css\">\r\n    <!-- Ekko Lightbox -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/ekko-lightbox/ekko-lightbox.css\">\r\n    <!-- Theme style -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/css/adminlte.min.css\">\r\n    <!-- overlayScrollbars -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/OverlayScrollbars.min.css\">\r\n    <!-- Daterange picker -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/daterangepicker.css\">\r\n    <!-- summernote -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/summernote/summernote-bs4.css\">\r\n    <!-- Toastr -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/iziToast.min.css\">\r\n    <!-- Select2 -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/select2.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/select2-bootstrap4.min.css\">\r\n    <!-- Sweet Alert -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/sweetalert2.min.css\">\r\n    <!-- Chartist -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/chartist.css\">\r\n    <!-- JS tree -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/style.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/star-rating.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/theme.css\">\r\n    <!-- Google Font: Source Sans Pro -->\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300&display=swap\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700\" rel=\"stylesheet\">\r\n\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.16.0/bootstrap-table.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css\" />\r\n    <!-- Custom CSS -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/custom/custom.css\">\r\n\r\n    <!-- jQuery -->\r\n    <script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.min.js\"></script>\r\n    <!-- Star rating js -->\r\n    <script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/star-rating.js\"></script>\r\n    <script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/theme.min.js\"></script>\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/tagify.min.css\">\r\n    <script type=\"text/javascript\">\r\n        base_url = \"https://developmentalphawizz.com/Gomega/\";\r\n        csrfName = \"ci_csrf_token\";\r\n        csrfHash = \"\";\r\n\r\n        form_name = '#view/api-order-invoice_form';\r\n    </script>\r\n</head>\r\n<body class=\"hold-transition sidebar-mini layout-fixed \">\r\n    <div class=\" wrapper \">\r\n        <section class=\"content\">\r\n    <div class=\"container-fluid\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                <div class=\"card card-info \" id=\"section-to-print\">\r\n                    <div class=\"row m-3\">\r\n                        <div class=\"col-md-12 d-flex justify-content-between\">\r\n                            <h2 class=\"text-left\">\r\n                                <img src=\"https://developmentalphawizz.com/Gomega/uploads/media/2022/web_logo.png\" class=\"d-block \" style=\"max-width:250px;max-height:100px;\">\r\n                            </h2>\r\n                            <h2 class=\"text-right\">\r\n                                Mo. +91 8484559845                            </h2>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                    <!-- info row -->\r\n                    <div class=\"row m-3 d-flex justify-content-between\">\r\n                        <div class=\"col-sm-4 invoice-col\">Sold By <address>\r\n                                <strong>Gomegaa</strong><br>\r\n                                Email: divya@gmail.com<br>\r\n                                Customer Care : +91 8484559845<br>\r\n                                                                    <b>Store Name</b> : dev online<br>\r\n                                                                <br>\r\n                                Address : Indore, Madhya Pradesh, India                            </address>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                        <div class=\"col-sm-4 invoice-col\">Shipping Address <address>\r\n                                <strong>Dummy User</strong><br>\r\n                                Medanta Hospital,Vijay Nagar,Indore, Ganesh, Pune, Madhya Pradesh, India, 411015<br>\r\n                                <strong>1234567890</strong><br>\r\n                                <strong>dummy@gmail.com</strong><br>\r\n                            </address>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                                                    <div class=\"col-sm-2 invoice-col\">\r\n                                <br> <b>Retail Invoice</b>\r\n                                <br> <b>No : </b>#1176                                <br> <b>Date: </b>2022-10-28 14:58:57                                <br>\r\n                                                                    <b>GST</b> : GSTN100<br>\r\n                                                                                                    <b>PAN NO.</b> : 7O41852KJO<br>\r\n                                                            </div>\r\n                                            </div>\r\n                    <!-- /.row -->\r\n                    <!-- Table row -->\r\n                    <div class=\"row m-3\">\r\n                        <div class=\"col-xs-12 table-responsive\">\r\n                            <table class=\"table borderless text-center text-sm\">\r\n                                <thead class=\"\">\r\n                                    <tr>\r\n                                        <th>Sr No.</th>\r\n                                        <th>Product Code</th>\r\n                                        <th>Name</th>\r\n                                        <th>Price</th>\r\n                                        <th>Tax (%)</th>\r\n                                        <th>Qty</th>\r\n                                        <th class=\"d-none\">Tax Amount (₹)</th>\r\n                                        <th>SubTotal (₹)</th>\r\n                                    </tr>\r\n                                </thead>\r\n                                <tbody>\r\n                                                                            <tr>\r\n                                            <td>\r\n                                                1                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                17<br>\r\n                                            </td>\r\n                                            <td class=\"w-25\">\r\n                                                HALF MUTTON BIRYANI                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                ₹ 160.00                                                <br>\r\n                                            </td>\r\n\r\n                                            <td>\r\n                                                0                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                1                                                <br>\r\n                                            </td>\r\n                                            <td class=\"d-none\">\r\n                                                0                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                ₹ 160                                                <br>\r\n                                            </td>\r\n                                        </tr>\r\n                                                                    </tbody>\r\n                                <tbody>\r\n                                    <tr>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th>Total</th>\r\n                                        <th>\r\n                                            1<br>\r\n                                        </th>\r\n                                        <th>\r\n                                            ₹ 160.00                                            <br>\r\n                                        </th>\r\n                                    </tr>\r\n                                </tbody>\r\n                            </table>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                    <!-- /.row -->\r\n                    <div class=\"row m-2 text-right\">\r\n                        <!-- accepted payments column -->\r\n                        <div class=\"col-md-9 offset-md-2\">\r\n                            <!--<p class=\"lead\">Payment Date: </p>-->\r\n                            <div class=\"table-responsive\">\r\n                                <table class=\"table table-borderless\">\r\n                                    <tbody>\r\n                                        <tr>\r\n                                            <th></th>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Total Order Price</th>\r\n                                            <td>+\r\n                                                ₹ 160.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Delivery Charge</th>\r\n                                            <td>+\r\n                                                ₹ 50.00                                            </td>\r\n                                        </tr>\r\n                                        <tr class=\"d-none\">\r\n                                            <th>Tax - (0%)</th>\r\n                                            <td>+\r\n                                                ₹ 0.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Wallet Used</th>\r\n                                            <td>-\r\n                                                ₹ 0.00                                            </td>\r\n                                        </tr>\r\n                                                                                                                        <tr class=\"d-none\">\r\n                                            <th>Total Payable</th>\r\n                                            <td>\r\n                                                ₹  210.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Final Total</th>\r\n                                            <td>\r\n                                                ₹  210.00                                            </td>\r\n                                        </tr>\r\n                                    </tbody>\r\n                                </table>\r\n                            </div>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                </div>\r\n                <!--/.card-->\r\n            </div>\r\n            <!--/.col-md-12-->\r\n        </div>\r\n        <!-- /.row -->\r\n    </div>\r\n    <!-- /.container-fluid -->\r\n    </section>    </div>\r\n    <aside class=\"control-sidebar control-sidebar-dark\">\r\n    <!-- Control sidebar content goes here -->\r\n</aside>\r\n<!-- Bootstrap 4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap.bundle.min.js\"></script>\r\n<!-- jQuery UI 1.11.4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/jquery-ui/jquery-ui.min.js\"></script>\r\n<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->\r\n<script>\r\n    $.widget.bridge('uibutton', $.ui.button)\r\n</script>\r\n<!-- Ekko Lightbox -->\r\n\r\n<script src=https://developmentalphawizz.com/Gomega/assets/admin/ekko-lightbox/ekko-lightbox.min.js></script>\r\n<!-- ChartJS -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/chart.js/Chart.min.js\"></script>\r\n<!-- Sparkline -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/sparkline.js\"></script>\r\n<!-- JQVMap -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.vmap.min.js\"></script>\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.vmap.usa.js\"></script>\r\n<!-- jQuery Knob Chart -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.knob.min.js\"></script>\r\n<!-- daterangepicker -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/moment.min.js\"></script>\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/daterangepicker.js\"></script>\r\n<!-- Tempusdominus Bootstrap 4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tempusdominus-bootstrap-4.min.js\"></script>\r\n<!-- Summernote -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/summernote/summernote-bs4.min.js\"></script>\r\n<!-- Toastr -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/iziToast.min.js\"></script>\r\n<!-- Select -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/select2.full.min.js\"></script>\r\n<!-- overlayScrollbars -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.overlayScrollbars.min.js\"></script>\r\n<!-- AdminLTE App -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/js/adminlte.js\"></script>\r\n<!-- Bootstrap Switch -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap-switch.min.js\"></script>\r\n<!-- Bootstrap Table -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap-table.min.js\"></script>\r\n<!-- Jquery Fancybox -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.fancybox.min.js\"></script>\r\n<!-- Sweeta Alert 2 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/sweetalert2.min.js\"></script>\r\n<!-- Block UI -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.blockUI.js\"></script>\r\n<!-- JS tree -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jstree.min.js\"></script>\r\n<!-- Chartist -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/chartist.js\"></script>\r\n<!-- Tool Tip -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tooltip.js\"></script>\r\n<!-- Loader Js -->\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/loader.js\"></script>\r\n<!-- Dropzone -->\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/dropzone.js\"></script>\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tagify.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.validate.min.js\"></script>\r\n<!-- Custom -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/custom/custom.js\"></script>\r\n<!-- Demo -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/js/demo.js\"></script>\r\n\r\n\r\n\r\n</body>\r\n\r\n</html>","order_items":[{"id":"1616","user_id":"797","order_id":"1176","delivery_boy_id":null,"seller_id":"801","is_credited":"0","otp":"0","product_name":"HALF MUTTON BIRYANI","variant_name":"","product_variant_id":"17","quantity":"1","price":"160","discounted_price":null,"tax_percent":"0","tax_amount":"0","discount":"0","sub_total":"160","deliver_by":"","status":[["received","28-10-2022 02:58:57pm"]],"active_status":"received","date_added":"2022-10-28 14:58:57","application_order":"application_order","container_price":"0","estimate_time":"","table_no":"0","product_id":"16","is_cancelable":"0","store_name":"dev online","seller_longitude":"75.8936962","seller_mobile":"8484559845","seller_address":"Indore, Madhya Pradesh, India","seller_latitude":"22.7532848","delivery_boy_name":"","delivery_boy_number":"","store_description":"fdgdfgdgdgdfgf","seller_rating":"0.0","seller_profile":"https://developmentalphawizz.com/Gomega/uploads/seller/Hardware-1024x1024.jpg","courier_agency":"","tracking_id":"","url":"","seller_name":"divya","is_returnable":"0","image":"https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg","name":"HALF MUTTON BIRYANI","type":"simple_product","order_counter":"1","order_cancel_counter":"0","order_return_counter":"0","varaint_ids":"","variant_values":"","attr_name":"","image_sm":"https://developmentalphawizz.com/Gomega/uploads/media/2022/thumb-sm/MUTTON_BIRYANI1.jpg","image_md":"https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg","is_already_returned":"0","is_already_cancelled":"0","return_request_submitted":null}]}]
//
// CurrentOrderModel currentOrderModelFromJson(String str) => CurrentOrderModel.fromJson(json.decode(str));
// String currentOrderModelToJson(CurrentOrderModel data) => json.encode(data.toJson());
// class CurrentOrderModel {
//   CurrentOrderModel({
//       bool? error,
//       String? message,
//       String? total,
//       List<Data>? data,}){
//     _error = error;
//     _message = message;
//     _total = total;
//     _data = data;
// }
//
//   CurrentOrderModel.fromJson(dynamic json) {
//     _error = json['error'];
//     _message = json['message'];
//     _total = json['total'];
//     if (json['data'] != null) {
//       _data = [];
//       json['data'].forEach((v) {
//         _data?.add(Data.fromJson(v));
//       });
//     }
//   }
//   bool? _error;
//   String? _message;
//   String? _total;
//   List<Data>? _data;
// CurrentOrderModel copyWith({  bool? error,
//   String? message,
//   String? total,
//   List<Data>? data,
// }) => CurrentOrderModel(  error: error ?? _error,
//   message: message ?? _message,
//   total: total ?? _total,
//   data: data ?? _data,
// );
//   bool? get error => _error;
//   String? get message => _message;
//   String? get total => _total;
//   List<Data>? get data => _data;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['error'] = _error;
//     map['message'] = _message;
//     map['total'] = _total;
//     if (_data != null) {
//       map['data'] = _data?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// id : "1176"
// /// user_id : "797"
// /// address_id : "277"
// /// mobile : "1234567890"
// /// total : "160"
// /// delivery_charge : "50"
// /// is_delivery_charge_returnable : "1"
// /// wallet_balance : "0"
// /// promo_code : " "
// /// promo_discount : "0"
// /// discount : "0"
// /// total_payable : "210"
// /// final_total : "210"
// /// payment_method : "COD"
// /// latitude : "22.7484403"
// /// longitude : "75.8977364"
// /// address : "Medanta Hospital,Vijay Nagar,Indore, Ganesh, Pune, Madhya Pradesh, India, 411015"
// /// delivery_time : ""
// /// delivery_date : ""
// /// date_added : "2022-10-28 14:58:57"
// /// otp : "0"
// /// notes : ""
// /// application_order : "application_order"
// /// city : "Pune"
// /// table_no : "2"
// /// sellers_id : "801"
// /// order_date : "28/10/2022"
// /// username : "Dummy User"
// /// country_code : "91"
// /// name : "HALF MUTTON BIRYANI"
// /// attachments : []
// /// courier_agency : ""
// /// tracking_id : ""
// /// url : ""
// /// is_returnable : "0"
// /// is_cancelable : "0"
// /// is_already_returned : "0"
// /// is_already_cancelled : "0"
// /// return_request_submitted : null
// /// total_tax_percent : "0"
// /// total_tax_amount : "0"
// /// invoice_html : "<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n    <title>Invoice Management |Gomegaa</title>\r\n    <!-- Tell the browser to be responsive to screen width -->\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <link rel=\"icon\" href=\"https://developmentalphawizz.com/Gomega/uploads/media/2022/web_logo.png\" type=\"image/gif\" sizes=\"16x16\">\r\n    <!-- Bootstrap Switch -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/bootstrap-switch.min.css\">\r\n    <!-- Font Awesome -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/all.min.css\">\r\n    <!-- Ionicons -->\r\n    <link rel=\"stylesheet\" href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\r\n    <!-- Tempusdominus Bbootstrap 4 -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/tempusdominus-bootstrap-4.min.css\">\r\n    <!-- iCheck -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/icheck-bootstrap.min.css\">\r\n    <!-- Dropzone -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/dropzone.css\">\r\n    <!-- JQVMap -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/jqvmap.min.css\">\r\n    <!-- Ekko Lightbox -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/ekko-lightbox/ekko-lightbox.css\">\r\n    <!-- Theme style -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/css/adminlte.min.css\">\r\n    <!-- overlayScrollbars -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/OverlayScrollbars.min.css\">\r\n    <!-- Daterange picker -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/daterangepicker.css\">\r\n    <!-- summernote -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/summernote/summernote-bs4.css\">\r\n    <!-- Toastr -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/iziToast.min.css\">\r\n    <!-- Select2 -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/select2.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/select2-bootstrap4.min.css\">\r\n    <!-- Sweet Alert -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/sweetalert2.min.css\">\r\n    <!-- Chartist -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/chartist.css\">\r\n    <!-- JS tree -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/style.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/star-rating.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/theme.css\">\r\n    <!-- Google Font: Source Sans Pro -->\r\n    <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300&display=swap\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700\" rel=\"stylesheet\">\r\n\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.16.0/bootstrap-table.min.css\">\r\n    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css\" />\r\n    <!-- Custom CSS -->\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/custom/custom.css\">\r\n\r\n    <!-- jQuery -->\r\n    <script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.min.js\"></script>\r\n    <!-- Star rating js -->\r\n    <script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/star-rating.js\"></script>\r\n    <script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/theme.min.js\"></script>\r\n    <link rel=\"stylesheet\" href=\"https://developmentalphawizz.com/Gomega/assets/admin/css/tagify.min.css\">\r\n    <script type=\"text/javascript\">\r\n        base_url = \"https://developmentalphawizz.com/Gomega/\";\r\n        csrfName = \"ci_csrf_token\";\r\n        csrfHash = \"\";\r\n\r\n        form_name = '#view/api-order-invoice_form';\r\n    </script>\r\n</head>\r\n<body class=\"hold-transition sidebar-mini layout-fixed \">\r\n    <div class=\" wrapper \">\r\n        <section class=\"content\">\r\n    <div class=\"container-fluid\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                <div class=\"card card-info \" id=\"section-to-print\">\r\n                    <div class=\"row m-3\">\r\n                        <div class=\"col-md-12 d-flex justify-content-between\">\r\n                            <h2 class=\"text-left\">\r\n                                <img src=\"https://developmentalphawizz.com/Gomega/uploads/media/2022/web_logo.png\" class=\"d-block \" style=\"max-width:250px;max-height:100px;\">\r\n                            </h2>\r\n                            <h2 class=\"text-right\">\r\n                                Mo. +91 8484559845                            </h2>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                    <!-- info row -->\r\n                    <div class=\"row m-3 d-flex justify-content-between\">\r\n                        <div class=\"col-sm-4 invoice-col\">Sold By <address>\r\n                                <strong>Gomegaa</strong><br>\r\n                                Email: divya@gmail.com<br>\r\n                                Customer Care : +91 8484559845<br>\r\n                                                                    <b>Store Name</b> : dev online<br>\r\n                                                                <br>\r\n                                Address : Indore, Madhya Pradesh, India                            </address>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                        <div class=\"col-sm-4 invoice-col\">Shipping Address <address>\r\n                                <strong>Dummy User</strong><br>\r\n                                Medanta Hospital,Vijay Nagar,Indore, Ganesh, Pune, Madhya Pradesh, India, 411015<br>\r\n                                <strong>1234567890</strong><br>\r\n                                <strong>dummy@gmail.com</strong><br>\r\n                            </address>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                                                    <div class=\"col-sm-2 invoice-col\">\r\n                                <br> <b>Retail Invoice</b>\r\n                                <br> <b>No : </b>#1176                                <br> <b>Date: </b>2022-10-28 14:58:57                                <br>\r\n                                                                    <b>GST</b> : GSTN100<br>\r\n                                                                                                    <b>PAN NO.</b> : 7O41852KJO<br>\r\n                                                            </div>\r\n                                            </div>\r\n                    <!-- /.row -->\r\n                    <!-- Table row -->\r\n                    <div class=\"row m-3\">\r\n                        <div class=\"col-xs-12 table-responsive\">\r\n                            <table class=\"table borderless text-center text-sm\">\r\n                                <thead class=\"\">\r\n                                    <tr>\r\n                                        <th>Sr No.</th>\r\n                                        <th>Product Code</th>\r\n                                        <th>Name</th>\r\n                                        <th>Price</th>\r\n                                        <th>Tax (%)</th>\r\n                                        <th>Qty</th>\r\n                                        <th class=\"d-none\">Tax Amount (₹)</th>\r\n                                        <th>SubTotal (₹)</th>\r\n                                    </tr>\r\n                                </thead>\r\n                                <tbody>\r\n                                                                            <tr>\r\n                                            <td>\r\n                                                1                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                17<br>\r\n                                            </td>\r\n                                            <td class=\"w-25\">\r\n                                                HALF MUTTON BIRYANI                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                ₹ 160.00                                                <br>\r\n                                            </td>\r\n\r\n                                            <td>\r\n                                                0                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                1                                                <br>\r\n                                            </td>\r\n                                            <td class=\"d-none\">\r\n                                                0                                                <br>\r\n                                            </td>\r\n                                            <td>\r\n                                                ₹ 160                                                <br>\r\n                                            </td>\r\n                                        </tr>\r\n                                                                    </tbody>\r\n                                <tbody>\r\n                                    <tr>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th></th>\r\n                                        <th>Total</th>\r\n                                        <th>\r\n                                            1<br>\r\n                                        </th>\r\n                                        <th>\r\n                                            ₹ 160.00                                            <br>\r\n                                        </th>\r\n                                    </tr>\r\n                                </tbody>\r\n                            </table>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                    <!-- /.row -->\r\n                    <div class=\"row m-2 text-right\">\r\n                        <!-- accepted payments column -->\r\n                        <div class=\"col-md-9 offset-md-2\">\r\n                            <!--<p class=\"lead\">Payment Date: </p>-->\r\n                            <div class=\"table-responsive\">\r\n                                <table class=\"table table-borderless\">\r\n                                    <tbody>\r\n                                        <tr>\r\n                                            <th></th>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Total Order Price</th>\r\n                                            <td>+\r\n                                                ₹ 160.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Delivery Charge</th>\r\n                                            <td>+\r\n                                                ₹ 50.00                                            </td>\r\n                                        </tr>\r\n                                        <tr class=\"d-none\">\r\n                                            <th>Tax - (0%)</th>\r\n                                            <td>+\r\n                                                ₹ 0.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Wallet Used</th>\r\n                                            <td>-\r\n                                                ₹ 0.00                                            </td>\r\n                                        </tr>\r\n                                                                                                                        <tr class=\"d-none\">\r\n                                            <th>Total Payable</th>\r\n                                            <td>\r\n                                                ₹  210.00                                            </td>\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <th>Final Total</th>\r\n                                            <td>\r\n                                                ₹  210.00                                            </td>\r\n                                        </tr>\r\n                                    </tbody>\r\n                                </table>\r\n                            </div>\r\n                        </div>\r\n                        <!-- /.col -->\r\n                    </div>\r\n                </div>\r\n                <!--/.card-->\r\n            </div>\r\n            <!--/.col-md-12-->\r\n        </div>\r\n        <!-- /.row -->\r\n    </div>\r\n    <!-- /.container-fluid -->\r\n    </section>    </div>\r\n    <aside class=\"control-sidebar control-sidebar-dark\">\r\n    <!-- Control sidebar content goes here -->\r\n</aside>\r\n<!-- Bootstrap 4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap.bundle.min.js\"></script>\r\n<!-- jQuery UI 1.11.4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/jquery-ui/jquery-ui.min.js\"></script>\r\n<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->\r\n<script>\r\n    $.widget.bridge('uibutton', $.ui.button)\r\n</script>\r\n<!-- Ekko Lightbox -->\r\n\r\n<script src=https://developmentalphawizz.com/Gomega/assets/admin/ekko-lightbox/ekko-lightbox.min.js></script>\r\n<!-- ChartJS -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/chart.js/Chart.min.js\"></script>\r\n<!-- Sparkline -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/sparkline.js\"></script>\r\n<!-- JQVMap -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.vmap.min.js\"></script>\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.vmap.usa.js\"></script>\r\n<!-- jQuery Knob Chart -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.knob.min.js\"></script>\r\n<!-- daterangepicker -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/moment.min.js\"></script>\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/daterangepicker.js\"></script>\r\n<!-- Tempusdominus Bootstrap 4 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tempusdominus-bootstrap-4.min.js\"></script>\r\n<!-- Summernote -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/summernote/summernote-bs4.min.js\"></script>\r\n<!-- Toastr -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/iziToast.min.js\"></script>\r\n<!-- Select -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/select2.full.min.js\"></script>\r\n<!-- overlayScrollbars -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.overlayScrollbars.min.js\"></script>\r\n<!-- AdminLTE App -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/js/adminlte.js\"></script>\r\n<!-- Bootstrap Switch -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap-switch.min.js\"></script>\r\n<!-- Bootstrap Table -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/bootstrap-table.min.js\"></script>\r\n<!-- Jquery Fancybox -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.fancybox.min.js\"></script>\r\n<!-- Sweeta Alert 2 -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/sweetalert2.min.js\"></script>\r\n<!-- Block UI -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.blockUI.js\"></script>\r\n<!-- JS tree -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jstree.min.js\"></script>\r\n<!-- Chartist -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/chartist.js\"></script>\r\n<!-- Tool Tip -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tooltip.js\"></script>\r\n<!-- Loader Js -->\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/loader.js\"></script>\r\n<!-- Dropzone -->\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/dropzone.js\"></script>\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/tagify.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"https://developmentalphawizz.com/Gomega/assets/admin/js/jquery.validate.min.js\"></script>\r\n<!-- Custom -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/custom/custom.js\"></script>\r\n<!-- Demo -->\r\n<script src=\"https://developmentalphawizz.com/Gomega/assets/admin/dist/js/demo.js\"></script>\r\n\r\n\r\n\r\n</body>\r\n\r\n</html>"
// /// order_items : [{"id":"1616","user_id":"797","order_id":"1176","delivery_boy_id":null,"seller_id":"801","is_credited":"0","otp":"0","product_name":"HALF MUTTON BIRYANI","variant_name":"","product_variant_id":"17","quantity":"1","price":"160","discounted_price":null,"tax_percent":"0","tax_amount":"0","discount":"0","sub_total":"160","deliver_by":"","status":[["received","28-10-2022 02:58:57pm"]],"active_status":"received","date_added":"2022-10-28 14:58:57","application_order":"application_order","container_price":"0","estimate_time":"","table_no":"0","product_id":"16","is_cancelable":"0","store_name":"dev online","seller_longitude":"75.8936962","seller_mobile":"8484559845","seller_address":"Indore, Madhya Pradesh, India","seller_latitude":"22.7532848","delivery_boy_name":"","delivery_boy_number":"","store_description":"fdgdfgdgdgdfgf","seller_rating":"0.0","seller_profile":"https://developmentalphawizz.com/Gomega/uploads/seller/Hardware-1024x1024.jpg","courier_agency":"","tracking_id":"","url":"","seller_name":"divya","is_returnable":"0","image":"https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg","name":"HALF MUTTON BIRYANI","type":"simple_product","order_counter":"1","order_cancel_counter":"0","order_return_counter":"0","varaint_ids":"","variant_values":"","attr_name":"","image_sm":"https://developmentalphawizz.com/Gomega/uploads/media/2022/thumb-sm/MUTTON_BIRYANI1.jpg","image_md":"https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg","is_already_returned":"0","is_already_cancelled":"0","return_request_submitted":null}]
//
// Data dataFromJson(String str) => Data.fromJson(json.decode(str));
// String dataToJson(Data data) => json.encode(data.toJson());
// class Data {
//   Data({
//       String? id,
//       String? userId,
//       String? addressId,
//       String? mobile,
//       String? total,
//       String? deliveryCharge,
//       String? isDeliveryChargeReturnable,
//       String? walletBalance,
//       String? promoCode,
//       String? promoDiscount,
//       String? discount,
//       String? totalPayable,
//       String? finalTotal,
//       String? paymentMethod,
//       String? latitude,
//       String? longitude,
//       String? address,
//       String? deliveryTime,
//       String? deliveryDate,
//       String? dateAdded,
//       String? otp,
//       String? notes,
//       String? applicationOrder,
//       String? city,
//       String? tableNo,
//       String? sellersId,
//       String? orderDate,
//       String? username,
//       String? countryCode,
//       String? name,
//       List<dynamic>? attachments,
//       String? courierAgency,
//       String? trackingId,
//       String? url,
//       String? isReturnable,
//       String? isCancelable,
//       String? isAlreadyReturned,
//       String? isAlreadyCancelled,
//       dynamic returnRequestSubmitted,
//       String? totalTaxPercent,
//       String? totalTaxAmount,
//       String? invoiceHtml,
//       List<OrderItems>? orderItems,}){
//     _id = id;
//     _userId = userId;
//     _addressId = addressId;
//     _mobile = mobile;
//     _total = total;
//     _deliveryCharge = deliveryCharge;
//     _isDeliveryChargeReturnable = isDeliveryChargeReturnable;
//     _walletBalance = walletBalance;
//     _promoCode = promoCode;
//     _promoDiscount = promoDiscount;
//     _discount = discount;
//     _totalPayable = totalPayable;
//     _finalTotal = finalTotal;
//     _paymentMethod = paymentMethod;
//     _latitude = latitude;
//     _longitude = longitude;
//     _address = address;
//     _deliveryTime = deliveryTime;
//     _deliveryDate = deliveryDate;
//     _dateAdded = dateAdded;
//     _otp = otp;
//     _notes = notes;
//     _applicationOrder = applicationOrder;
//     _city = city;
//     _tableNo = tableNo;
//     _sellersId = sellersId;
//     _orderDate = orderDate;
//     _username = username;
//     _countryCode = countryCode;
//     _name = name;
//     _attachments = attachments;
//     _courierAgency = courierAgency;
//     _trackingId = trackingId;
//     _url = url;
//     _isReturnable = isReturnable;
//     _isCancelable = isCancelable;
//     _isAlreadyReturned = isAlreadyReturned;
//     _isAlreadyCancelled = isAlreadyCancelled;
//     _returnRequestSubmitted = returnRequestSubmitted;
//     _totalTaxPercent = totalTaxPercent;
//     _totalTaxAmount = totalTaxAmount;
//     _invoiceHtml = invoiceHtml;
//     _orderItems = orderItems;
// }
//
//   Data.fromJson(dynamic json) {
//     _id = json['id'];
//     _userId = json['user_id'];
//     _addressId = json['address_id'];
//     _mobile = json['mobile'];
//     _total = json['total'];
//     _deliveryCharge = json['delivery_charge'];
//     _isDeliveryChargeReturnable = json['is_delivery_charge_returnable'];
//     _walletBalance = json['wallet_balance'];
//     _promoCode = json['promo_code'];
//     _promoDiscount = json['promo_discount'];
//     _discount = json['discount'];
//     _totalPayable = json['total_payable'];
//     _finalTotal = json['final_total'];
//     _paymentMethod = json['payment_method'];
//     _latitude = json['latitude'];
//     _longitude = json['longitude'];
//     _address = json['address'];
//     _deliveryTime = json['delivery_time'];
//     _deliveryDate = json['delivery_date'];
//     _dateAdded = json['date_added'];
//     _otp = json['otp'];
//     _notes = json['notes'];
//     _applicationOrder = json['application_order'];
//     _city = json['city'];
//     _tableNo = json['table_no'];
//     _sellersId = json['sellers_id'];
//     _orderDate = json['order_date'];
//     _username = json['username'];
//     _countryCode = json['country_code'];
//     _name = json['name'];
//     if (json['attachments'] != null) {
//       _attachments = [];
//       json['attachments'].forEach((v) {
//         _attachments?.add(v.fromJson(v));
//       });
//     }
//     _courierAgency = json['courier_agency'];
//     _trackingId = json['tracking_id'];
//     _url = json['url'];
//     _isReturnable = json['is_returnable'];
//     _isCancelable = json['is_cancelable'];
//     _isAlreadyReturned = json['is_already_returned'];
//     _isAlreadyCancelled = json['is_already_cancelled'];
//     _returnRequestSubmitted = json['return_request_submitted'];
//     _totalTaxPercent = json['total_tax_percent'];
//     _totalTaxAmount = json['total_tax_amount'];
//     _invoiceHtml = json['invoice_html'];
//     if (json['order_items'] != null) {
//       _orderItems = [];
//       json['order_items'].forEach((v) {
//         _orderItems?.add(OrderItems.fromJson(v));
//       });
//     }
//   }
//   String? _id;
//   String? _userId;
//   String? _addressId;
//   String? _mobile;
//   String? _total;
//   String? _deliveryCharge;
//   String? _isDeliveryChargeReturnable;
//   String? _walletBalance;
//   String? _promoCode;
//   String? _promoDiscount;
//   String? _discount;
//   String? _totalPayable;
//   String? _finalTotal;
//   String? _paymentMethod;
//   String? _latitude;
//   String? _longitude;
//   String? _address;
//   String? _deliveryTime;
//   String? _deliveryDate;
//   String? _dateAdded;
//   String? _otp;
//   String? _notes;
//   String? _applicationOrder;
//   String? _city;
//   String? _tableNo;
//   String? _sellersId;
//   String? _orderDate;
//   String? _username;
//   String? _countryCode;
//   String? _name;
//   List<dynamic>? _attachments;
//   String? _courierAgency;
//   String? _trackingId;
//   String? _url;
//   String? _isReturnable;
//   String? _isCancelable;
//   String? _isAlreadyReturned;
//   String? _isAlreadyCancelled;
//   dynamic _returnRequestSubmitted;
//   String? _totalTaxPercent;
//   String? _totalTaxAmount;
//   String? _invoiceHtml;
//   List<OrderItems>? _orderItems;
// Data copyWith({  String? id,
//   String? userId,
//   String? addressId,
//   String? mobile,
//   String? total,
//   String? deliveryCharge,
//   String? isDeliveryChargeReturnable,
//   String? walletBalance,
//   String? promoCode,
//   String? promoDiscount,
//   String? discount,
//   String? totalPayable,
//   String? finalTotal,
//   String? paymentMethod,
//   String? latitude,
//   String? longitude,
//   String? address,
//   String? deliveryTime,
//   String? deliveryDate,
//   String? dateAdded,
//   String? otp,
//   String? notes,
//   String? applicationOrder,
//   String? city,
//   String? tableNo,
//   String? sellersId,
//   String? orderDate,
//   String? username,
//   String? countryCode,
//   String? name,
//   List<dynamic>? attachments,
//   String? courierAgency,
//   String? trackingId,
//   String? url,
//   String? isReturnable,
//   String? isCancelable,
//   String? isAlreadyReturned,
//   String? isAlreadyCancelled,
//   dynamic returnRequestSubmitted,
//   String? totalTaxPercent,
//   String? totalTaxAmount,
//   String? invoiceHtml,
//   List<OrderItems>? orderItems,
// }) => Data(  id: id ?? _id,
//   userId: userId ?? _userId,
//   addressId: addressId ?? _addressId,
//   mobile: mobile ?? _mobile,
//   total: total ?? _total,
//   deliveryCharge: deliveryCharge ?? _deliveryCharge,
//   isDeliveryChargeReturnable: isDeliveryChargeReturnable ?? _isDeliveryChargeReturnable,
//   walletBalance: walletBalance ?? _walletBalance,
//   promoCode: promoCode ?? _promoCode,
//   promoDiscount: promoDiscount ?? _promoDiscount,
//   discount: discount ?? _discount,
//   totalPayable: totalPayable ?? _totalPayable,
//   finalTotal: finalTotal ?? _finalTotal,
//   paymentMethod: paymentMethod ?? _paymentMethod,
//   latitude: latitude ?? _latitude,
//   longitude: longitude ?? _longitude,
//   address: address ?? _address,
//   deliveryTime: deliveryTime ?? _deliveryTime,
//   deliveryDate: deliveryDate ?? _deliveryDate,
//   dateAdded: dateAdded ?? _dateAdded,
//   otp: otp ?? _otp,
//   notes: notes ?? _notes,
//   applicationOrder: applicationOrder ?? _applicationOrder,
//   city: city ?? _city,
//   tableNo: tableNo ?? _tableNo,
//   sellersId: sellersId ?? _sellersId,
//   orderDate: orderDate ?? _orderDate,
//   username: username ?? _username,
//   countryCode: countryCode ?? _countryCode,
//   name: name ?? _name,
//   attachments: attachments ?? _attachments,
//   courierAgency: courierAgency ?? _courierAgency,
//   trackingId: trackingId ?? _trackingId,
//   url: url ?? _url,
//   isReturnable: isReturnable ?? _isReturnable,
//   isCancelable: isCancelable ?? _isCancelable,
//   isAlreadyReturned: isAlreadyReturned ?? _isAlreadyReturned,
//   isAlreadyCancelled: isAlreadyCancelled ?? _isAlreadyCancelled,
//   returnRequestSubmitted: returnRequestSubmitted ?? _returnRequestSubmitted,
//   totalTaxPercent: totalTaxPercent ?? _totalTaxPercent,
//   totalTaxAmount: totalTaxAmount ?? _totalTaxAmount,
//   invoiceHtml: invoiceHtml ?? _invoiceHtml,
//   orderItems: orderItems ?? _orderItems,
// );
//   String? get id => _id;
//   String? get userId => _userId;
//   String? get addressId => _addressId;
//   String? get mobile => _mobile;
//   String? get total => _total;
//   String? get deliveryCharge => _deliveryCharge;
//   String? get isDeliveryChargeReturnable => _isDeliveryChargeReturnable;
//   String? get walletBalance => _walletBalance;
//   String? get promoCode => _promoCode;
//   String? get promoDiscount => _promoDiscount;
//   String? get discount => _discount;
//   String? get totalPayable => _totalPayable;
//   String? get finalTotal => _finalTotal;
//   String? get paymentMethod => _paymentMethod;
//   String? get latitude => _latitude;
//   String? get longitude => _longitude;
//   String? get address => _address;
//   String? get deliveryTime => _deliveryTime;
//   String? get deliveryDate => _deliveryDate;
//   String? get dateAdded => _dateAdded;
//   String? get otp => _otp;
//   String? get notes => _notes;
//   String? get applicationOrder => _applicationOrder;
//   String? get city => _city;
//   String? get tableNo => _tableNo;
//   String? get sellersId => _sellersId;
//   String? get orderDate => _orderDate;
//   String? get username => _username;
//   String? get countryCode => _countryCode;
//   String? get name => _name;
//   List<dynamic>? get attachments => _attachments;
//   String? get courierAgency => _courierAgency;
//   String? get trackingId => _trackingId;
//   String? get url => _url;
//   String? get isReturnable => _isReturnable;
//   String? get isCancelable => _isCancelable;
//   String? get isAlreadyReturned => _isAlreadyReturned;
//   String? get isAlreadyCancelled => _isAlreadyCancelled;
//   dynamic get returnRequestSubmitted => _returnRequestSubmitted;
//   String? get totalTaxPercent => _totalTaxPercent;
//   String? get totalTaxAmount => _totalTaxAmount;
//   String? get invoiceHtml => _invoiceHtml;
//   List<OrderItems>? get orderItems => _orderItems;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['user_id'] = _userId;
//     map['address_id'] = _addressId;
//     map['mobile'] = _mobile;
//     map['total'] = _total;
//     map['delivery_charge'] = _deliveryCharge;
//     map['is_delivery_charge_returnable'] = _isDeliveryChargeReturnable;
//     map['wallet_balance'] = _walletBalance;
//     map['promo_code'] = _promoCode;
//     map['promo_discount'] = _promoDiscount;
//     map['discount'] = _discount;
//     map['total_payable'] = _totalPayable;
//     map['final_total'] = _finalTotal;
//     map['payment_method'] = _paymentMethod;
//     map['latitude'] = _latitude;
//     map['longitude'] = _longitude;
//     map['address'] = _address;
//     map['delivery_time'] = _deliveryTime;
//     map['delivery_date'] = _deliveryDate;
//     map['date_added'] = _dateAdded;
//     map['otp'] = _otp;
//     map['notes'] = _notes;
//     map['application_order'] = _applicationOrder;
//     map['city'] = _city;
//     map['table_no'] = _tableNo;
//     map['sellers_id'] = _sellersId;
//     map['order_date'] = _orderDate;
//     map['username'] = _username;
//     map['country_code'] = _countryCode;
//     map['name'] = _name;
//     if (_attachments != null) {
//       map['attachments'] = _attachments?.map((v) => v.toJson()).toList();
//     }
//     map['courier_agency'] = _courierAgency;
//     map['tracking_id'] = _trackingId;
//     map['url'] = _url;
//     map['is_returnable'] = _isReturnable;
//     map['is_cancelable'] = _isCancelable;
//     map['is_already_returned'] = _isAlreadyReturned;
//     map['is_already_cancelled'] = _isAlreadyCancelled;
//     map['return_request_submitted'] = _returnRequestSubmitted;
//     map['total_tax_percent'] = _totalTaxPercent;
//     map['total_tax_amount'] = _totalTaxAmount;
//     map['invoice_html'] = _invoiceHtml;
//     if (_orderItems != null) {
//       map['order_items'] = _orderItems?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// id : "1616"
// /// user_id : "797"
// /// order_id : "1176"
// /// delivery_boy_id : null
// /// seller_id : "801"
// /// is_credited : "0"
// /// otp : "0"
// /// product_name : "HALF MUTTON BIRYANI"
// /// variant_name : ""
// /// product_variant_id : "17"
// /// quantity : "1"
// /// price : "160"
// /// discounted_price : null
// /// tax_percent : "0"
// /// tax_amount : "0"
// /// discount : "0"
// /// sub_total : "160"
// /// deliver_by : ""
// /// status : [["received","28-10-2022 02:58:57pm"]]
// /// active_status : "received"
// /// date_added : "2022-10-28 14:58:57"
// /// application_order : "application_order"
// /// container_price : "0"
// /// estimate_time : ""
// /// table_no : "0"
// /// product_id : "16"
// /// is_cancelable : "0"
// /// store_name : "dev online"
// /// seller_longitude : "75.8936962"
// /// seller_mobile : "8484559845"
// /// seller_address : "Indore, Madhya Pradesh, India"
// /// seller_latitude : "22.7532848"
// /// delivery_boy_name : ""
// /// delivery_boy_number : ""
// /// store_description : "fdgdfgdgdgdfgf"
// /// seller_rating : "0.0"
// /// seller_profile : "https://developmentalphawizz.com/Gomega/uploads/seller/Hardware-1024x1024.jpg"
// /// courier_agency : ""
// /// tracking_id : ""
// /// url : ""
// /// seller_name : "divya"
// /// is_returnable : "0"
// /// image : "https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg"
// /// name : "HALF MUTTON BIRYANI"
// /// type : "simple_product"
// /// order_counter : "1"
// /// order_cancel_counter : "0"
// /// order_return_counter : "0"
// /// varaint_ids : ""
// /// variant_values : ""
// /// attr_name : ""
// /// image_sm : "https://developmentalphawizz.com/Gomega/uploads/media/2022/thumb-sm/MUTTON_BIRYANI1.jpg"
// /// image_md : "https://developmentalphawizz.com/Gomega/uploads/media/2022/MUTTON_BIRYANI1.jpg"
// /// is_already_returned : "0"
// /// is_already_cancelled : "0"
// /// return_request_submitted : null
//
// OrderItems orderItemsFromJson(String str) => OrderItems.fromJson(json.decode(str));
// String orderItemsToJson(OrderItems data) => json.encode(data.toJson());
// class OrderItems {
//   OrderItems({
//       String? id,
//       String? userId,
//       String? orderId,
//       dynamic deliveryBoyId,
//       String? sellerId,
//       String? isCredited,
//       String? otp,
//       String? productName,
//       String? variantName,
//       String? productVariantId,
//       String? quantity,
//       String? price,
//       dynamic discountedPrice,
//       String? taxPercent,
//       String? taxAmount,
//       String? discount,
//       String? subTotal,
//       String? deliverBy,
//       List<List<String>>? status,
//       String? activeStatus,
//       String? dateAdded,
//       String? applicationOrder,
//       String? containerPrice,
//       String? estimateTime,
//       String? tableNo,
//       String? productId,
//       String? isCancelable,
//       String? storeName,
//       String? sellerLongitude,
//       String? sellerMobile,
//       String? sellerAddress,
//       String? sellerLatitude,
//       String? deliveryBoyName,
//       String? deliveryBoyNumber,
//       String? storeDescription,
//       String? sellerRating,
//       String? sellerProfile,
//       String? courierAgency,
//       String? trackingId,
//       String? url,
//       String? sellerName,
//       String? isReturnable,
//       String? image,
//       String? name,
//       String? type,
//       String? orderCounter,
//       String? orderCancelCounter,
//       String? orderReturnCounter,
//       String? varaintIds,
//       String? variantValues,
//       String? attrName,
//       String? imageSm,
//       String? imageMd,
//       String? isAlreadyReturned,
//       String? isAlreadyCancelled,
//       dynamic returnRequestSubmitted,}){
//     _id = id;
//     _userId = userId;
//     _orderId = orderId;
//     _deliveryBoyId = deliveryBoyId;
//     _sellerId = sellerId;
//     _isCredited = isCredited;
//     _otp = otp;
//     _productName = productName;
//     _variantName = variantName;
//     _productVariantId = productVariantId;
//     _quantity = quantity;
//     _price = price;
//     _discountedPrice = discountedPrice;
//     _taxPercent = taxPercent;
//     _taxAmount = taxAmount;
//     _discount = discount;
//     _subTotal = subTotal;
//     _deliverBy = deliverBy;
//     _status = status;
//     _activeStatus = activeStatus;
//     _dateAdded = dateAdded;
//     _applicationOrder = applicationOrder;
//     _containerPrice = containerPrice;
//     _estimateTime = estimateTime;
//     _tableNo = tableNo;
//     _productId = productId;
//     _isCancelable = isCancelable;
//     _storeName = storeName;
//     _sellerLongitude = sellerLongitude;
//     _sellerMobile = sellerMobile;
//     _sellerAddress = sellerAddress;
//     _sellerLatitude = sellerLatitude;
//     _deliveryBoyName = deliveryBoyName;
//     _deliveryBoyNumber = deliveryBoyNumber;
//     _storeDescription = storeDescription;
//     _sellerRating = sellerRating;
//     _sellerProfile = sellerProfile;
//     _courierAgency = courierAgency;
//     _trackingId = trackingId;
//     _url = url;
//     _sellerName = sellerName;
//     _isReturnable = isReturnable;
//     _image = image;
//     _name = name;
//     _type = type;
//     _orderCounter = orderCounter;
//     _orderCancelCounter = orderCancelCounter;
//     _orderReturnCounter = orderReturnCounter;
//     _varaintIds = varaintIds;
//     _variantValues = variantValues;
//     _attrName = attrName;
//     _imageSm = imageSm;
//     _imageMd = imageMd;
//     _isAlreadyReturned = isAlreadyReturned;
//     _isAlreadyCancelled = isAlreadyCancelled;
//     _returnRequestSubmitted = returnRequestSubmitted;
// }
//
//   OrderItems.fromJson(dynamic json) {
//     _id = json['id'];
//     _userId = json['user_id'];
//     _orderId = json['order_id'];
//     _deliveryBoyId = json['delivery_boy_id'];
//     _sellerId = json['seller_id'];
//     _isCredited = json['is_credited'];
//     _otp = json['otp'];
//     _productName = json['product_name'];
//     _variantName = json['variant_name'];
//     _productVariantId = json['product_variant_id'];
//     _quantity = json['quantity'];
//     _price = json['price'];
//     _discountedPrice = json['discounted_price'];
//     _taxPercent = json['tax_percent'];
//     _taxAmount = json['tax_amount'];
//     _discount = json['discount'];
//     _subTotal = json['sub_total'];
//     _deliverBy = json['deliver_by'];
//     // _status = json['status'] != null ? json['status'].cast<String>() : [];
//     _status = json['status'] ;
//         //!= null ? json['status'].cast<String>() : [];
//     _activeStatus = json['active_status'];
//     _dateAdded = json['date_added'];
//     _applicationOrder = json['application_order'];
//     _containerPrice = json['container_price'];
//     _estimateTime = json['estimate_time'];
//     _tableNo = json['table_no'];
//     _productId = json['product_id'];
//     _isCancelable = json['is_cancelable'];
//     _storeName = json['store_name'];
//     _sellerLongitude = json['seller_longitude'];
//     _sellerMobile = json['seller_mobile'];
//     _sellerAddress = json['seller_address'];
//     _sellerLatitude = json['seller_latitude'];
//     _deliveryBoyName = json['delivery_boy_name'];
//     _deliveryBoyNumber = json['delivery_boy_number'];
//     _storeDescription = json['store_description'];
//     _sellerRating = json['seller_rating'];
//     _sellerProfile = json['seller_profile'];
//     _courierAgency = json['courier_agency'];
//     _trackingId = json['tracking_id'];
//     _url = json['url'];
//     _sellerName = json['seller_name'];
//     _isReturnable = json['is_returnable'];
//     _image = json['image'];
//     _name = json['name'];
//     _type = json['type'];
//     _orderCounter = json['order_counter'];
//     _orderCancelCounter = json['order_cancel_counter'];
//     _orderReturnCounter = json['order_return_counter'];
//     _varaintIds = json['varaint_ids'];
//     _variantValues = json['variant_values'];
//     _attrName = json['attr_name'];
//     _imageSm = json['image_sm'];
//     _imageMd = json['image_md'];
//     _isAlreadyReturned = json['is_already_returned'];
//     _isAlreadyCancelled = json['is_already_cancelled'];
//     _returnRequestSubmitted = json['return_request_submitted'];
//   }
//   String? _id;
//   String? _userId;
//   String? _orderId;
//   dynamic _deliveryBoyId;
//   String? _sellerId;
//   String? _isCredited;
//   String? _otp;
//   String? _productName;
//   String? _variantName;
//   String? _productVariantId;
//   String? _quantity;
//   String? _price;
//   dynamic _discountedPrice;
//   String? _taxPercent;
//   String? _taxAmount;
//   String? _discount;
//   String? _subTotal;
//   String? _deliverBy;
//   List<List<String>>? _status;
//   String? _activeStatus;
//   String? _dateAdded;
//   String? _applicationOrder;
//   String? _containerPrice;
//   String? _estimateTime;
//   String? _tableNo;
//   String? _productId;
//   String? _isCancelable;
//   String? _storeName;
//   String? _sellerLongitude;
//   String? _sellerMobile;
//   String? _sellerAddress;
//   String? _sellerLatitude;
//   String? _deliveryBoyName;
//   String? _deliveryBoyNumber;
//   String? _storeDescription;
//   String? _sellerRating;
//   String? _sellerProfile;
//   String? _courierAgency;
//   String? _trackingId;
//   String? _url;
//   String? _sellerName;
//   String? _isReturnable;
//   String? _image;
//   String? _name;
//   String? _type;
//   String? _orderCounter;
//   String? _orderCancelCounter;
//   String? _orderReturnCounter;
//   String? _varaintIds;
//   String? _variantValues;
//   String? _attrName;
//   String? _imageSm;
//   String? _imageMd;
//   String? _isAlreadyReturned;
//   String? _isAlreadyCancelled;
//   dynamic _returnRequestSubmitted;
// OrderItems copyWith({  String? id,
//   String? userId,
//   String? orderId,
//   dynamic deliveryBoyId,
//   String? sellerId,
//   String? isCredited,
//   String? otp,
//   String? productName,
//   String? variantName,
//   String? productVariantId,
//   String? quantity,
//   String? price,
//   dynamic discountedPrice,
//   String? taxPercent,
//   String? taxAmount,
//   String? discount,
//   String? subTotal,
//   String? deliverBy,
//   List<List<String>>? status,
//   String? activeStatus,
//   String? dateAdded,
//   String? applicationOrder,
//   String? containerPrice,
//   String? estimateTime,
//   String? tableNo,
//   String? productId,
//   String? isCancelable,
//   String? storeName,
//   String? sellerLongitude,
//   String? sellerMobile,
//   String? sellerAddress,
//   String? sellerLatitude,
//   String? deliveryBoyName,
//   String? deliveryBoyNumber,
//   String? storeDescription,
//   String? sellerRating,
//   String? sellerProfile,
//   String? courierAgency,
//   String? trackingId,
//   String? url,
//   String? sellerName,
//   String? isReturnable,
//   String? image,
//   String? name,
//   String? type,
//   String? orderCounter,
//   String? orderCancelCounter,
//   String? orderReturnCounter,
//   String? varaintIds,
//   String? variantValues,
//   String? attrName,
//   String? imageSm,
//   String? imageMd,
//   String? isAlreadyReturned,
//   String? isAlreadyCancelled,
//   dynamic returnRequestSubmitted,
// }) => OrderItems(  id: id ?? _id,
//   userId: userId ?? _userId,
//   orderId: orderId ?? _orderId,
//   deliveryBoyId: deliveryBoyId ?? _deliveryBoyId,
//   sellerId: sellerId ?? _sellerId,
//   isCredited: isCredited ?? _isCredited,
//   otp: otp ?? _otp,
//   productName: productName ?? _productName,
//   variantName: variantName ?? _variantName,
//   productVariantId: productVariantId ?? _productVariantId,
//   quantity: quantity ?? _quantity,
//   price: price ?? _price,
//   discountedPrice: discountedPrice ?? _discountedPrice,
//   taxPercent: taxPercent ?? _taxPercent,
//   taxAmount: taxAmount ?? _taxAmount,
//   discount: discount ?? _discount,
//   subTotal: subTotal ?? _subTotal,
//   deliverBy: deliverBy ?? _deliverBy,
//   status: status ?? _status,
//   activeStatus: activeStatus ?? _activeStatus,
//   dateAdded: dateAdded ?? _dateAdded,
//   applicationOrder: applicationOrder ?? _applicationOrder,
//   containerPrice: containerPrice ?? _containerPrice,
//   estimateTime: estimateTime ?? _estimateTime,
//   tableNo: tableNo ?? _tableNo,
//   productId: productId ?? _productId,
//   isCancelable: isCancelable ?? _isCancelable,
//   storeName: storeName ?? _storeName,
//   sellerLongitude: sellerLongitude ?? _sellerLongitude,
//   sellerMobile: sellerMobile ?? _sellerMobile,
//   sellerAddress: sellerAddress ?? _sellerAddress,
//   sellerLatitude: sellerLatitude ?? _sellerLatitude,
//   deliveryBoyName: deliveryBoyName ?? _deliveryBoyName,
//   deliveryBoyNumber: deliveryBoyNumber ?? _deliveryBoyNumber,
//   storeDescription: storeDescription ?? _storeDescription,
//   sellerRating: sellerRating ?? _sellerRating,
//   sellerProfile: sellerProfile ?? _sellerProfile,
//   courierAgency: courierAgency ?? _courierAgency,
//   trackingId: trackingId ?? _trackingId,
//   url: url ?? _url,
//   sellerName: sellerName ?? _sellerName,
//   isReturnable: isReturnable ?? _isReturnable,
//   image: image ?? _image,
//   name: name ?? _name,
//   type: type ?? _type,
//   orderCounter: orderCounter ?? _orderCounter,
//   orderCancelCounter: orderCancelCounter ?? _orderCancelCounter,
//   orderReturnCounter: orderReturnCounter ?? _orderReturnCounter,
//   varaintIds: varaintIds ?? _varaintIds,
//   variantValues: variantValues ?? _variantValues,
//   attrName: attrName ?? _attrName,
//   imageSm: imageSm ?? _imageSm,
//   imageMd: imageMd ?? _imageMd,
//   isAlreadyReturned: isAlreadyReturned ?? _isAlreadyReturned,
//   isAlreadyCancelled: isAlreadyCancelled ?? _isAlreadyCancelled,
//   returnRequestSubmitted: returnRequestSubmitted ?? _returnRequestSubmitted,
// );
//   String? get id => _id;
//   String? get userId => _userId;
//   String? get orderId => _orderId;
//   dynamic get deliveryBoyId => _deliveryBoyId;
//   String? get sellerId => _sellerId;
//   String? get isCredited => _isCredited;
//   String? get otp => _otp;
//   String? get productName => _productName;
//   String? get variantName => _variantName;
//   String? get productVariantId => _productVariantId;
//   String? get quantity => _quantity;
//   String? get price => _price;
//   dynamic get discountedPrice => _discountedPrice;
//   String? get taxPercent => _taxPercent;
//   String? get taxAmount => _taxAmount;
//   String? get discount => _discount;
//   String? get subTotal => _subTotal;
//   String? get deliverBy => _deliverBy;
//   List<List<String>>? get status => _status;
//   String? get activeStatus => _activeStatus;
//   String? get dateAdded => _dateAdded;
//   String? get applicationOrder => _applicationOrder;
//   String? get containerPrice => _containerPrice;
//   String? get estimateTime => _estimateTime;
//   String? get tableNo => _tableNo;
//   String? get productId => _productId;
//   String? get isCancelable => _isCancelable;
//   String? get storeName => _storeName;
//   String? get sellerLongitude => _sellerLongitude;
//   String? get sellerMobile => _sellerMobile;
//   String? get sellerAddress => _sellerAddress;
//   String? get sellerLatitude => _sellerLatitude;
//   String? get deliveryBoyName => _deliveryBoyName;
//   String? get deliveryBoyNumber => _deliveryBoyNumber;
//   String? get storeDescription => _storeDescription;
//   String? get sellerRating => _sellerRating;
//   String? get sellerProfile => _sellerProfile;
//   String? get courierAgency => _courierAgency;
//   String? get trackingId => _trackingId;
//   String? get url => _url;
//   String? get sellerName => _sellerName;
//   String? get isReturnable => _isReturnable;
//   String? get image => _image;
//   String? get name => _name;
//   String? get type => _type;
//   String? get orderCounter => _orderCounter;
//   String? get orderCancelCounter => _orderCancelCounter;
//   String? get orderReturnCounter => _orderReturnCounter;
//   String? get varaintIds => _varaintIds;
//   String? get variantValues => _variantValues;
//   String? get attrName => _attrName;
//   String? get imageSm => _imageSm;
//   String? get imageMd => _imageMd;
//   String? get isAlreadyReturned => _isAlreadyReturned;
//   String? get isAlreadyCancelled => _isAlreadyCancelled;
//   dynamic get returnRequestSubmitted => _returnRequestSubmitted;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['user_id'] = _userId;
//     map['order_id'] = _orderId;
//     map['delivery_boy_id'] = _deliveryBoyId;
//     map['seller_id'] = _sellerId;
//     map['is_credited'] = _isCredited;
//     map['otp'] = _otp;
//     map['product_name'] = _productName;
//     map['variant_name'] = _variantName;
//     map['product_variant_id'] = _productVariantId;
//     map['quantity'] = _quantity;
//     map['price'] = _price;
//     map['discounted_price'] = _discountedPrice;
//     map['tax_percent'] = _taxPercent;
//     map['tax_amount'] = _taxAmount;
//     map['discount'] = _discount;
//     map['sub_total'] = _subTotal;
//     map['deliver_by'] = _deliverBy;
//     map['status'] = _status;
//     map['active_status'] = _activeStatus;
//     map['date_added'] = _dateAdded;
//     map['application_order'] = _applicationOrder;
//     map['container_price'] = _containerPrice;
//     map['estimate_time'] = _estimateTime;
//     map['table_no'] = _tableNo;
//     map['product_id'] = _productId;
//     map['is_cancelable'] = _isCancelable;
//     map['store_name'] = _storeName;
//     map['seller_longitude'] = _sellerLongitude;
//     map['seller_mobile'] = _sellerMobile;
//     map['seller_address'] = _sellerAddress;
//     map['seller_latitude'] = _sellerLatitude;
//     map['delivery_boy_name'] = _deliveryBoyName;
//     map['delivery_boy_number'] = _deliveryBoyNumber;
//     map['store_description'] = _storeDescription;
//     map['seller_rating'] = _sellerRating;
//     map['seller_profile'] = _sellerProfile;
//     map['courier_agency'] = _courierAgency;
//     map['tracking_id'] = _trackingId;
//     map['url'] = _url;
//     map['seller_name'] = _sellerName;
//     map['is_returnable'] = _isReturnable;
//     map['image'] = _image;
//     map['name'] = _name;
//     map['type'] = _type;
//     map['order_counter'] = _orderCounter;
//     map['order_cancel_counter'] = _orderCancelCounter;
//     map['order_return_counter'] = _orderReturnCounter;
//     map['varaint_ids'] = _varaintIds;
//     map['variant_values'] = _variantValues;
//     map['attr_name'] = _attrName;
//     map['image_sm'] = _imageSm;
//     map['image_md'] = _imageMd;
//     map['is_already_returned'] = _isAlreadyReturned;
//     map['is_already_cancelled'] = _isAlreadyCancelled;
//     map['return_request_submitted'] = _returnRequestSubmitted;
//     return map;
//   }
//
// }
import 'package:eshop_multivendor/Helper/String.dart';
import 'package:intl/intl.dart';

class OrderModel {
  String? id,
      name,
      mobile,
      delCharge,
      walBal,
      promo,
      promoDis,
      payMethod,
      userCompleteStatus,
      total,
      subTotal,
      payable,
      address,
  //  taxAmt,
      taxPer,
      orderDate,
      dateTime,
      isCancleable,
      isReturnable,
      isAlrCancelled,
      isAlrReturned,
      rtnReqSubmitted,
      activeStatus,
      otp,
      deliveryBoyId,
      invoice,
      delDate,
      delTime;

  List<Attachment>? attachList = [];
  List<OrderItem>? itemList;
  List<String> listStatus = [];
  List<String?>? listDate = [];

  OrderModel(
      {this.id,
        this.name,
        this.mobile,
        this.delCharge,
        this.walBal,
        this.promo,
        this.promoDis,
        this.userCompleteStatus,
        this.payMethod,
        this.total,
        this.subTotal,
        this.payable,
        this.address,
        this.taxPer,
        // this.taxAmt,
        this.orderDate,
        this.dateTime,
        this.itemList,
        required this.listStatus,
        this.listDate,
        this.isReturnable,
        this.isCancleable,
        this.isAlrCancelled,
        this.isAlrReturned,
        this.rtnReqSubmitted,
        this.activeStatus,
        this.otp,
        this.invoice,
        this.delDate,
        this.delTime,
        this.deliveryBoyId,
        this.attachList});

  factory OrderModel.fromJson(Map<String, dynamic> parsedJson) {
    List<OrderItem> itemList = [];
    var order = (parsedJson[ORDER_ITEMS] as List?);

    if (order == null || order.isEmpty)
      itemList = [];
    else
      itemList = order.map((data) => new OrderItem.fromJson(data)).toList();
    String date = parsedJson[DATE_ADDED];
    date = DateFormat('dd-MM-yyyy').format(DateTime.parse(date));



    List<Attachment> attachmentList = [];
    List attachments = [];
    if (parsedJson[ATTACHMENTS] != null) attachments = parsedJson[ATTACHMENTS];

    attachmentList =
        attachments.map((data) => new Attachment.fromJson(data)).toList();

    return new OrderModel(
        id: parsedJson[ID],
        name: parsedJson[USERNAME],
        mobile: parsedJson[MOBILE],
        delCharge: parsedJson[DEL_CHARGE],
        walBal: parsedJson[WAL_BAL],
        promo: parsedJson[PROMOCODE],
        userCompleteStatus : parsedJson['user_complete_status'],
        promoDis: parsedJson[PROMO_DIS],
        payMethod: parsedJson[PAYMENT_METHOD],
        total: parsedJson[FINAL_TOTAL],
        subTotal: parsedJson[TOTAL],
        payable: parsedJson[TOTAL_PAYABLE],
        address: parsedJson[ADDRESS] ?? "",
        //   taxAmt: parsedJson[TOTAL_TAX_AMT],
        taxPer: parsedJson[TOTAL_TAX_PER],
        dateTime: parsedJson[DATE_ADDED],
        isCancleable: parsedJson[ISCANCLEABLE],
        isReturnable: parsedJson[ISRETURNABLE],
        isAlrCancelled: parsedJson[ISALRCANCLE],
        isAlrReturned: parsedJson[ISALRRETURN],
        rtnReqSubmitted: parsedJson[ISRTNREQSUBMITTED],
        orderDate: date,
        itemList: itemList,
        // listStatus: lStatus,
        // listDate: lDate,
        invoice: parsedJson[INVOICE],
        activeStatus: parsedJson[ACTIVE_STATUS],
        otp: parsedJson[OTP],
        delDate: parsedJson[DEL_DATE] != ""
            ? DateFormat('dd-MM-yyyy')
            .format(DateTime.parse(parsedJson[DEL_DATE]))
            : '',
        delTime: parsedJson[DEL_TIME] != null ? parsedJson[DEL_TIME] : '',
        deliveryBoyId: parsedJson[DELIVERY_BOY_ID],
        attachList: attachmentList,
        listStatus: []);
  }
}

class OrderItem {
  String? id,
      name,
      qty,
      price,
      subTotal,
      status,
      image,
      varientId,
      isCancle,
      isReturn,
      isAlrCancelled,
      isAlrReturned,
      rtnReqSubmitted,
      varient_values,
      attr_name,
      productId,
      item_otp,
      store_description,
      seller_rating,
      seller_profile,
      seller_name,
      seller_id,
      store_name,
      courier_agency,
      tracking_id,
      tracking_url,
      deliveryBoyName,
      deliveryBoyNumber;

  List<String>? listStatus = [];
  List<String>? listDate = [];

  OrderItem({
    this.qty,
    this.id,
    this.name,
    this.price,
    this.subTotal,
    this.status,
    this.image,
    this.varientId,
    this.listDate,
    this.listStatus,
    this.isCancle,
    this.isReturn,
    this.isAlrReturned,
    this.isAlrCancelled,
    this.rtnReqSubmitted,
    this.attr_name,
    this.productId,
    this.item_otp,
    this.varient_values,
    this.store_description,
    this.seller_rating,
    this.seller_profile,
    this.seller_name,
    this.seller_id,
    this.store_name,
    this.courier_agency,
    this.tracking_id,
    this.tracking_url,
    this.deliveryBoyName,
    this.deliveryBoyNumber
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    List<String>? lStatus = [];
    List<String>? lDate = [];

    var allSttus = json[STATUS];
    for (var curStatus in allSttus) {
      lStatus.add(curStatus[0]);
      lDate.add(curStatus[1]);
    }
    return new OrderItem(
        id: json[ID],
        qty: json[QUANTITY],
        name: json[NAME],
        image: json[IMAGE],
        price: json[PRICE],
        subTotal: json[SUB_TOTAL],
        varientId: json[PRODUCT_VARIENT_ID],
        listStatus: lStatus,
        status: json[ACTIVE_STATUS],
        listDate: lDate,
        isCancle: json[ISCANCLEABLE],
        isReturn: json[ISRETURNABLE],
        isAlrCancelled: json[ISALRCANCLE],
        isAlrReturned: json[ISALRRETURN],
        rtnReqSubmitted: json[ISRTNREQSUBMITTED],
        attr_name: json[ATTR_NAME],
        productId: json[PRODUCT_ID],
        varient_values: json[VARIENT_VALUE],
        item_otp: json[OTP],
        seller_name: json[SELLER_NAME],
        seller_profile: json[SELLER_PROFILE],
        seller_rating: json[SELLER_RATING],
        store_description: json[STORE_DESC],
        store_name: json[STORE_NAME],
        seller_id: json[SELLER_ID],
        courier_agency: json[COURIER_AGENCY] ?? "",
        tracking_id: json[TRACKING_ID] ?? "",
        tracking_url: json[TRACKING_URL] ?? "",
        deliveryBoyName: json["delivery_boy_name"],
        deliveryBoyNumber: json["delivery_boy_number"]
    );
  }
}

class Attachment {
  String? id, attachment, bankTranStatus;

  Attachment({this.id, this.attachment, this.bankTranStatus});

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
        id: json[ID],
        attachment: json[ATTACHMENT],
        bankTranStatus: json[BANK_STATUS]);
  }
}
