import 'package:drift/drift.dart';
import 'categories_table.dart';

class BudgetsTable extends Table {
  @override
  String get tableName => 'budgets';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer().references(CategoriesTable, #id)();
  // YYYY-MM 형식 문자열
  TextColumn get yearMonth => text().withLength(min: 7, max: 7)();
  IntColumn get limitAmount => integer()();
  TextColumn get userId => text().nullable()();
}
