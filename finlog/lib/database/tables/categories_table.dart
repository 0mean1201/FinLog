import 'package:drift/drift.dart';

class CategoriesTable extends Table {
  @override
  String get tableName => 'categories';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 50)();
  // null이면 대분류, 값이 있으면 소분류 (자기참조)
  IntColumn get parentCategoryId => integer().nullable().references(CategoriesTable, #id)();
  BoolColumn get isFixed => boolean().withDefault(const Constant(false))();
  TextColumn get userId => text().nullable()();
}
