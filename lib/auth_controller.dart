//import 'dart:html';
import 'package:dbestech/database.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbestech/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'citizen_home.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAll(() => LoginPage());
    } else {
      //Get.offAll(() => WelcomePage());
      // -> MEET: Because of welcome page is incomplete i redirected to LoginPage()
      Get.offAll(() => LoginPage());
    }
  }

  Future<void> registerCitizen(String email, password, String fname,
      String lname, String mob, String dob) async {
    try {
      if (EmailValidator.validate(email)) {
        UserCredential userCredential = await auth
            .createUserWithEmailAndPassword(email: email, password: password);
        Map<String, dynamic> userInfoMap = {
          "email": email,
          "fname": fname,
          "lname": lname,
          "mobile": mob,
          "birthDate": dob,
        };
        DatabaseMethods()
            .addUserInfoToDBUser(auth.currentUser!.uid, userInfoMap);
      } else {
        Fluttertoast.showToast(
            msg: "Invalid Email please try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Get.snackbar("About User", "User massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }

  Future<void> registerTeamMember(String email, password, String fname,
      String lname, String mob, String teamID, String loc) async {
    try {
      if (EmailValidator.validate(email)) {
        UserCredential userCredential = await auth
            .createUserWithEmailAndPassword(email: email, password: password);
        Map<String, dynamic> userInfoMap = {
          "email": email,
          "fname": fname,
          "lname": lname,
          "mobile": mob,
          "TeamId": teamID,
          "Location": loc
        };
        DatabaseMethods()
            .addUserInfoToDBAMC(auth.currentUser!.uid, userInfoMap);
      } else {
        Fluttertoast.showToast(
            msg: "Invalid Email please try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Get.snackbar("About User", "User massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }

  Future<void> registerORG(String email, password, String name, String headName,
      String mob, String yearOfEstablishment) async {
    try {
      if (EmailValidator.validate(email)) {
        UserCredential userCredential = await auth
            .createUserWithEmailAndPassword(email: email, password: password);
        Map<String, dynamic> userInfoMap = {
          "email": email,
          "nameOfOrg": name,
          "headName": headName,
          "mobile": mob,
          "yearOfEstablishment": yearOfEstablishment,
        };
        DatabaseMethods()
            .addUserInfoToDBORG(auth.currentUser!.uid, userInfoMap);
      } else {
        Fluttertoast.showToast(
            msg: "Invalid Email please try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Get.snackbar("About User", "User massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "Login massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Login failed. Check your Credentials.",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
