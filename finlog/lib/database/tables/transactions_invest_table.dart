import 'package:drift/drift.dart';
import 'accounts_table.dart';

class TransactionsInvestTable extends Table {
  @override
  String get tableName => 'transactions_invest';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer().references(AccountsTable, #id)();
  TextColumn get symbol => text().withLength(max: 20)();
  // market: KR / US
  TextColumn get market => text()();
  // type: buy / sell
  TextColumn get type => text()();
  DateTimeColumn get date => dateTime()();
  RealColumn get quantity => real()();
  RealColumn get price => real()();
  RealColumn get fee => real().withDefault(const Constant(0.0))();
  TextColumn get userId => text().nullable()();
}
