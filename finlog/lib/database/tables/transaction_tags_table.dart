import 'package:drift/drift.dart';
import 'transactions_table.dart';
import 'tags_table.dart';

class TransactionTagsTable extends Table {
  @override
  String get tableName => 'transaction_tags';

  IntColumn get transactionId => integer().references(TransactionsTable, #id)();
  IntColumn get tagId => integer().references(TagsTable, #id)();

  @override
  Set<Column> get primaryKey => {transactionId, tagId};
}
