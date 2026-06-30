import 'package:drift/drift.dart';
import 'accounts_table.dart';

class HoldingsTable extends Table {
  @override
  String get tableName => 'holdings';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer().references(AccountsTable, #id)();
  TextColumn get symbol => text().withLength(max: 20)();
  // market: KR / US
  TextColumn get market => text()();
  RealColumn get quantity => real()();
  RealColumn get avgCost => real()();
  TextColumn get userId => text().nullable()();
}
