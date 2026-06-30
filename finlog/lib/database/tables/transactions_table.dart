import 'package:drift/drift.dart';
import 'categories_table.dart';
import 'accounts_table.dart';

class TransactionsTable extends Table {
  @override
  String get tableName => 'transactions';

  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get date => dateTime()();
  IntColumn get amount => integer()();
  // type: income / expense
  TextColumn get type => text()();
  IntColumn get categoryId => integer().references(CategoriesTable, #id)();
  IntColumn get accountId => integer().references(AccountsTable, #id)();
  TextColumn get memo => text().nullable()();
  TextColumn get receiptImagePath => text().nullable()();
  TextColumn get userId => text().nullable()();
}
