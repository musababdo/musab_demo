
import 'package:get/get.dart';

class MyLocal implements Translations{
  @override
  Map<String, Map<String, String>> get keys =>{
    "ar" : {
      "choose_lang" : "اختر اللغه",

      "login_invalid" : "البريد الالكتروني او كلمه المرور خطاء",
      "login_invalid_btn" : "حسنا",
      "login_success" : "تم تسجيل الدخول بنجاح",
      "login_username" : "الاسم بالكامل",
      "login_password" : "كلمه المرور",
      "email" : "البريد الالكتروني",
      "phone" : "مثال : 5xxxxxx",
      "login_error" : "هذا الحقل مطلوب",
      "login_btn" : "تسجيل دخول",
      "login_first" : "يجب عليك تسجيل الدخول اولا",
      "or" : "او",
      "have_no_account" : "ليس لديك حساب ؟",
      "have_account" : "لديك حساب ؟",
      "register_btn" : "انشاء حساب",
      "save_successfully" : "تم الحفظ بنجاح",
      "password_incorrect" : "يجب أن تتكون كلمة المرور من 6 أحرف على الأقل",
      "logout" : "تسجيل خروج",

      "home_title" : "الرئيسيه",
      "home_profile" : "الشخصيه",
      "home_order" : "الطلبات",
      "home_logout" : "تسجيل خروج",
      "home_settings" : "الاعدادات",
      "home_logout_mes" : "تم تسجيل الخروج",
      "home_welcome" : "مرحبا بك",
      "home_no_result" : "لايوجد طلبات",
      "home_favorite" : "المفضله",
      "home_cart" : "السله",
      "home_thedialog_title" : "تنبيه",
      "home_thedialog_body" : "ليس لديك حساب قم بعمل حساب الأن",
      "home_thedialog_cancel" : "الغاء",
      "home_thedialog_ok" : "موافق",
      "home_search" : "ابحث هنا",
      "home_no_result" : "لايوجد نتائج",
      "home_favorite_empty" : "المفضله خاليه",
      "all" : "الكل",

      "profile_change_password_btn" : "تغيير كلمه المرور",
      "profile_btn_edit" : "تعديل",
      "profile_btn_delete" : "حذف",
      "profile_phone" : "رقم الهاتف",
      "profile_delete_btn" : "حذف الحساب",
      "profile_dialog_title" : "تنبيه",
      "profile_dialog_message" : "هل انت متأكد من انك تريد الحذف",
      "profile_dialog_delete" : "هل تود حذف السله نهائيا",
      "profile_dialog_ok" : "نعم",
      "profile_dialog_no" : "لا",
      "profile_delete" : "تم حذف الملف الشخصي",
      "inter_name" : "قم بادخال أسمك",
      "inter_email" : "قم بادخال البريد الالكتروني",
      "inter_phone" : "قم بادخال رقم الهاتف",
      "inter_password" : "قم بادخال كلمه المرور",
      "profile_edit" : "تم تعديل الملف الشخصي",
      "change_lang" : "تغيير اللغه",
      "exit" : "خروج من التطبيق",
      "menu_alert_message" : "هل تود الخروج من التطبيق",
      "menu_alert_btn_cancel" : "الغاء",
      "menu_alert_btn_ok" : "موافق",
      "category" : "الفئات",
      "package" : "الحزم",
      "empty" : "فارغ",
      "services" : "الخدمات",
      "next" : "التالي",
      "order_now" : "اطلب الان",
      "choose_category" : "الرجاء اختيار فئه لرؤيه الحزم",
      "date_and_time" : "الوقت والزمن",
      "select_date_and_time" : "اختر الوقت والزمن",
      "select_payment" : "اختر طريقه الدفع",
      "please_select_payment" : "الرجاء اختر طريقه الدفع",
      "please_select_all" : "الرجاء ملء جميع الخيارات",
      "send" : "تم الارسال بنجاح",
      "order_detail" : "تفاصيل الطلب",
      "category" : "الفئات",
      "package" : "الكل",
      "payment" : "طريقه الدفع",
      "status" : "الحاله",
      "detailer" : "العامل",
      "more" : "عرض الكل",
      "payment_successful" : "تمت عمليه الدفع بنجاح",
      "price" : "درهم",
      "item_exict" : "هذا العنصر موجود في السله",
      "item_added" : "تمت الاضافه الي السله",
      "btn_add" : "أضف الي السله",
      "cart_empty" : "السله فارغه",
      "total" : "المبلغ الكلي",
      "sub_total" : "المبلغ الفرعي",
      "shipping" : "الشحن",
      "order_now" : "اطلب الان",
      "next" : "التالي",
      "order_empty" : "لايوجد طلبات",
      "order_details" : "تفاصيل الطلب",
      "order_cancel" : "الغاء الطلب",
      "order_alert_cancel_body" : "هل تود الغاء طلبا نهائيا",
      "order_alert_cancel_no" : "لا",
      "order_alert_cancel_yes" : "نعم",
      "quantity" : "الكميه",

      "step_one" : "المعلومات الاساسيه",
      "step_two" : "معلومات الموقع",
      "step_three" : "طريقه الدفع",
      "step_next" : "التالي",
      "step_back" : "السابق",
      "continue_order" : "الرجاء ادخال بياناتك وتكمله الطلب",

      "street" : "اسم الشارع",
      "building" : "اسم المبنى/الرقم",
      "floor" : "الطابق,الشقه,رقم الفيلا",
      "nearest" : "اقرب معلم",

      "cash_on" : "الدفع عند الاستلام",
      "cash_online" : "الدفع الالكتروني",
      "order_send" : "تم أرسال طلبك بنجاح",
      "location" : "معلومات الموقع",
      "theprice" : "السعر",
      "thedate" : "الوقت والزمن",
      "size" : "الحجم",
      "color" : "اللون",

      "show_more" : "اظهر المزيد",
      "show_less" : "اظهر القليل",
      "offer" : "عرض",
      "available_size" : "الاحجام المتوفره",
      "available_color" : "الالوان المتوفره",
      "description" : "الوصف",

      "skip" : "تخطي",
      "start" : "ابدا",
      "search" : "بحث",
      "search_info" : "يمكنك البحث عن المنتج الذي تريده",
      "cart_info" : "يوجد سله يمكنك وضع المنتجات فيها",
      "browse" : "تصفح",
      "browse_info" : "يمكنك تصفح المتجر والبحث عن المنتج المعين",
      "cancel_dialog_delete" : "هل تريد الغاء الطلب",
      "shope_now" : "تسوق الآن",

      "markets" : "ماركات",
      "newest" : "وصل مؤخرا",
      "myoffer" : "عروض خاصة",
      "new" : "جديد",
      "recommend" : "كل المنتجات",
      "contact_us" : "راسلنا",
      "call_us" : "اتصل بنا",
      "tirm" : "الشروط والاحكام",

      "payment_online" : "الدفع الالكتروني",
      "payment_online_info" : "الدفع من خلال فيزا او بطاقه بنكيه",
      "tabby" : "4 دفعات - بدون فوائد",
      "tabby_info" : "4 دفعات بدون فوائد",
      "tamara" : "تسوق الان، ادفع لاحقا",
      "tamara_info" : "3 دفعات بدون فوائد",
      "cach" : "الدفع عند الاستلام",
      "cach_info" : "يمكنك الدفع عند الاستلام رسوم اضافيه 10.00 درهم",

      "payment_successfull" : "تم الدفع بنجاح",
      "payment_failed" : "عملية الدفع فشلت",
      "payment_canceled" : "تم إلغاء الدفع",
      "checkout" : "الدفع",

      "with_tabby" : "أو تقسيمها إلى 4 دفعات",
      "with_tabby_2" : "بدون فوائد مع تابي",
      "with_tamara" : "أو تقسيمها إلى 3 دفعات",
      "with_tamara_2" : "بدون فوائد مع تمارا",
      "off" : "تخفيض",
      "size_color" : "الرجاء تحديد الحجم واللون",

      "current_password" : "ادخل كلمه المرور الحاليه",
      "new_password" : "ادخل كلمه المرور الجديده",
    },
    "en" : {
      "choose_lang" : "Choose Language",

      "login_invalid" : "Invalid Email or Password",
      "login_invalid_btn" : "ok",
      "login_success" : "Login Successfully",
      "login_username" : "Full Name",
      "email" : "Email",
      "login_password" : "Password",
      "phone" : "Phone",
      "login_error" : "This field requierd",
      "login_btn" : "Login",
      "login_first" : "You have to login first",
      "or" : "Or",
      "have_no_account" : "Have No Account ?",
      "have_account" : "Have an account ?",
      "register_btn" : "Register",
      "save_successfully" : "Save Successfully",
      "password_incorrect" : "Password must be at least 6 characters",
      "logout" : "Logout",

      "home_title" : "Home",
      "home_profile" : "Profile",
      "home_order" : "Orders",
      "home_logout" : "Log out",
      "home_settings" : "Settings",
      "home_logout_mes" : "Log out Successfully",
      "home_welcome" : "Welcome",
      "home_no_result" : "Oops! No orders",
      "home_favorite" : "Favorite",
      "home_cart" : "Cart",
      "home_thedialog_title" : "Warning",
      "home_thedialog_body" : "Have no account,create new one",
      "home_thedialog_cancel" : "Cancel",
      "home_thedialog_ok" : "Ok",
      "home_search" : "Search here",
      "home_no_result" : "Oops! It's Empty",
      "home_favorite_empty" : "Favorite is empty",
      "all" : "All",

      "profile_change_password_btn" : "Change Password",
      "profile_btn_edit" : "Edit",
      "profile_btn_delete" : "Delete",
      "profile_phone" : "Phone",
      "profile_delete_btn" : "Delete Account",
      "profile_dialog_title" : "Warning",
      "profile_dialog_message" : "You sure you want delete",
      "profile_dialog_delete" : "You want delete all items",
      "profile_dialog_ok" : "Yes",
      "profile_dialog_no" : "No",
      "profile_delete" : "Delete Successfully",
      "inter_name" : "Inter your name",
      "inter_email" : "Inter your email",
      "inter_phone" : "Inter your phone",
      "inter_password" : "Inter your password",
      "profile_edit" : "Updated Successfully",
      "change_lang" : "Change Language",
      "exit" : "Exit",
      "menu_alert_message" : "You sure you want exit",
      "menu_alert_btn_cancel" : "Cancel",
      "menu_alert_btn_ok" : "Ok",
      "category" : "Categories",
      "package" : "All",
      "empty" : "Empty",
      "services" : "Services",
      "next" : "Next",
      "order_now" : "Order Now",
      "choose_category" : "Please choose some category to see Packages",
      "date_and_time" : "Date & Time",
      "select_date_and_time" : "Select Date & Time",
      "select_payment" : "Select Payment Method",
      "please_select_payment" : "Please select payment",
      "please_select_all" : "Please set Date & Time and select Payment method",
      "send" : "Send Successfully",
      "order_detail" : "Order Detailes",
      "category" : "Category",
      "payment" : "Payment",
      "status" : "Status",
      "detailer" : "Detailer",
      "payment_successful" : "Payment Successfully",
      "more" : "View All",
      "price" : "AED",
      "item_exict" : "Item Already Exists",
      "item_added" : "Item Added to Cart",
      "btn_add" : "Add To Cart",
      "cart_empty" : "Cart is Empty",
      "total" : "Total",
      "sub_total" : "Sub Total",
      "shipping" : "Shipping",
      "order_now" : "Order Now",
      "next" : "Next",
      "order_empty" : "Oops! No Orders",
      "order_details" : "Order Details",
      "order_cancel" : "Order Cancel",
      "order_alert_cancel_body" : "You sure you want cancel order",
      "order_alert_cancel_no" : "No",
      "order_alert_cancel_yes" : "Yes",
      "quantity" : "Quantity",

      "step_one" : "Basic Information",
      "step_two" : "Location Information",
      "step_three" : "Payment Method",
      "step_next" : "Next",
      "step_back" : "Back",
      "continue_order" : "Please enter your data to complete order",

      "street" : "Street name",
      "building" : "Building name/no",
      "floor" : "Floor,apartment, or villa no",
      "nearest" : "Nearest landmark",

      "cash_on" : "Cash on Delivery",
      "cash_online" : "Online Payment",
      "order_send" : "Order send Successfully",
      "location" : "Location Information",
      "theprice" : "Price",
      "thedate" : "Date & Time",
      "size" : "Size",
      "color" : "Color",

      "show_more" : "Show More",
      "show_less" : "Show Less",
      "offer" : "OFFER",
      "available_size" : "Available Size",
      "available_color" : "Available Color",
      "description" : "Description",

      "skip" : "Skip",
      "start" : "Start",
      "search" : "Search",
      "search_info" : "Find the product you want",
      "cart_info" : "There is a basket in which you can put products",
      "browse" : "Browse",
      "browse_info" : "You can browse the store and search for the particular product",
      "cancel_dialog_delete" : "You want Cancel the Order",
      "shope_now" : "Shopping Now",

      "markets" : "Markets",
      "newest" : "New Arrivals",
      "myoffer" : "Offer Items",
      "new" : "New",
      "recommend" : "All Products",
      "contact_us" : "Contact Us",
      "call_us" : "Call Us",
      "tirm" : "Conditions & Terms",

      "payment_online" : "Online Payment",
      "payment_online_info" : "Payment via Visa or bank card",
      "tabby" : "4 payments - interest free",
      "tabby_info" : "4 interest free payments",
      "tamara" : "Shop now, pay later",
      "tamara_info" : "3 interest free payments",
      "cach" : "Cash on Delivery",
      "cach_info" : "You can pay upon receipt, an additional fee of 10.00 AED",

      "payment_successfull" : "Payment Successfull",
      "payment_failed" : "Payment Failed",
      "payment_canceled" : "Payment Canceled",
      "checkout" : "Checkout",

      "with_tabby" : "or Split it into 4 payments of",
      "with_tabby_2" : "interest-free with Tabby",

      "with_tamara" : "or Split it into 3 payments of",
      "with_tamara_2" : "interest-free with Tamara",
      "off" : "OFF",
      "size_color" : "Please Choose Size & Color",

      "current_password" : "Enter current password",
      "new_password" : "Enter new password",
    }
  };

}