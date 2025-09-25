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
