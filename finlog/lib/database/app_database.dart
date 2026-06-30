import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

import 'tables/app_settings_table.dart';
import 'tables/accounts_table.dart';
import 'tables/categories_table.dart';
import 'tables/tags_table.dart';
import 'tables/transactions_table.dart';
import 'tables/transaction_tags_table.dart';
import 'tables/budgets_table.dart';
import 'tables/recurring_transactions_table.dart';
import 'tables/holdings_table.dart';
import 'tables/transactions_invest_table.dart';
import 'tables/dividends_table.dart';
import 'tables/deposits_withdrawals_table.dart';
import 'tables/price_history_table.dart';
import 'tables/benchmark_index_history_table.dart';
import 'tables/goals_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  AppSettingsTable,
  AccountsTable,
  CategoriesTable,
  TagsTable,
  TransactionsTable,
  TransactionTagsTable,
  BudgetsTable,
  RecurringTransactionsTable,
  HoldingsTable,
  TransactionsInvestTable,
  DividendsTable,
  DepositsWithdrawalsTable,
  PriceHistoryTable,
  BenchmarkIndexHistoryTable,
  GoalsTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'finlog.db'));
    return NativeDatabase.createInBackground(file);
  });
}
