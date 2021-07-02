import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class DisplayMessage {
  static const String canceledByUser = "Cancelled by user";
  static const String serverError = "Server error";
  static const String notAllowed = "Not Allowed to login";
  static const String invalidEmailPasswordCombination =
      "Email or Password is wrong";
  static const String userNotFound = "User with given email id is not found";
  static const String invalidEmail = "Email id is wrong";
  static const String invalidData = "Invalid data";
  static const String invalidEmailOrPasswordValue =
      "Email id is wrong or Password is invalid";
  static const String notAnAdmin = "You are not authorised to login";

  static const String submitPhoneNumberForOTP = "Phone number submitted...";
  static const String wrongPhoneNumberMessage = "Invalid phone number...";
  static const String invalidCredential = "Invalid credentials";
  static const String accountAlreadyExist =
      "Account with given credential already exist";
  static const String waitingForOTP = "Waiting for otp";
  static const String wrongOTP = "Wrong otp";
  static const String invalidPhoneNumber = "Wrong phone number";
  static const String submitErrorPhoneNumberForOTP =
      "Phone number cant be submitted";
  static const String unExpectedError = "Unexpected error!";
  static const String permissionDenied = "Permission denied!";
  static const String notFound = "Not found!";
  static const String inValidPin = "Invalid pin!";
  static const String imageNotUploaded = "Error while loading image!";
  static const String unidentifiedLocation = "Unable to identify location!";
  static const String paymentFailed = "Payment failed!";
  static const String paymentSuccess = "Payment success!";

  static void showErrorMessage(BuildContext context, String msg) {
    FlushbarHelper.createError(message: msg).show(context);
  }

  static void showSuccessMessage(BuildContext context, String msg) {
    FlushbarHelper.createSuccess(message: msg).show(context);
  }
}
