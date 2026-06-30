import 'package:drift/drift.dart';

class PriceHistoryTable extends Table {
  @override
  String get tableName => 'price_history';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text().withLength(max: 20)();
  DateTimeColumn get date => dateTime()();
  RealColumn get closePrice => real()();
}
