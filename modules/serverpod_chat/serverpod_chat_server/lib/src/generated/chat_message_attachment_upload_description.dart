/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class ChatMessageAttachmentUploadDescription extends SerializableEntity {
  @override
  String get className =>
      'serverpod_chat_server.ChatMessageAttachmentUploadDescription';

  late String filePath;
  late String uploadDescription;

  ChatMessageAttachmentUploadDescription({
    required this.filePath,
    required this.uploadDescription,
  });

  ChatMessageAttachmentUploadDescription.fromSerialization(
      Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    filePath = _data['filePath']!;
    uploadDescription = _data['uploadDescription']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'filePath': filePath,
      'uploadDescription': uploadDescription,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'filePath': filePath,
      'uploadDescription': uploadDescription,
    });
  }
}
