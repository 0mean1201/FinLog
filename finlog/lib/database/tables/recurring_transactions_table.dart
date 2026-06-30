import 'package:drift/drift.dart';
import 'categories_table.dart';

class RecurringTransactionsTable extends Table {
  @override
  String get tableName => 'recurring_transactions';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer().references(CategoriesTable, #id)();
  IntColumn get amount => integer()();
  // 매달 반복되는 날짜 (1~31)
  IntColumn get dayOfMonth => integer()();
  TextColumn get memo => text().nullable()();
  TextColumn get userId => text().nullable()();
}
