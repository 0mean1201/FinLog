import 'package:drift/drift.dart';

class AccountsTable extends Table {
  @override
  String get tableName => 'accounts';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 50)();
  TextColumn get institution => text().withLength(max: 50)();
  // type: checking / savings / fixed_deposit / credit_card / debit_card / cash
  //       brokerage / isa / pension_savings / irp
  TextColumn get type => text()();
  // domain: budget / invest
  TextColumn get domain => text()();
  // currency: KRW / USD
  TextColumn get currency => text().withDefault(const Constant('KRW'))();
  IntColumn get initialBalance => integer().withDefault(const Constant(0))();
  DateTimeColumn get balanceDate => dateTime()();
  TextColumn get userId => text().nullable()();
}
