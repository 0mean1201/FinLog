import 'package:drift/drift.dart';
import 'accounts_table.dart';

class DividendsTable extends Table {
  @override
  String get tableName => 'dividends';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer().references(AccountsTable, #id)();
  TextColumn get symbol => text().withLength(max: 20)();
  DateTimeColumn get date => dateTime()();
  // currency: KRW / USD
  TextColumn get currency => text()();
  RealColumn get amount => real()();
  // KRW일 경우 1.0
  RealColumn get fxRateApplied => real().withDefault(const Constant(1.0))();
  IntColumn get krwConvertedAmount => integer()();
  TextColumn get userId => text().nullable()();
}
