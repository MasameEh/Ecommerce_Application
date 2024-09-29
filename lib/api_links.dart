class AppLinks{

   static const String server = "http://192.168.1.5/ecommerce";

   /* =============================== Auth =============================== */

   static const String signup = "$server/auth/signup.php";
   static const String login = "$server/auth/login.php";

   /* =============================== ForgotPassword =============================== */

   static const String resetpass             = "$server/forgotpass/resetpass.php";
   static const String checkemail            = "$server/forgotpass/checkemail.php";
   static const String verifycodeforgotpass  = "$server/forgotpass/verifycode.php";

}