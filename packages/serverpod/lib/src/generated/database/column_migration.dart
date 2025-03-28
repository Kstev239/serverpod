/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class ColumnMigration extends _i1.SerializableEntity {
  ColumnMigration({
    required this.columnName,
    required this.addNullable,
    required this.removeNullable,
    required this.changeDefault,
    this.newDefault,
  });

  factory ColumnMigration.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ColumnMigration(
      columnName: serializationManager
          .deserialize<String>(jsonSerialization['columnName']),
      addNullable: serializationManager
          .deserialize<bool>(jsonSerialization['addNullable']),
      removeNullable: serializationManager
          .deserialize<bool>(jsonSerialization['removeNullable']),
      changeDefault: serializationManager
          .deserialize<bool>(jsonSerialization['changeDefault']),
      newDefault: serializationManager
          .deserialize<String?>(jsonSerialization['newDefault']),
    );
  }

  String columnName;

  bool addNullable;

  bool removeNullable;

  bool changeDefault;

  String? newDefault;

  @override
  Map<String, dynamic> toJson() {
    return {
      'columnName': columnName,
      'addNullable': addNullable,
      'removeNullable': removeNullable,
      'changeDefault': changeDefault,
      'newDefault': newDefault,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'columnName': columnName,
      'addNullable': addNullable,
      'removeNullable': removeNullable,
      'changeDefault': changeDefault,
      'newDefault': newDefault,
    };
  }
}
