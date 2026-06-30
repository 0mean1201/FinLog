import 'package:drift/drift.dart';

class TagsTable extends Table {
  @override
  String get tableName => 'tags';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 30)();
  TextColumn get userId => text().nullable()();
}
