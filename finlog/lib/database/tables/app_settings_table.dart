import 'package:drift/drift.dart';

class AppSettingsTable extends Table {
  @override
  String get tableName => 'app_settings';

  IntColumn get id => integer()();
  TextColumn get displayName => text().withLength(max: 50)();
  TextColumn get googleAccountEmail => text().nullable()();
  BoolColumn get autoBackupEnabled => boolean().withDefault(const Constant(false))();
  TextColumn get theme => text().withDefault(const Constant('system'))();
  BoolColumn get onboardingCompleted => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastBackupAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
