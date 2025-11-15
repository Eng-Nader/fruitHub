import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServerices implements DataBaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(
      {required String collectionName,
      required Map<String, dynamic> data}) async {
    await _firestore.collection(collectionName).add(data);
  }
}

abstract class DataBaseServices {
  Future<void> addUser(
      {required String collectionName, required Map<String, dynamic> data});
}
