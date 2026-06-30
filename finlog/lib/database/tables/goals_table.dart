import 'package:drift/drift.dart';

class GoalsTable extends Table {
  @override
  String get tableName => 'goals';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get targetAssetAmount => integer()();
  IntColumn get annualDepositTarget => integer()();
  DateTimeColumn get retirementDate => dateTime()();
  TextColumn get userId => text().nullable()();
}
