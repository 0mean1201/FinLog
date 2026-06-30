import 'package:drift/drift.dart';
import 'accounts_table.dart';

class DepositsWithdrawalsTable extends Table {
  @override
  String get tableName => 'deposits_withdrawals';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer().references(AccountsTable, #id)();
  DateTimeColumn get date => dateTime()();
  IntColumn get amount => integer()();
  // type: deposit / withdrawal
  TextColumn get type => text()();
  TextColumn get userId => text().nullable()();
}
