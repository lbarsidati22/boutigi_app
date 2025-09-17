// import 'package:boutigi_app/core/services/data_base_services.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FireStoreServices
//     implements DataBaseServices {
//   FirebaseFirestore firestore =
//       FirebaseFirestore.instance;
//   @override
//   Future<void> addData({
//     required String bath,
//     required Map<String, dynamic> data,
//     String? documentId,
//   }) async {
//     if (documentId != null) {
//       await firestore
//           .collection(bath)
//           .doc(documentId)
//           .set(data);
//     } else {
//       await firestore.collection(bath).add(data);
//     }
//   }

//   @override
//   Future<Map<String, dynamic>> getData({
//     required String path,
//     required String documentId,
//   }) async {
//     var data = await firestore
//         .collection(path)
//         .doc(documentId)
//         .get();
//     return data.data() as Map<String, dynamic>;
//   }
// }

import 'package:boutigi_app/core/services/data_base_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices
    implements DataBaseServices {
  final SupabaseClient supabase =
      Supabase.instance.client;

  @override
  Future<void> addData({
    required String bath,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      // استخدام upsert لإضافة أو تحديث البيانات
      await supabase.from(bath).upsert({
        'id': documentId,
        ...data,
      });
    } else {
      await supabase.from(bath).insert(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    final response = await supabase
        .from(path)
        .select()
        .eq('id', documentId)
        .single();
    return response;
  }
}
