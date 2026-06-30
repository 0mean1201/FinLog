import 'package:drift/drift.dart';

class BenchmarkIndexHistoryTable extends Table {
  @override
  String get tableName => 'benchmark_index_history';

  IntColumn get id => integer().autoIncrement()();
  // index_name: KOSPI / S&P500 / NASDAQ
  TextColumn get indexName => text()();
  DateTimeColumn get date => dateTime()();
  RealColumn get value => real()();
}
