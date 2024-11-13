import 'package:fluttertoast/fluttertoast.dart';
import 'package:testapp/app/utils/app_colors.dart';

class UserMessage {
  ///When user Create data or and kind of change , show will toast Message
  static successMessage({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.greenColor,
        textColor: AppColors.whiteColor,
        fontSize: 16.0);
  }

  ///When user Failed any Changed , show will toast Message
  static errorMessage({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.redColor,
        textColor: AppColors.whiteColor,
        fontSize: 16.0);
  }
}
