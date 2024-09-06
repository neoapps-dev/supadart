// ignore_for_file: non_constant_identifier_names, camel_case_types, file_namesimport, file_names, unnecessary_null_comparison
import 'package:supabase/supabase.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

// INTL is an official package from Dart and is used for parsing dates
// flutter pub add intl or dart pub add intl
// THIS FILE IS AUTO GENERATED. MODIFY WITH CAUTION
extension SupadartClient on SupabaseClient {
  SupabaseQueryBuilder get string_types => from('string_types');
  SupabaseQueryBuilder get boolean_bit_types => from('boolean_bit_types');
  SupabaseQueryBuilder get combined_types_view => from('combined_types_view');
  SupabaseQueryBuilder get misc_types => from('misc_types');
  SupabaseQueryBuilder get books => from('books');
  SupabaseQueryBuilder get geometric_types => from('geometric_types');
  SupabaseQueryBuilder get enum_types => from('enum_types');
  SupabaseQueryBuilder get json_types => from('json_types');
  SupabaseQueryBuilder get binary_xml_types => from('binary_xml_types');
  SupabaseQueryBuilder get network_types => from('network_types');
  SupabaseQueryBuilder get numeric_types => from('numeric_types');
  SupabaseQueryBuilder get datetime_types => from('datetime_types');
}

abstract class SupadartClass<T> {
  static Map<String, dynamic> insert(Map<String, dynamic> data) {
    throw UnimplementedError();
  }

  static Map<String, dynamic> update(Map<String, dynamic> data) {
    throw UnimplementedError();
  }

  factory SupadartClass.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  static converter(List<Map<String, dynamic>> data) {
    throw UnimplementedError();
  }

  static converterSingle(Map<String, dynamic> data) {
    throw UnimplementedError();
  }
}

enum MOOD { happy, sad, neutral, excited, angry }

class StringTypes implements SupadartClass<StringTypes> {
  final String id;
  final String? colUuid;
  final List<String>? colUuidArray;
  final String? colCharacter;
  final List<String>? colCharacterArray;
  final String? colCharactervarying;
  final List<String>? colCharactervaryingArray;
  final String? colText;
  final List<String>? colTextArray;

  const StringTypes({
    required this.id,
    this.colUuid,
    this.colUuidArray,
    this.colCharacter,
    this.colCharacterArray,
    this.colCharactervarying,
    this.colCharactervaryingArray,
    this.colText,
    this.colTextArray,
  });

  static String get table_name => 'string_types';
  static String get c_id => 'id';
  static String get c_colUuid => 'col_uuid';
  static String get c_colUuidArray => 'col_uuid_array';
  static String get c_colCharacter => 'col_character';
  static String get c_colCharacterArray => 'col_character_array';
  static String get c_colCharactervarying => 'col_charactervarying';
  static String get c_colCharactervaryingArray => 'col_charactervarying_array';
  static String get c_colText => 'col_text';
  static String get c_colTextArray => 'col_text_array';

  static List<StringTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(StringTypes.fromJson).toList();
  }

  static StringTypes converterSingle(Map<String, dynamic> data) {
    return StringTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    String? colUuid,
    List<String>? colUuidArray,
    String? colCharacter,
    List<String>? colCharacterArray,
    String? colCharactervarying,
    List<String>? colCharactervaryingArray,
    String? colText,
    List<String>? colTextArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colUuid != null) 'col_uuid': colUuid,
      if (colUuidArray != null)
        'col_uuid_array': colUuidArray.map((e) => e).toList(),
      if (colCharacter != null) 'col_character': colCharacter,
      if (colCharacterArray != null)
        'col_character_array': colCharacterArray.map((e) => e).toList(),
      if (colCharactervarying != null)
        'col_charactervarying': colCharactervarying,
      if (colCharactervaryingArray != null)
        'col_charactervarying_array':
            colCharactervaryingArray.map((e) => e).toList(),
      if (colText != null) 'col_text': colText,
      if (colTextArray != null)
        'col_text_array': colTextArray.map((e) => e).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    String? colUuid,
    List<String>? colUuidArray,
    String? colCharacter,
    List<String>? colCharacterArray,
    String? colCharactervarying,
    List<String>? colCharactervaryingArray,
    String? colText,
    List<String>? colTextArray,
  }) {
    return _generateMap(
      id: id,
      colUuid: colUuid,
      colUuidArray: colUuidArray,
      colCharacter: colCharacter,
      colCharacterArray: colCharacterArray,
      colCharactervarying: colCharactervarying,
      colCharactervaryingArray: colCharactervaryingArray,
      colText: colText,
      colTextArray: colTextArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    String? colUuid,
    List<String>? colUuidArray,
    String? colCharacter,
    List<String>? colCharacterArray,
    String? colCharactervarying,
    List<String>? colCharactervaryingArray,
    String? colText,
    List<String>? colTextArray,
  }) {
    return _generateMap(
      id: id,
      colUuid: colUuid,
      colUuidArray: colUuidArray,
      colCharacter: colCharacter,
      colCharacterArray: colCharacterArray,
      colCharactervarying: colCharactervarying,
      colCharactervaryingArray: colCharactervaryingArray,
      colText: colText,
      colTextArray: colTextArray,
    );
  }

  factory StringTypes.fromJson(Map<String, dynamic> jsonn) {
    return StringTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colUuid: jsonn['col_uuid'] != null ? jsonn['col_uuid'].toString() : '',
      colUuidArray: jsonn['col_uuid_array'] != null
          ? (jsonn['col_uuid_array'] as List<dynamic>)
              .map((v) => v.toString())
              .toList()
          : <String>[],
      colCharacter: jsonn['col_character'] != null
          ? jsonn['col_character'].toString()
          : '',
      colCharacterArray: jsonn['col_character_array'] != null
          ? (jsonn['col_character_array'] as List<dynamic>)
              .map((v) => v.toString())
              .toList()
          : <String>[],
      colCharactervarying: jsonn['col_charactervarying'] != null
          ? jsonn['col_charactervarying'].toString()
          : '',
      colCharactervaryingArray: jsonn['col_charactervarying_array'] != null
          ? (jsonn['col_charactervarying_array'] as List<dynamic>)
              .map((v) => v.toString())
              .toList()
          : <String>[],
      colText: jsonn['col_text'] != null ? jsonn['col_text'].toString() : '',
      colTextArray: jsonn['col_text_array'] != null
          ? (jsonn['col_text_array'] as List<dynamic>)
              .map((v) => v.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colUuid: colUuid,
      colUuidArray: colUuidArray,
      colCharacter: colCharacter,
      colCharacterArray: colCharacterArray,
      colCharactervarying: colCharactervarying,
      colCharactervaryingArray: colCharactervaryingArray,
      colText: colText,
      colTextArray: colTextArray,
    );
  }
}

class BooleanBitTypes implements SupadartClass<BooleanBitTypes> {
  final String id;
  final bool? colBoolean;
  final List<bool>? colBooleanArray;
  final String? colBit;
  final List<String>? colBitArray;
  final String? colBitvarying;
  final List<String>? colBitvaryingArray;

  const BooleanBitTypes({
    required this.id,
    this.colBoolean,
    this.colBooleanArray,
    this.colBit,
    this.colBitArray,
    this.colBitvarying,
    this.colBitvaryingArray,
  });

  static String get table_name => 'boolean_bit_types';
  static String get c_id => 'id';
  static String get c_colBoolean => 'col_boolean';
  static String get c_colBooleanArray => 'col_boolean_array';
  static String get c_colBit => 'col_bit';
  static String get c_colBitArray => 'col_bit_array';
  static String get c_colBitvarying => 'col_bitvarying';
  static String get c_colBitvaryingArray => 'col_bitvarying_array';

