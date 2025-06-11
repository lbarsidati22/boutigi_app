abstract class DataBaseServices {
  Future<void> addData({
    required String bath,
    required Map<String, dynamic> data,
    String? documentId,
  });
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
}
