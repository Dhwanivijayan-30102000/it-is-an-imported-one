import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{

  Future<void> addData(blogData) async{

    Firestore.instance.collection("Disasters").add(blogData).catchError((e{
      print(e);
    });
  }

  getData() async{
    return await Firestore.instance.collection("Disasters").snapshots();
  }
}