  static List<BooleanBitTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(BooleanBitTypes.fromJson).toList();
  }

  static BooleanBitTypes converterSingle(Map<String, dynamic> data) {
    return BooleanBitTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    bool? colBoolean,
    List<bool>? colBooleanArray,
    String? colBit,
    List<String>? colBitArray,
    String? colBitvarying,
    List<String>? colBitvaryingArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colBoolean != null) 'col_boolean': colBoolean,
      if (colBooleanArray != null)
        'col_boolean_array': colBooleanArray.map((e) => e).toList(),
      if (colBit != null) 'col_bit': colBit.toString(),
      if (colBitArray != null)
        'col_bit_array': colBitArray.map((e) => e.toString()).toList(),
      if (colBitvarying != null) 'col_bitvarying': colBitvarying.toString(),
      if (colBitvaryingArray != null)
        'col_bitvarying_array':
            colBitvaryingArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    bool? colBoolean,
    List<bool>? colBooleanArray,
    String? colBit,
    List<String>? colBitArray,
    String? colBitvarying,
    List<String>? colBitvaryingArray,
  }) {
    return _generateMap(
      id: id,
      colBoolean: colBoolean,
      colBooleanArray: colBooleanArray,
      colBit: colBit,
      colBitArray: colBitArray,
      colBitvarying: colBitvarying,
      colBitvaryingArray: colBitvaryingArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    bool? colBoolean,
    List<bool>? colBooleanArray,
    String? colBit,
    List<String>? colBitArray,
    String? colBitvarying,
    List<String>? colBitvaryingArray,
  }) {
    return _generateMap(
      id: id,
      colBoolean: colBoolean,
      colBooleanArray: colBooleanArray,
      colBit: colBit,
      colBitArray: colBitArray,
      colBitvarying: colBitvarying,
      colBitvaryingArray: colBitvaryingArray,
    );
  }

  factory BooleanBitTypes.fromJson(Map<String, dynamic> jsonn) {
    return BooleanBitTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colBoolean:
          jsonn['col_boolean'] != null ? jsonn['col_boolean'] as bool : false,
      colBooleanArray: jsonn['col_boolean_array'] != null
          ? (jsonn['col_boolean_array'] as List<dynamic>)
              .map((v) => v as bool)
              .toList()
          : <bool>[],
      colBit: jsonn['col_bit'] != null ? jsonn['col_bit'].toString() : '',
      colBitArray: jsonn['col_bit_array'] != null
          ? (jsonn['col_bit_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colBitvarying: jsonn['col_bitvarying'] != null
          ? jsonn['col_bitvarying'].toString()
          : '',
      colBitvaryingArray: jsonn['col_bitvarying_array'] != null
          ? (jsonn['col_bitvarying_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colBoolean: colBoolean,
      colBooleanArray: colBooleanArray,
      colBit: colBit,
      colBitArray: colBitArray,
      colBitvarying: colBitvarying,
      colBitvaryingArray: colBitvaryingArray,
    );
  }
}

class CombinedTypesView implements SupadartClass<CombinedTypesView> {
  final String? numericId;
  final int? colInteger;
  final double? colDouble;
  final String? stringId;
  final String? colText;
  final String? colUuid;

  const CombinedTypesView({
    this.numericId,
    this.colInteger,
    this.colDouble,
    this.stringId,
    this.colText,
    this.colUuid,
  });

  static String get table_name => 'combined_types_view';
  static String get c_numericId => 'numeric_id';
  static String get c_colInteger => 'col_integer';
  static String get c_colDouble => 'col_double';
  static String get c_stringId => 'string_id';
  static String get c_colText => 'col_text';
  static String get c_colUuid => 'col_uuid';

  static List<CombinedTypesView> converter(List<Map<String, dynamic>> data) {
    return data.map(CombinedTypesView.fromJson).toList();
  }

  static CombinedTypesView converterSingle(Map<String, dynamic> data) {
    return CombinedTypesView.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? numericId,
    int? colInteger,
    double? colDouble,
    String? stringId,
    String? colText,
    String? colUuid,
  }) {
    return {
      if (numericId != null) 'numeric_id': numericId,
      if (colInteger != null) 'col_integer': colInteger,
      if (colDouble != null) 'col_double': colDouble.toString(),
      if (stringId != null) 'string_id': stringId,
      if (colText != null) 'col_text': colText,
      if (colUuid != null) 'col_uuid': colUuid,
    };
  }

  static Map<String, dynamic> insert({
    String? numericId,
    int? colInteger,
    double? colDouble,
    String? stringId,
    String? colText,
    String? colUuid,
  }) {
    return _generateMap(
      numericId: numericId,
      colInteger: colInteger,
      colDouble: colDouble,
      stringId: stringId,
      colText: colText,
      colUuid: colUuid,
    );
  }

  static Map<String, dynamic> update({
    String? numericId,
    int? colInteger,
    double? colDouble,
    String? stringId,
    String? colText,
    String? colUuid,
  }) {
    return _generateMap(
      numericId: numericId,
      colInteger: colInteger,
      colDouble: colDouble,
      stringId: stringId,
      colText: colText,
      colUuid: colUuid,
    );
  }

  factory CombinedTypesView.fromJson(Map<String, dynamic> jsonn) {
    return CombinedTypesView(
      numericId:
          jsonn['numeric_id'] != null ? jsonn['numeric_id'].toString() : '',
      colInteger: jsonn['col_integer'] != null
          ? int.parse(jsonn['col_integer'].toString())
          : 0,
      colDouble: jsonn['col_double'] != null
          ? double.parse(jsonn['col_double'].toString())
          : 0.0,
      stringId: jsonn['string_id'] != null ? jsonn['string_id'].toString() : '',
      colText: jsonn['col_text'] != null ? jsonn['col_text'].toString() : '',
      colUuid: jsonn['col_uuid'] != null ? jsonn['col_uuid'].toString() : '',
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      numericId: numericId,
      colInteger: colInteger,
      colDouble: colDouble,
      stringId: stringId,
      colText: colText,
      colUuid: colUuid,
    );
  }
}

class MiscTypes implements SupadartClass<MiscTypes> {
  final String id;
  final String? colMoney;
  final List<String>? colMoneyArray;
  final String? colPgLsn;
  final List<String>? colPgLsnArray;
  final String? colPgSnapshot;
  final List<String>? colPgSnapshotArray;
  final String? colTsquery;
  final List<String>? colTsqueryArray;
  final String? colTsvector;
  final List<String>? colTsvectorArray;
  final String? colTxidSnapshot;
  final List<String>? colTxidSnapshotArray;

  const MiscTypes({
    required this.id,
    this.colMoney,
    this.colMoneyArray,
    this.colPgLsn,
    this.colPgLsnArray,
    this.colPgSnapshot,
    this.colPgSnapshotArray,
    this.colTsquery,
    this.colTsqueryArray,
    this.colTsvector,
    this.colTsvectorArray,
    this.colTxidSnapshot,
    this.colTxidSnapshotArray,
  });

  static String get table_name => 'misc_types';
  static String get c_id => 'id';
  static String get c_colMoney => 'col_money';
  static String get c_colMoneyArray => 'col_money_array';
  static String get c_colPgLsn => 'col_pg_lsn';
  static String get c_colPgLsnArray => 'col_pg_lsn_array';
  static String get c_colPgSnapshot => 'col_pg_snapshot';
  static String get c_colPgSnapshotArray => 'col_pg_snapshot_array';
  static String get c_colTsquery => 'col_tsquery';
  static String get c_colTsqueryArray => 'col_tsquery_array';
  static String get c_colTsvector => 'col_tsvector';
  static String get c_colTsvectorArray => 'col_tsvector_array';
  static String get c_colTxidSnapshot => 'col_txid_snapshot';
  static String get c_colTxidSnapshotArray => 'col_txid_snapshot_array';

  static List<MiscTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(MiscTypes.fromJson).toList();
  }

  static MiscTypes converterSingle(Map<String, dynamic> data) {
    return MiscTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    String? colMoney,
    List<String>? colMoneyArray,
    String? colPgLsn,
    List<String>? colPgLsnArray,
    String? colPgSnapshot,
    List<String>? colPgSnapshotArray,
    String? colTsquery,
    List<String>? colTsqueryArray,
    String? colTsvector,
    List<String>? colTsvectorArray,
    String? colTxidSnapshot,
    List<String>? colTxidSnapshotArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colMoney != null) 'col_money': colMoney.toString(),
      if (colMoneyArray != null)
        'col_money_array': colMoneyArray.map((e) => e.toString()).toList(),
      if (colPgLsn != null) 'col_pg_lsn': colPgLsn.toString(),
      if (colPgLsnArray != null)
        'col_pg_lsn_array': colPgLsnArray.map((e) => e.toString()).toList(),
      if (colPgSnapshot != null) 'col_pg_snapshot': colPgSnapshot.toString(),
      if (colPgSnapshotArray != null)
        'col_pg_snapshot_array':
            colPgSnapshotArray.map((e) => e.toString()).toList(),
      if (colTsquery != null) 'col_tsquery': colTsquery.toString(),
      if (colTsqueryArray != null)
        'col_tsquery_array': colTsqueryArray.map((e) => e.toString()).toList(),
      if (colTsvector != null) 'col_tsvector': colTsvector.toString(),
      if (colTsvectorArray != null)
        'col_tsvector_array':
            colTsvectorArray.map((e) => e.toString()).toList(),
      if (colTxidSnapshot != null)
        'col_txid_snapshot': colTxidSnapshot.toString(),
      if (colTxidSnapshotArray != null)
        'col_txid_snapshot_array':
            colTxidSnapshotArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    String? colMoney,
    List<String>? colMoneyArray,
    String? colPgLsn,
    List<String>? colPgLsnArray,
    String? colPgSnapshot,
    List<String>? colPgSnapshotArray,
    String? colTsquery,
    List<String>? colTsqueryArray,
    String? colTsvector,
    List<String>? colTsvectorArray,
    String? colTxidSnapshot,
    List<String>? colTxidSnapshotArray,
  }) {
    return _generateMap(
      id: id,
      colMoney: colMoney,
      colMoneyArray: colMoneyArray,
      colPgLsn: colPgLsn,
      colPgLsnArray: colPgLsnArray,
      colPgSnapshot: colPgSnapshot,
      colPgSnapshotArray: colPgSnapshotArray,
      colTsquery: colTsquery,
      colTsqueryArray: colTsqueryArray,
      colTsvector: colTsvector,
      colTsvectorArray: colTsvectorArray,
      colTxidSnapshot: colTxidSnapshot,
      colTxidSnapshotArray: colTxidSnapshotArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    String? colMoney,
    List<String>? colMoneyArray,
    String? colPgLsn,
    List<String>? colPgLsnArray,
    String? colPgSnapshot,
    List<String>? colPgSnapshotArray,
    String? colTsquery,
    List<String>? colTsqueryArray,
    String? colTsvector,
    List<String>? colTsvectorArray,
    String? colTxidSnapshot,
    List<String>? colTxidSnapshotArray,
  }) {
    return _generateMap(
      id: id,
      colMoney: colMoney,
      colMoneyArray: colMoneyArray,
      colPgLsn: colPgLsn,
      colPgLsnArray: colPgLsnArray,
      colPgSnapshot: colPgSnapshot,
      colPgSnapshotArray: colPgSnapshotArray,
      colTsquery: colTsquery,
      colTsqueryArray: colTsqueryArray,
      colTsvector: colTsvector,
      colTsvectorArray: colTsvectorArray,
      colTxidSnapshot: colTxidSnapshot,
      colTxidSnapshotArray: colTxidSnapshotArray,
    );
  }

  factory MiscTypes.fromJson(Map<String, dynamic> jsonn) {
    return MiscTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colMoney: jsonn['col_money'] != null ? jsonn['col_money'].toString() : '',
      colMoneyArray: jsonn['col_money_array'] != null
          ? (jsonn['col_money_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colPgLsn:
          jsonn['col_pg_lsn'] != null ? jsonn['col_pg_lsn'].toString() : '',
      colPgLsnArray: jsonn['col_pg_lsn_array'] != null
          ? (jsonn['col_pg_lsn_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colPgSnapshot: jsonn['col_pg_snapshot'] != null
          ? jsonn['col_pg_snapshot'].toString()
          : '',
      colPgSnapshotArray: jsonn['col_pg_snapshot_array'] != null
          ? (jsonn['col_pg_snapshot_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colTsquery:
          jsonn['col_tsquery'] != null ? jsonn['col_tsquery'].toString() : '',
      colTsqueryArray: jsonn['col_tsquery_array'] != null
          ? (jsonn['col_tsquery_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colTsvector:
          jsonn['col_tsvector'] != null ? jsonn['col_tsvector'].toString() : '',
      colTsvectorArray: jsonn['col_tsvector_array'] != null
          ? (jsonn['col_tsvector_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colTxidSnapshot: jsonn['col_txid_snapshot'] != null
          ? jsonn['col_txid_snapshot'].toString()
          : '',
      colTxidSnapshotArray: jsonn['col_txid_snapshot_array'] != null
          ? (jsonn['col_txid_snapshot_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colMoney: colMoney,
      colMoneyArray: colMoneyArray,
      colPgLsn: colPgLsn,
      colPgLsnArray: colPgLsnArray,
      colPgSnapshot: colPgSnapshot,
      colPgSnapshotArray: colPgSnapshotArray,
      colTsquery: colTsquery,
      colTsqueryArray: colTsqueryArray,
      colTsvector: colTsvector,
      colTsvectorArray: colTsvectorArray,
      colTxidSnapshot: colTxidSnapshot,
      colTxidSnapshotArray: colTxidSnapshotArray,
    );
  }
}

class Books implements SupadartClass<Books> {
  final BigInt id;
  final String name;
  final String? description;
  final int price;
  final DateTime? createdAt;

  const Books({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.createdAt,
  });

  static String get table_name => 'books';
  static String get c_id => 'id';
  static String get c_name => 'name';
  static String get c_description => 'description';
  static String get c_price => 'price';
  static String get c_createdAt => 'created_at';

  static List<Books> converter(List<Map<String, dynamic>> data) {
    return data.map(Books.fromJson).toList();
  }

  static Books converterSingle(Map<String, dynamic> data) {
    return Books.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    BigInt? id,
    String? name,
    String? description,
    int? price,
    DateTime? createdAt,
  }) {
    return {
      if (id != null) 'id': id.toString(),
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (createdAt != null) 'created_at': createdAt.toUtc().toIso8601String(),
    };
  }

  static Map<String, dynamic> insert({
    BigInt? id,
    required String name,
    String? description,
    required int price,
    DateTime? createdAt,
  }) {
    return _generateMap(
      id: id,
      name: name,
      description: description,
      price: price,
      createdAt: createdAt,
    );
  }

  static Map<String, dynamic> update({
    BigInt? id,
    String? name,
    String? description,
    int? price,
    DateTime? createdAt,
  }) {
    return _generateMap(
      id: id,
      name: name,
      description: description,
      price: price,
      createdAt: createdAt,
    );
  }

  factory Books.fromJson(Map<String, dynamic> jsonn) {
    return Books(
      id: jsonn['id'] != null
          ? BigInt.parse(jsonn['id'].toString())
          : BigInt.from(0),
      name: jsonn['name'] != null ? jsonn['name'].toString() : '',
      description:
          jsonn['description'] != null ? jsonn['description'].toString() : '',
      price: jsonn['price'] != null ? int.parse(jsonn['price'].toString()) : 0,
      createdAt: jsonn['created_at'] != null
          ? DateTime.parse(jsonn['created_at'].toString())
          : DateTime.fromMillisecondsSinceEpoch(0),
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      name: name,
      description: description,
      price: price,
      createdAt: createdAt,
    );
  }
}

class GeometricTypes implements SupadartClass<GeometricTypes> {
  final String id;
  final String? colPoint;
  final List<String>? colPointArray;
  final String? colLine;
  final List<String>? colLineArray;
  final String? colLseg;
  final List<String>? colLsegArray;
  final String? colBox;
  final List<String>? colBoxArray;
  final String? colPath;
  final List<String>? colPathArray;
  final String? colPolygon;
  final List<String>? colPolygonArray;
  final String? colCircle;
  final List<String>? colCircleArray;

  const GeometricTypes({
    required this.id,
    this.colPoint,
    this.colPointArray,
    this.colLine,
    this.colLineArray,
    this.colLseg,
    this.colLsegArray,
    this.colBox,
    this.colBoxArray,
    this.colPath,
    this.colPathArray,
    this.colPolygon,
    this.colPolygonArray,
    this.colCircle,
    this.colCircleArray,
  });

  static String get table_name => 'geometric_types';
  static String get c_id => 'id';
  static String get c_colPoint => 'col_point';
  static String get c_colPointArray => 'col_point_array';
  static String get c_colLine => 'col_line';
  static String get c_colLineArray => 'col_line_array';
  static String get c_colLseg => 'col_lseg';
  static String get c_colLsegArray => 'col_lseg_array';
  static String get c_colBox => 'col_box';
  static String get c_colBoxArray => 'col_box_array';
  static String get c_colPath => 'col_path';
  static String get c_colPathArray => 'col_path_array';
  static String get c_colPolygon => 'col_polygon';
  static String get c_colPolygonArray => 'col_polygon_array';
  static String get c_colCircle => 'col_circle';
  static String get c_colCircleArray => 'col_circle_array';

  static List<GeometricTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(GeometricTypes.fromJson).toList();
  }

  static GeometricTypes converterSingle(Map<String, dynamic> data) {
    return GeometricTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    String? colPoint,
    List<String>? colPointArray,
    String? colLine,
    List<String>? colLineArray,
    String? colLseg,
    List<String>? colLsegArray,
    String? colBox,
    List<String>? colBoxArray,
    String? colPath,
    List<String>? colPathArray,
    String? colPolygon,
    List<String>? colPolygonArray,
    String? colCircle,
    List<String>? colCircleArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colPoint != null) 'col_point': colPoint.toString(),
      if (colPointArray != null)
        'col_point_array': colPointArray.map((e) => e.toString()).toList(),
      if (colLine != null) 'col_line': colLine.toString(),
      if (colLineArray != null)
        'col_line_array': colLineArray.map((e) => e.toString()).toList(),
      if (colLseg != null) 'col_lseg': colLseg.toString(),
      if (colLsegArray != null)
        'col_lseg_array': colLsegArray.map((e) => e.toString()).toList(),
      if (colBox != null) 'col_box': colBox.toString(),
      if (colBoxArray != null)
        'col_box_array': colBoxArray.map((e) => e.toString()).toList(),
      if (colPath != null) 'col_path': colPath.toString(),
      if (colPathArray != null)
        'col_path_array': colPathArray.map((e) => e.toString()).toList(),
      if (colPolygon != null) 'col_polygon': colPolygon.toString(),
      if (colPolygonArray != null)
        'col_polygon_array': colPolygonArray.map((e) => e.toString()).toList(),
      if (colCircle != null) 'col_circle': colCircle.toString(),
      if (colCircleArray != null)
        'col_circle_array': colCircleArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    String? colPoint,
    List<String>? colPointArray,
    String? colLine,
    List<String>? colLineArray,
    String? colLseg,
    List<String>? colLsegArray,
    String? colBox,
    List<String>? colBoxArray,
    String? colPath,
    List<String>? colPathArray,
    String? colPolygon,
    List<String>? colPolygonArray,
    String? colCircle,
    List<String>? colCircleArray,
  }) {
    return _generateMap(
      id: id,
      colPoint: colPoint,
      colPointArray: colPointArray,
      colLine: colLine,
      colLineArray: colLineArray,
      colLseg: colLseg,
      colLsegArray: colLsegArray,
      colBox: colBox,
      colBoxArray: colBoxArray,
      colPath: colPath,
      colPathArray: colPathArray,
      colPolygon: colPolygon,
      colPolygonArray: colPolygonArray,
      colCircle: colCircle,
      colCircleArray: colCircleArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    String? colPoint,
    List<String>? colPointArray,
    String? colLine,
    List<String>? colLineArray,
    String? colLseg,
    List<String>? colLsegArray,
    String? colBox,
    List<String>? colBoxArray,
    String? colPath,
    List<String>? colPathArray,
    String? colPolygon,
    List<String>? colPolygonArray,
    String? colCircle,
    List<String>? colCircleArray,
  }) {
    return _generateMap(
      id: id,
      colPoint: colPoint,
      colPointArray: colPointArray,
      colLine: colLine,
      colLineArray: colLineArray,
      colLseg: colLseg,
      colLsegArray: colLsegArray,
      colBox: colBox,
      colBoxArray: colBoxArray,
      colPath: colPath,
      colPathArray: colPathArray,
      colPolygon: colPolygon,
      colPolygonArray: colPolygonArray,
      colCircle: colCircle,
      colCircleArray: colCircleArray,
    );
  }

  factory GeometricTypes.fromJson(Map<String, dynamic> jsonn) {
    return GeometricTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colPoint: jsonn['col_point'] != null ? jsonn['col_point'].toString() : '',
      colPointArray: jsonn['col_point_array'] != null
          ? (jsonn['col_point_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colLine: jsonn['col_line'] != null ? jsonn['col_line'].toString() : '',
      colLineArray: jsonn['col_line_array'] != null
          ? (jsonn['col_line_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colLseg: jsonn['col_lseg'] != null ? jsonn['col_lseg'].toString() : '',
      colLsegArray: jsonn['col_lseg_array'] != null
          ? (jsonn['col_lseg_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colBox: jsonn['col_box'] != null ? jsonn['col_box'].toString() : '',
      colBoxArray: jsonn['col_box_array'] != null
          ? (jsonn['col_box_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colPath: jsonn['col_path'] != null ? jsonn['col_path'].toString() : '',
      colPathArray: jsonn['col_path_array'] != null
          ? (jsonn['col_path_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colPolygon:
          jsonn['col_polygon'] != null ? jsonn['col_polygon'].toString() : '',
      colPolygonArray: jsonn['col_polygon_array'] != null
          ? (jsonn['col_polygon_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colCircle:
          jsonn['col_circle'] != null ? jsonn['col_circle'].toString() : '',
      colCircleArray: jsonn['col_circle_array'] != null
          ? (jsonn['col_circle_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colPoint: colPoint,
      colPointArray: colPointArray,
      colLine: colLine,
      colLineArray: colLineArray,
      colLseg: colLseg,
      colLsegArray: colLsegArray,
      colBox: colBox,
      colBoxArray: colBoxArray,
      colPath: colPath,
      colPathArray: colPathArray,
      colPolygon: colPolygon,
      colPolygonArray: colPolygonArray,
      colCircle: colCircle,
      colCircleArray: colCircleArray,
    );
  }
}

class EnumTypes implements SupadartClass<EnumTypes> {
// [supadart:has_enums]
  final String id;
  final MOOD? colMood;

  const EnumTypes({
    required this.id,
    this.colMood,
  });

  static String get table_name => 'enum_types';
  static String get c_id => 'id';
  static String get c_colMood => 'col_mood';

  static List<EnumTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(EnumTypes.fromJson).toList();
  }

  static EnumTypes converterSingle(Map<String, dynamic> data) {
    return EnumTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    MOOD? colMood,
  }) {
    return {
      if (id != null) 'id': id,
      if (colMood != null) 'col_mood': colMood.toString().split('.').last,
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    required MOOD colMood,
  }) {
    return _generateMap(
      id: id,
      colMood: colMood,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    MOOD? colMood,
  }) {
    return _generateMap(
      id: id,
      colMood: colMood,
    );
  }

  factory EnumTypes.fromJson(Map<String, dynamic> jsonn) {
    return EnumTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colMood: jsonn['col_mood'] != null
          ? MOOD.values.byName(jsonn['col_mood'].toString())
          : MOOD.values.first,
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colMood: colMood,
    );
  }
}

class JsonTypes implements SupadartClass<JsonTypes> {
  final String id;
  final Map<String, dynamic>? colJson;
  final List<Map<String, dynamic>>? colJsonArray;
  final Map<String, dynamic>? colJsonb;
  final List<Map<String, dynamic>>? colJsonbArray;

  const JsonTypes({
    required this.id,
    this.colJson,
    this.colJsonArray,
    this.colJsonb,
    this.colJsonbArray,
  });

  static String get table_name => 'json_types';
  static String get c_id => 'id';
  static String get c_colJson => 'col_json';
  static String get c_colJsonArray => 'col_json_array';
  static String get c_colJsonb => 'col_jsonb';
  static String get c_colJsonbArray => 'col_jsonb_array';

  static List<JsonTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(JsonTypes.fromJson).toList();
  }

  static JsonTypes converterSingle(Map<String, dynamic> data) {
    return JsonTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    Map<String, dynamic>? colJson,
    List<Map<String, dynamic>>? colJsonArray,
    Map<String, dynamic>? colJsonb,
    List<Map<String, dynamic>>? colJsonbArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colJson != null) 'col_json': colJson,
      if (colJsonArray != null)
        'col_json_array': colJsonArray.map((e) => jsonEncode(e)).toList(),
      if (colJsonb != null) 'col_jsonb': colJsonb,
      if (colJsonbArray != null)
        'col_jsonb_array': colJsonbArray.map((e) => jsonEncode(e)).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    Map<String, dynamic>? colJson,
    List<Map<String, dynamic>>? colJsonArray,
    Map<String, dynamic>? colJsonb,
    List<Map<String, dynamic>>? colJsonbArray,
  }) {
    return _generateMap(
      id: id,
      colJson: colJson,
      colJsonArray: colJsonArray,
      colJsonb: colJsonb,
      colJsonbArray: colJsonbArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    Map<String, dynamic>? colJson,
    List<Map<String, dynamic>>? colJsonArray,
    Map<String, dynamic>? colJsonb,
    List<Map<String, dynamic>>? colJsonbArray,
  }) {
    return _generateMap(
      id: id,
      colJson: colJson,
      colJsonArray: colJsonArray,
      colJsonb: colJsonb,
      colJsonbArray: colJsonbArray,
    );
  }

  factory JsonTypes.fromJson(Map<String, dynamic> jsonn) {
    return JsonTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colJson: jsonn['col_json'] != null
          ? jsonn['col_json'] as Map<String, dynamic>
          : <String, dynamic>{},
      colJsonArray: jsonn['col_json_array'] != null
          ? (jsonn['col_json_array'] as List<dynamic>)
              .map((v) => json.decode(v) as Map<String, dynamic>)
              .toList()
          : <Map<String, dynamic>>[],
      colJsonb: jsonn['col_jsonb'] != null
          ? jsonn['col_jsonb'] as Map<String, dynamic>
          : <String, dynamic>{},
      colJsonbArray: jsonn['col_jsonb_array'] != null
          ? (jsonn['col_jsonb_array'] as List<dynamic>)
              .map((v) => json.decode(v) as Map<String, dynamic>)
              .toList()
          : <Map<String, dynamic>>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colJson: colJson,
      colJsonArray: colJsonArray,
      colJsonb: colJsonb,
      colJsonbArray: colJsonbArray,
    );
  }
}

class BinaryXmlTypes implements SupadartClass<BinaryXmlTypes> {
  final String id;
  final String? colBytea;
  final List<String>? colByteaArray;
  final String? colXml;
  final List<String>? colXmlArray;

  const BinaryXmlTypes({
    required this.id,
    this.colBytea,
    this.colByteaArray,
    this.colXml,
    this.colXmlArray,
  });

  static String get table_name => 'binary_xml_types';
  static String get c_id => 'id';
  static String get c_colBytea => 'col_bytea';
  static String get c_colByteaArray => 'col_bytea_array';
  static String get c_colXml => 'col_xml';
  static String get c_colXmlArray => 'col_xml_array';

  static List<BinaryXmlTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(BinaryXmlTypes.fromJson).toList();
  }

  static BinaryXmlTypes converterSingle(Map<String, dynamic> data) {
    return BinaryXmlTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    String? colBytea,
    List<String>? colByteaArray,
    String? colXml,
    List<String>? colXmlArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colBytea != null) 'col_bytea': colBytea.toString(),
      if (colByteaArray != null)
        'col_bytea_array': colByteaArray.map((e) => e.toString()).toList(),
      if (colXml != null) 'col_xml': colXml.toString(),
      if (colXmlArray != null)
        'col_xml_array': colXmlArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    String? colBytea,
    List<String>? colByteaArray,
    String? colXml,
    List<String>? colXmlArray,
  }) {
    return _generateMap(
      id: id,
      colBytea: colBytea,
      colByteaArray: colByteaArray,
      colXml: colXml,
      colXmlArray: colXmlArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    String? colBytea,
    List<String>? colByteaArray,
    String? colXml,
    List<String>? colXmlArray,
  }) {
    return _generateMap(
      id: id,
      colBytea: colBytea,
      colByteaArray: colByteaArray,
      colXml: colXml,
      colXmlArray: colXmlArray,
    );
  }

  factory BinaryXmlTypes.fromJson(Map<String, dynamic> jsonn) {
    return BinaryXmlTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colBytea: jsonn['col_bytea'] != null ? jsonn['col_bytea'].toString() : '',
      colByteaArray: jsonn['col_bytea_array'] != null
          ? (jsonn['col_bytea_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colXml: jsonn['col_xml'] != null ? jsonn['col_xml'].toString() : '',
      colXmlArray: jsonn['col_xml_array'] != null
          ? (jsonn['col_xml_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colBytea: colBytea,
      colByteaArray: colByteaArray,
      colXml: colXml,
      colXmlArray: colXmlArray,
    );
  }
}

class NetworkTypes implements SupadartClass<NetworkTypes> {
  final String id;
  final String? colCidr;
  final List<String>? colCidrArray;
  final String? colInet;
  final List<String>? colInetArray;
  final String? colMacaddr;
  final List<String>? colMacaddrArray;
  final String? colMacaddr8;
  final List<String>? colMacaddr8Array;

  const NetworkTypes({
    required this.id,
    this.colCidr,
    this.colCidrArray,
    this.colInet,
    this.colInetArray,
    this.colMacaddr,
    this.colMacaddrArray,
    this.colMacaddr8,
    this.colMacaddr8Array,
  });

  static String get table_name => 'network_types';
  static String get c_id => 'id';
  static String get c_colCidr => 'col_cidr';
  static String get c_colCidrArray => 'col_cidr_array';
  static String get c_colInet => 'col_inet';
  static String get c_colInetArray => 'col_inet_array';
  static String get c_colMacaddr => 'col_macaddr';
  static String get c_colMacaddrArray => 'col_macaddr_array';
  static String get c_colMacaddr8 => 'col_macaddr8';
  static String get c_colMacaddr8Array => 'col_macaddr8_array';

  static List<NetworkTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(NetworkTypes.fromJson).toList();
  }

  static NetworkTypes converterSingle(Map<String, dynamic> data) {
    return NetworkTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    String? colCidr,
    List<String>? colCidrArray,
    String? colInet,
    List<String>? colInetArray,
    String? colMacaddr,
    List<String>? colMacaddrArray,
    String? colMacaddr8,
    List<String>? colMacaddr8Array,
  }) {
    return {
      if (id != null) 'id': id,
      if (colCidr != null) 'col_cidr': colCidr.toString(),
      if (colCidrArray != null)
        'col_cidr_array': colCidrArray.map((e) => e.toString()).toList(),
      if (colInet != null) 'col_inet': colInet.toString(),
      if (colInetArray != null)
        'col_inet_array': colInetArray.map((e) => e.toString()).toList(),
      if (colMacaddr != null) 'col_macaddr': colMacaddr.toString(),
      if (colMacaddrArray != null)
        'col_macaddr_array': colMacaddrArray.map((e) => e.toString()).toList(),
      if (colMacaddr8 != null) 'col_macaddr8': colMacaddr8.toString(),
      if (colMacaddr8Array != null)
        'col_macaddr8_array':
            colMacaddr8Array.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    String? colCidr,
    List<String>? colCidrArray,
    String? colInet,
    List<String>? colInetArray,
    String? colMacaddr,
    List<String>? colMacaddrArray,
    String? colMacaddr8,
    List<String>? colMacaddr8Array,
  }) {
    return _generateMap(
      id: id,
      colCidr: colCidr,
      colCidrArray: colCidrArray,
      colInet: colInet,
      colInetArray: colInetArray,
      colMacaddr: colMacaddr,
      colMacaddrArray: colMacaddrArray,
      colMacaddr8: colMacaddr8,
      colMacaddr8Array: colMacaddr8Array,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    String? colCidr,
    List<String>? colCidrArray,
    String? colInet,
    List<String>? colInetArray,
    String? colMacaddr,
    List<String>? colMacaddrArray,
    String? colMacaddr8,
    List<String>? colMacaddr8Array,
  }) {
    return _generateMap(
      id: id,
      colCidr: colCidr,
      colCidrArray: colCidrArray,
      colInet: colInet,
      colInetArray: colInetArray,
      colMacaddr: colMacaddr,
      colMacaddrArray: colMacaddrArray,
      colMacaddr8: colMacaddr8,
      colMacaddr8Array: colMacaddr8Array,
    );
  }

  factory NetworkTypes.fromJson(Map<String, dynamic> jsonn) {
    return NetworkTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colCidr: jsonn['col_cidr'] != null ? jsonn['col_cidr'].toString() : '',
      colCidrArray: jsonn['col_cidr_array'] != null
          ? (jsonn['col_cidr_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colInet: jsonn['col_inet'] != null ? jsonn['col_inet'].toString() : '',
      colInetArray: jsonn['col_inet_array'] != null
          ? (jsonn['col_inet_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colMacaddr:
          jsonn['col_macaddr'] != null ? jsonn['col_macaddr'].toString() : '',
      colMacaddrArray: jsonn['col_macaddr_array'] != null
          ? (jsonn['col_macaddr_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
      colMacaddr8:
          jsonn['col_macaddr8'] != null ? jsonn['col_macaddr8'].toString() : '',
      colMacaddr8Array: jsonn['col_macaddr8_array'] != null
          ? (jsonn['col_macaddr8_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colCidr: colCidr,
      colCidrArray: colCidrArray,
      colInet: colInet,
      colInetArray: colInetArray,
      colMacaddr: colMacaddr,
      colMacaddrArray: colMacaddrArray,
      colMacaddr8: colMacaddr8,
      colMacaddr8Array: colMacaddr8Array,
    );
  }
}

class NumericTypes implements SupadartClass<NumericTypes> {
  final String id;
  final BigInt? colBigint;
  final List<BigInt>? colBigintArray;
  final BigInt? colBigserial;
  final List<BigInt>? colBigserialArray;
  final int? colInteger;
  final List<int>? colIntegerArray;
  final int? colSmallint;
  final List<int>? colSmallintArray;
  final int? colSmallserial;
  final List<int>? colSmallserialArray;
  final int? colSerial;
  final List<int>? colSerialArray;
  final double? colDouble;
  final List<double>? colDoubleArray;
  final double? colReal;
  final List<double>? colRealArray;
  final num? colNumeric;
  final List<num>? colNumericArray;

  const NumericTypes({
    required this.id,
    this.colBigint,
    this.colBigintArray,
    this.colBigserial,
    this.colBigserialArray,
    this.colInteger,
    this.colIntegerArray,
    this.colSmallint,
    this.colSmallintArray,
    this.colSmallserial,
    this.colSmallserialArray,
    this.colSerial,
    this.colSerialArray,
    this.colDouble,
    this.colDoubleArray,
    this.colReal,
    this.colRealArray,
    this.colNumeric,
    this.colNumericArray,
  });

  static String get table_name => 'numeric_types';
  static String get c_id => 'id';
  static String get c_colBigint => 'col_bigint';
  static String get c_colBigintArray => 'col_bigint_array';
  static String get c_colBigserial => 'col_bigserial';
  static String get c_colBigserialArray => 'col_bigserial_array';
  static String get c_colInteger => 'col_integer';
  static String get c_colIntegerArray => 'col_integer_array';
  static String get c_colSmallint => 'col_smallint';
  static String get c_colSmallintArray => 'col_smallint_array';
  static String get c_colSmallserial => 'col_smallserial';
  static String get c_colSmallserialArray => 'col_smallserial_array';
  static String get c_colSerial => 'col_serial';
  static String get c_colSerialArray => 'col_serial_array';
  static String get c_colDouble => 'col_double';
  static String get c_colDoubleArray => 'col_double_array';
  static String get c_colReal => 'col_real';
  static String get c_colRealArray => 'col_real_array';
  static String get c_colNumeric => 'col_numeric';
  static String get c_colNumericArray => 'col_numeric_array';

  static List<NumericTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(NumericTypes.fromJson).toList();
  }

  static NumericTypes converterSingle(Map<String, dynamic> data) {
    return NumericTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    BigInt? colBigint,
    List<BigInt>? colBigintArray,
    BigInt? colBigserial,
    List<BigInt>? colBigserialArray,
    int? colInteger,
    List<int>? colIntegerArray,
    int? colSmallint,
    List<int>? colSmallintArray,
    int? colSmallserial,
    List<int>? colSmallserialArray,
    int? colSerial,
    List<int>? colSerialArray,
    double? colDouble,
    List<double>? colDoubleArray,
    double? colReal,
    List<double>? colRealArray,
    num? colNumeric,
    List<num>? colNumericArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colBigint != null) 'col_bigint': colBigint.toString(),
      if (colBigintArray != null)
        'col_bigint_array': colBigintArray.map((e) => e.toString()).toList(),
      if (colBigserial != null) 'col_bigserial': colBigserial.toString(),
      if (colBigserialArray != null)
        'col_bigserial_array':
            colBigserialArray.map((e) => e.toString()).toList(),
      if (colInteger != null) 'col_integer': colInteger,
      if (colIntegerArray != null) 'col_integer_array': colIntegerArray,
      if (colSmallint != null) 'col_smallint': colSmallint,
      if (colSmallintArray != null) 'col_smallint_array': colSmallintArray,
      if (colSmallserial != null) 'col_smallserial': colSmallserial,
      if (colSmallserialArray != null)
        'col_smallserial_array': colSmallserialArray,
      if (colSerial != null) 'col_serial': colSerial,
      if (colSerialArray != null) 'col_serial_array': colSerialArray,
      if (colDouble != null) 'col_double': colDouble.toString(),
      if (colDoubleArray != null)
        'col_double_array': colDoubleArray.map((e) => e.toString()).toList(),
      if (colReal != null) 'col_real': colReal,
      if (colRealArray != null) 'col_real_array': colRealArray,
      if (colNumeric != null) 'col_numeric': colNumeric.toString(),
      if (colNumericArray != null)
        'col_numeric_array': colNumericArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    BigInt? colBigint,
    List<BigInt>? colBigintArray,
    BigInt? colBigserial,
    List<BigInt>? colBigserialArray,
    int? colInteger,
    List<int>? colIntegerArray,
    int? colSmallint,
    List<int>? colSmallintArray,
    int? colSmallserial,
    List<int>? colSmallserialArray,
    int? colSerial,
    List<int>? colSerialArray,
    double? colDouble,
    List<double>? colDoubleArray,
    double? colReal,
    List<double>? colRealArray,
    num? colNumeric,
    List<num>? colNumericArray,
  }) {
    return _generateMap(
      id: id,
      colBigint: colBigint,
      colBigintArray: colBigintArray,
      colBigserial: colBigserial,
      colBigserialArray: colBigserialArray,
      colInteger: colInteger,
      colIntegerArray: colIntegerArray,
      colSmallint: colSmallint,
      colSmallintArray: colSmallintArray,
      colSmallserial: colSmallserial,
      colSmallserialArray: colSmallserialArray,
      colSerial: colSerial,
      colSerialArray: colSerialArray,
      colDouble: colDouble,
      colDoubleArray: colDoubleArray,
      colReal: colReal,
      colRealArray: colRealArray,
      colNumeric: colNumeric,
      colNumericArray: colNumericArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    BigInt? colBigint,
    List<BigInt>? colBigintArray,
    BigInt? colBigserial,
    List<BigInt>? colBigserialArray,
    int? colInteger,
    List<int>? colIntegerArray,
    int? colSmallint,
    List<int>? colSmallintArray,
    int? colSmallserial,
    List<int>? colSmallserialArray,
    int? colSerial,
    List<int>? colSerialArray,
    double? colDouble,
    List<double>? colDoubleArray,
    double? colReal,
    List<double>? colRealArray,
    num? colNumeric,
    List<num>? colNumericArray,
  }) {
    return _generateMap(
      id: id,
      colBigint: colBigint,
      colBigintArray: colBigintArray,
      colBigserial: colBigserial,
      colBigserialArray: colBigserialArray,
      colInteger: colInteger,
      colIntegerArray: colIntegerArray,
      colSmallint: colSmallint,
      colSmallintArray: colSmallintArray,
      colSmallserial: colSmallserial,
      colSmallserialArray: colSmallserialArray,
      colSerial: colSerial,
      colSerialArray: colSerialArray,
      colDouble: colDouble,
      colDoubleArray: colDoubleArray,
      colReal: colReal,
      colRealArray: colRealArray,
      colNumeric: colNumeric,
      colNumericArray: colNumericArray,
    );
  }

  factory NumericTypes.fromJson(Map<String, dynamic> jsonn) {
    return NumericTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colBigint: jsonn['col_bigint'] != null
          ? BigInt.parse(jsonn['col_bigint'].toString())
          : BigInt.from(0),
      colBigintArray: jsonn['col_bigint_array'] != null
          ? (jsonn['col_bigint_array'] as List<dynamic>)
              .map((v) => BigInt.parse(v.toString()))
              .toList()
          : <BigInt>[],
      colBigserial: jsonn['col_bigserial'] != null
          ? BigInt.parse(jsonn['col_bigserial'].toString())
          : BigInt.from(0),
      colBigserialArray: jsonn['col_bigserial_array'] != null
          ? (jsonn['col_bigserial_array'] as List<dynamic>)
              .map((v) => BigInt.parse(v.toString()))
              .toList()
          : <BigInt>[],
      colInteger: jsonn['col_integer'] != null
          ? int.parse(jsonn['col_integer'].toString())
          : 0,
      colIntegerArray: jsonn['col_integer_array'] != null
          ? (jsonn['col_integer_array'] as List<dynamic>)
              .map((v) => int.parse(v.toString()))
              .toList()
          : <int>[],
      colSmallint: jsonn['col_smallint'] != null
          ? int.parse(jsonn['col_smallint'].toString())
          : 0,
      colSmallintArray: jsonn['col_smallint_array'] != null
          ? (jsonn['col_smallint_array'] as List<dynamic>)
              .map((v) => int.parse(v.toString()))
              .toList()
          : <int>[],
      colSmallserial: jsonn['col_smallserial'] != null
          ? int.parse(jsonn['col_smallserial'].toString())
          : 0,
      colSmallserialArray: jsonn['col_smallserial_array'] != null
          ? (jsonn['col_smallserial_array'] as List<dynamic>)
              .map((v) => int.parse(v.toString()))
              .toList()
          : <int>[],
      colSerial: jsonn['col_serial'] != null
          ? int.parse(jsonn['col_serial'].toString())
          : 0,
      colSerialArray: jsonn['col_serial_array'] != null
          ? (jsonn['col_serial_array'] as List<dynamic>)
              .map((v) => int.parse(v.toString()))
              .toList()
          : <int>[],
      colDouble: jsonn['col_double'] != null
          ? double.parse(jsonn['col_double'].toString())
          : 0.0,
      colDoubleArray: jsonn['col_double_array'] != null
          ? (jsonn['col_double_array'] as List<dynamic>)
              .map((v) => double.parse(v.toString()))
              .toList()
          : <double>[],
      colReal: jsonn['col_real'] != null
          ? double.parse(jsonn['col_real'].toString())
          : 0.0,
      colRealArray: jsonn['col_real_array'] != null
          ? (jsonn['col_real_array'] as List<dynamic>)
              .map((v) => double.parse(v.toString()))
              .toList()
          : <double>[],
      colNumeric: jsonn['col_numeric'] != null
          ? num.parse(jsonn['col_numeric'].toString())
          : 0,
      colNumericArray: jsonn['col_numeric_array'] != null
          ? (jsonn['col_numeric_array'] as List<dynamic>)
              .map((v) => num.parse(v.toString()))
              .toList()
          : <num>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colBigint: colBigint,
      colBigintArray: colBigintArray,
      colBigserial: colBigserial,
      colBigserialArray: colBigserialArray,
      colInteger: colInteger,
      colIntegerArray: colIntegerArray,
      colSmallint: colSmallint,
      colSmallintArray: colSmallintArray,
      colSmallserial: colSmallserial,
      colSmallserialArray: colSmallserialArray,
      colSerial: colSerial,
      colSerialArray: colSerialArray,
      colDouble: colDouble,
      colDoubleArray: colDoubleArray,
      colReal: colReal,
      colRealArray: colRealArray,
      colNumeric: colNumeric,
      colNumericArray: colNumericArray,
    );
  }
}

class DatetimeTypes implements SupadartClass<DatetimeTypes> {
  final String id;
  final DateTime? colDate;
  final List<DateTime>? colDateArray;
  final DateTime? colTime;
  final List<DateTime>? colTimeArray;
  final DateTime? colTimetz;
  final List<DateTime>? colTimetzArray;
  final DateTime? colTimestamp;
  final List<DateTime>? colTimestampArray;
  final DateTime? colTimestamptz;
  final List<DateTime>? colTimestamptzArray;
  final String? colInterval;
  final List<String>? colIntervalArray;

  const DatetimeTypes({
    required this.id,
    this.colDate,
    this.colDateArray,
    this.colTime,
    this.colTimeArray,
    this.colTimetz,
    this.colTimetzArray,
    this.colTimestamp,
    this.colTimestampArray,
    this.colTimestamptz,
    this.colTimestamptzArray,
    this.colInterval,
    this.colIntervalArray,
  });

  static String get table_name => 'datetime_types';
  static String get c_id => 'id';
  static String get c_colDate => 'col_date';
  static String get c_colDateArray => 'col_date_array';
  static String get c_colTime => 'col_time';
  static String get c_colTimeArray => 'col_time_array';
  static String get c_colTimetz => 'col_timetz';
  static String get c_colTimetzArray => 'col_timetz_array';
  static String get c_colTimestamp => 'col_timestamp';
  static String get c_colTimestampArray => 'col_timestamp_array';
  static String get c_colTimestamptz => 'col_timestamptz';
  static String get c_colTimestamptzArray => 'col_timestamptz_array';
  static String get c_colInterval => 'col_interval';
  static String get c_colIntervalArray => 'col_interval_array';

  static List<DatetimeTypes> converter(List<Map<String, dynamic>> data) {
    return data.map(DatetimeTypes.fromJson).toList();
  }

  static DatetimeTypes converterSingle(Map<String, dynamic> data) {
    return DatetimeTypes.fromJson(data);
  }

  static Map<String, dynamic> _generateMap({
    String? id,
    DateTime? colDate,
    List<DateTime>? colDateArray,
    DateTime? colTime,
    List<DateTime>? colTimeArray,
    DateTime? colTimetz,
    List<DateTime>? colTimetzArray,
    DateTime? colTimestamp,
    List<DateTime>? colTimestampArray,
    DateTime? colTimestamptz,
    List<DateTime>? colTimestamptzArray,
    String? colInterval,
    List<String>? colIntervalArray,
  }) {
    return {
      if (id != null) 'id': id,
      if (colDate != null) 'col_date': colDate.toIso8601String(),
      if (colDateArray != null)
        'col_date_array': colDateArray.map((e) => e.toIso8601String()).toList(),
      if (colTime != null)
        'col_time': DateFormat('HH:mm:ss.SSS').format(colTime),
      if (colTimeArray != null)
        'col_time_array': colTimeArray
            .map((e) => DateFormat('HH:mm:ss.SSS').format(e))
            .toList(),
      if (colTimetz != null)
        'col_timetz': DateFormat('HH:mm:ssZ').format(colTimetz.toLocal()),
      if (colTimetzArray != null)
        'col_timetz_array': colTimetzArray
            .map((e) => DateFormat('HH:mm:ssZ').format(e.toLocal()))
            .toList(),
      if (colTimestamp != null) 'col_timestamp': colTimestamp.toIso8601String(),
      if (colTimestampArray != null)
        'col_timestamp_array':
            colTimestampArray.map((e) => e.toIso8601String()).toList(),
      if (colTimestamptz != null)
        'col_timestamptz': colTimestamptz.toUtc().toIso8601String(),
      if (colTimestamptzArray != null)
        'col_timestamptz_array': colTimestamptzArray
            .map((e) => e.toUtc().toIso8601String())
            .toList(),
      if (colInterval != null) 'col_interval': colInterval.toString(),
      if (colIntervalArray != null)
        'col_interval_array':
            colIntervalArray.map((e) => e.toString()).toList(),
    };
  }

  static Map<String, dynamic> insert({
    String? id,
    DateTime? colDate,
    List<DateTime>? colDateArray,
    DateTime? colTime,
    List<DateTime>? colTimeArray,
    DateTime? colTimetz,
    List<DateTime>? colTimetzArray,
    DateTime? colTimestamp,
    List<DateTime>? colTimestampArray,
    DateTime? colTimestamptz,
    List<DateTime>? colTimestamptzArray,
    String? colInterval,
    List<String>? colIntervalArray,
  }) {
    return _generateMap(
      id: id,
      colDate: colDate,
      colDateArray: colDateArray,
      colTime: colTime,
      colTimeArray: colTimeArray,
      colTimetz: colTimetz,
      colTimetzArray: colTimetzArray,
      colTimestamp: colTimestamp,
      colTimestampArray: colTimestampArray,
      colTimestamptz: colTimestamptz,
      colTimestamptzArray: colTimestamptzArray,
      colInterval: colInterval,
      colIntervalArray: colIntervalArray,
    );
  }

  static Map<String, dynamic> update({
    String? id,
    DateTime? colDate,
    List<DateTime>? colDateArray,
    DateTime? colTime,
    List<DateTime>? colTimeArray,
    DateTime? colTimetz,
    List<DateTime>? colTimetzArray,
    DateTime? colTimestamp,
    List<DateTime>? colTimestampArray,
    DateTime? colTimestamptz,
    List<DateTime>? colTimestamptzArray,
    String? colInterval,
    List<String>? colIntervalArray,
  }) {
    return _generateMap(
      id: id,
      colDate: colDate,
      colDateArray: colDateArray,
      colTime: colTime,
      colTimeArray: colTimeArray,
      colTimetz: colTimetz,
      colTimetzArray: colTimetzArray,
      colTimestamp: colTimestamp,
      colTimestampArray: colTimestampArray,
      colTimestamptz: colTimestamptz,
      colTimestamptzArray: colTimestamptzArray,
      colInterval: colInterval,
      colIntervalArray: colIntervalArray,
    );
  }

  factory DatetimeTypes.fromJson(Map<String, dynamic> jsonn) {
    return DatetimeTypes(
      id: jsonn['id'] != null ? jsonn['id'].toString() : '',
      colDate: jsonn['col_date'] != null
          ? DateTime.parse(jsonn['col_date'].toString())
          : DateTime.fromMillisecondsSinceEpoch(0),
      colDateArray: jsonn['col_date_array'] != null
          ? (jsonn['col_date_array'] as List<dynamic>)
              .map((v) => DateTime.parse(v.toString()))
              .toList()
          : <DateTime>[],
      colTime: jsonn['col_time'] != null
          ? DateTime.parse("1970-01-01T${jsonn['col_time']}").toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      colTimeArray: jsonn['col_time_array'] != null
          ? (jsonn['col_time_array'] as List<dynamic>)
              .map((v) => DateTime.parse("1970-01-01T${v}").toLocal())
              .toList()
          : <DateTime>[],
      colTimetz: jsonn['col_timetz'] != null
          ? DateTime.parse("1970-01-01T${jsonn['col_timetz']}").toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      colTimetzArray: jsonn['col_timetz_array'] != null
          ? (jsonn['col_timetz_array'] as List<dynamic>)
              .map((v) => DateTime.parse("1970-01-01T${v}").toLocal())
              .toList()
          : <DateTime>[],
      colTimestamp: jsonn['col_timestamp'] != null
          ? DateTime.parse(jsonn['col_timestamp'].toString())
          : DateTime.fromMillisecondsSinceEpoch(0),
      colTimestampArray: jsonn['col_timestamp_array'] != null
          ? (jsonn['col_timestamp_array'] as List<dynamic>)
              .map((v) => DateTime.parse(v.toString()))
              .toList()
          : <DateTime>[],
      colTimestamptz: jsonn['col_timestamptz'] != null
          ? DateTime.parse(jsonn['col_timestamptz'].toString())
          : DateTime.fromMillisecondsSinceEpoch(0),
      colTimestamptzArray: jsonn['col_timestamptz_array'] != null
          ? (jsonn['col_timestamptz_array'] as List<dynamic>)
              .map((v) => DateTime.parse(v.toString()))
              .toList()
          : <DateTime>[],
      colInterval:
          jsonn['col_interval'] != null ? jsonn['col_interval'].toString() : '',
      colIntervalArray: jsonn['col_interval_array'] != null
          ? (jsonn['col_interval_array'] as List<dynamic>)
              .map((e) => e.toString())
              .toList()
          : <String>[],
    );
  }

  Map<String, dynamic> toJson() {
// Promotion doesn't work well with public fields due to the possibility of the field being modified elsewhere.
    return _generateMap(
      id: id,
      colDate: colDate,
      colDateArray: colDateArray,
      colTime: colTime,
      colTimeArray: colTimeArray,
      colTimetz: colTimetz,
      colTimetzArray: colTimetzArray,
      colTimestamp: colTimestamp,
      colTimestampArray: colTimestampArray,
      colTimestamptz: colTimestamptz,
      colTimestamptzArray: colTimestamptzArray,
      colInterval: colInterval,
      colIntervalArray: colIntervalArray,
    );
  }
}
