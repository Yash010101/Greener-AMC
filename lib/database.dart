import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dbestech/citizen.dart';
import 'package:dbestech/amc_team_signup.dart';
import 'package:dbestech/organization_signup.dart';

class DatabaseMethods {
  // Add user data to database
  Future addUserInfoToDBUser(String userId, Map<String, dynamic> userInfoMap) {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfoMap);
  }

  Future<DocumentSnapshot> getUserFromDBUser(String userId) async {
    return FirebaseFirestore.instance.collection('users').doc(userId).get();
  }

  // Add AMC Plantation Team member data to database
  Future addUserInfoToDBAMC(String userId, Map<String, dynamic> userInfoMap) {
    return FirebaseFirestore.instance
        .collection("team")
        .doc(userId)
        .set(userInfoMap);
  }

  Future<DocumentSnapshot> getUserFromDBAMC(String userId) async {
    return FirebaseFirestore.instance.collection('team').doc(userId).get();
  }

  // Add Organization data to database
  Future addUserInfoToDBORG(String userId, Map<String, dynamic> userInfoMap) {
    return FirebaseFirestore.instance
        .collection("organization")
        .doc(userId)
        .set(userInfoMap);
  }

  Future<DocumentSnapshot> getUserFromDBORG(String userId) async {
    return FirebaseFirestore.instance
        .collection('organization')
        .doc(userId)
        .get();
  }

  Future addUserInfoToDBSponsor(
      String userId, Map<String, dynamic> userInfoMap) {
    return FirebaseFirestore.instance
        .collection("sponsor")
        .doc(userId)
        .set(userInfoMap);
  }

  Future<DocumentSnapshot> getUserFromDBSponsor(String userId) async {
    return FirebaseFirestore.instance.collection('sponsor').doc(userId).get();
  }
}
