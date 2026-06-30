// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AppSettingsTableTable extends AppSettingsTable
    with TableInfo<$AppSettingsTableTable, AppSettingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _googleAccountEmailMeta =
      const VerificationMeta('googleAccountEmail');
  @override
  late final GeneratedColumn<String> googleAccountEmail =
      GeneratedColumn<String>(
        'google_account_email',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _autoBackupEnabledMeta = const VerificationMeta(
    'autoBackupEnabled',
  );
  @override
  late final GeneratedColumn<bool> autoBackupEnabled = GeneratedColumn<bool>(
    'auto_backup_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("auto_backup_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedColumn<String> theme = GeneratedColumn<String>(
    'theme',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('system'),
  );
  static const VerificationMeta _onboardingCompletedMeta =
      const VerificationMeta('onboardingCompleted');
  @override
  late final GeneratedColumn<bool> onboardingCompleted = GeneratedColumn<bool>(
    'onboarding_completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("onboarding_completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _lastBackupAtMeta = const VerificationMeta(
    'lastBackupAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastBackupAt = GeneratedColumn<DateTime>(
    'last_backup_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    displayName,
    googleAccountEmail,
    autoBackupEnabled,
    theme,
    onboardingCompleted,
    lastBackupAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<AppSettingsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('google_account_email')) {
      context.handle(
        _googleAccountEmailMeta,
        googleAccountEmail.isAcceptableOrUnknown(
          data['google_account_email']!,
          _googleAccountEmailMeta,
        ),
      );
    }
    if (data.containsKey('auto_backup_enabled')) {
      context.handle(
        _autoBackupEnabledMeta,
        autoBackupEnabled.isAcceptableOrUnknown(
          data['auto_backup_enabled']!,
          _autoBackupEnabledMeta,
        ),
      );
    }
    if (data.containsKey('theme')) {
      context.handle(
        _themeMeta,
        theme.isAcceptableOrUnknown(data['theme']!, _themeMeta),
      );
    }
    if (data.containsKey('onboarding_completed')) {
      context.handle(
        _onboardingCompletedMeta,
        onboardingCompleted.isAcceptableOrUnknown(
          data['onboarding_completed']!,
          _onboardingCompletedMeta,
        ),
      );
    }
    if (data.containsKey('last_backup_at')) {
      context.handle(
        _lastBackupAtMeta,
        lastBackupAt.isAcceptableOrUnknown(
          data['last_backup_at']!,
          _lastBackupAtMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppSettingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSettingsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      )!,
      googleAccountEmail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}google_account_email'],
      ),
      autoBackupEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}auto_backup_enabled'],
      )!,
      theme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}theme'],
      )!,
      onboardingCompleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}onboarding_completed'],
      )!,
      lastBackupAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_backup_at'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $AppSettingsTableTable createAlias(String alias) {
    return $AppSettingsTableTable(attachedDatabase, alias);
  }
}

class AppSettingsTableData extends DataClass
    implements Insertable<AppSettingsTableData> {
  final int id;
  final String displayName;
  final String? googleAccountEmail;
  final bool autoBackupEnabled;
  final String theme;
  final bool onboardingCompleted;
  final DateTime? lastBackupAt;
  final DateTime createdAt;
  const AppSettingsTableData({
    required this.id,
    required this.displayName,
    this.googleAccountEmail,
    required this.autoBackupEnabled,
    required this.theme,
    required this.onboardingCompleted,
    this.lastBackupAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['display_name'] = Variable<String>(displayName);
    if (!nullToAbsent || googleAccountEmail != null) {
      map['google_account_email'] = Variable<String>(googleAccountEmail);
    }
    map['auto_backup_enabled'] = Variable<bool>(autoBackupEnabled);
    map['theme'] = Variable<String>(theme);
    map['onboarding_completed'] = Variable<bool>(onboardingCompleted);
    if (!nullToAbsent || lastBackupAt != null) {
      map['last_backup_at'] = Variable<DateTime>(lastBackupAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  AppSettingsTableCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsTableCompanion(
      id: Value(id),
      displayName: Value(displayName),
      googleAccountEmail: googleAccountEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(googleAccountEmail),
      autoBackupEnabled: Value(autoBackupEnabled),
      theme: Value(theme),
      onboardingCompleted: Value(onboardingCompleted),
      lastBackupAt: lastBackupAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastBackupAt),
      createdAt: Value(createdAt),
    );
  }

  factory AppSettingsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSettingsTableData(
      id: serializer.fromJson<int>(json['id']),
      displayName: serializer.fromJson<String>(json['displayName']),
      googleAccountEmail: serializer.fromJson<String?>(
        json['googleAccountEmail'],
      ),
      autoBackupEnabled: serializer.fromJson<bool>(json['autoBackupEnabled']),
      theme: serializer.fromJson<String>(json['theme']),
      onboardingCompleted: serializer.fromJson<bool>(
        json['onboardingCompleted'],
      ),
      lastBackupAt: serializer.fromJson<DateTime?>(json['lastBackupAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'displayName': serializer.toJson<String>(displayName),
      'googleAccountEmail': serializer.toJson<String?>(googleAccountEmail),
      'autoBackupEnabled': serializer.toJson<bool>(autoBackupEnabled),
      'theme': serializer.toJson<String>(theme),
      'onboardingCompleted': serializer.toJson<bool>(onboardingCompleted),
      'lastBackupAt': serializer.toJson<DateTime?>(lastBackupAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  AppSettingsTableData copyWith({
    int? id,
    String? displayName,
    Value<String?> googleAccountEmail = const Value.absent(),
    bool? autoBackupEnabled,
    String? theme,
    bool? onboardingCompleted,
    Value<DateTime?> lastBackupAt = const Value.absent(),
    DateTime? createdAt,
  }) => AppSettingsTableData(
    id: id ?? this.id,
    displayName: displayName ?? this.displayName,
    googleAccountEmail: googleAccountEmail.present
        ? googleAccountEmail.value
        : this.googleAccountEmail,
    autoBackupEnabled: autoBackupEnabled ?? this.autoBackupEnabled,
    theme: theme ?? this.theme,
    onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
    lastBackupAt: lastBackupAt.present ? lastBackupAt.value : this.lastBackupAt,
    createdAt: createdAt ?? this.createdAt,
  );
  AppSettingsTableData copyWithCompanion(AppSettingsTableCompanion data) {
    return AppSettingsTableData(
      id: data.id.present ? data.id.value : this.id,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      googleAccountEmail: data.googleAccountEmail.present
          ? data.googleAccountEmail.value
          : this.googleAccountEmail,
      autoBackupEnabled: data.autoBackupEnabled.present
          ? data.autoBackupEnabled.value
          : this.autoBackupEnabled,
      theme: data.theme.present ? data.theme.value : this.theme,
      onboardingCompleted: data.onboardingCompleted.present
          ? data.onboardingCompleted.value
          : this.onboardingCompleted,
      lastBackupAt: data.lastBackupAt.present
          ? data.lastBackupAt.value
          : this.lastBackupAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsTableData(')
          ..write('id: $id, ')
          ..write('displayName: $displayName, ')
          ..write('googleAccountEmail: $googleAccountEmail, ')
          ..write('autoBackupEnabled: $autoBackupEnabled, ')
          ..write('theme: $theme, ')
          ..write('onboardingCompleted: $onboardingCompleted, ')
          ..write('lastBackupAt: $lastBackupAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    displayName,
    googleAccountEmail,
    autoBackupEnabled,
    theme,
    onboardingCompleted,
    lastBackupAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSettingsTableData &&
          other.id == this.id &&
          other.displayName == this.displayName &&
          other.googleAccountEmail == this.googleAccountEmail &&
          other.autoBackupEnabled == this.autoBackupEnabled &&
          other.theme == this.theme &&
          other.onboardingCompleted == this.onboardingCompleted &&
          other.lastBackupAt == this.lastBackupAt &&
          other.createdAt == this.createdAt);
}

class AppSettingsTableCompanion extends UpdateCompanion<AppSettingsTableData> {
  final Value<int> id;
  final Value<String> displayName;
  final Value<String?> googleAccountEmail;
  final Value<bool> autoBackupEnabled;
  final Value<String> theme;
  final Value<bool> onboardingCompleted;
  final Value<DateTime?> lastBackupAt;
  final Value<DateTime> createdAt;
  const AppSettingsTableCompanion({
    this.id = const Value.absent(),
    this.displayName = const Value.absent(),
    this.googleAccountEmail = const Value.absent(),
    this.autoBackupEnabled = const Value.absent(),
    this.theme = const Value.absent(),
    this.onboardingCompleted = const Value.absent(),
    this.lastBackupAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AppSettingsTableCompanion.insert({
    this.id = const Value.absent(),
    required String displayName,
    this.googleAccountEmail = const Value.absent(),
    this.autoBackupEnabled = const Value.absent(),
    this.theme = const Value.absent(),
    this.onboardingCompleted = const Value.absent(),
    this.lastBackupAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : displayName = Value(displayName);
  static Insertable<AppSettingsTableData> custom({
    Expression<int>? id,
    Expression<String>? displayName,
    Expression<String>? googleAccountEmail,
    Expression<bool>? autoBackupEnabled,
    Expression<String>? theme,
    Expression<bool>? onboardingCompleted,
    Expression<DateTime>? lastBackupAt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (displayName != null) 'display_name': displayName,
      if (googleAccountEmail != null)
        'google_account_email': googleAccountEmail,
      if (autoBackupEnabled != null) 'auto_backup_enabled': autoBackupEnabled,
      if (theme != null) 'theme': theme,
      if (onboardingCompleted != null)
        'onboarding_completed': onboardingCompleted,
      if (lastBackupAt != null) 'last_backup_at': lastBackupAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AppSettingsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? displayName,
    Value<String?>? googleAccountEmail,
    Value<bool>? autoBackupEnabled,
    Value<String>? theme,
    Value<bool>? onboardingCompleted,
    Value<DateTime?>? lastBackupAt,
    Value<DateTime>? createdAt,
  }) {
    return AppSettingsTableCompanion(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      googleAccountEmail: googleAccountEmail ?? this.googleAccountEmail,
      autoBackupEnabled: autoBackupEnabled ?? this.autoBackupEnabled,
      theme: theme ?? this.theme,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      lastBackupAt: lastBackupAt ?? this.lastBackupAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (googleAccountEmail.present) {
      map['google_account_email'] = Variable<String>(googleAccountEmail.value);
    }
    if (autoBackupEnabled.present) {
      map['auto_backup_enabled'] = Variable<bool>(autoBackupEnabled.value);
    }
    if (theme.present) {
      map['theme'] = Variable<String>(theme.value);
    }
    if (onboardingCompleted.present) {
      map['onboarding_completed'] = Variable<bool>(onboardingCompleted.value);
    }
    if (lastBackupAt.present) {
      map['last_backup_at'] = Variable<DateTime>(lastBackupAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsTableCompanion(')
          ..write('id: $id, ')
          ..write('displayName: $displayName, ')
          ..write('googleAccountEmail: $googleAccountEmail, ')
          ..write('autoBackupEnabled: $autoBackupEnabled, ')
          ..write('theme: $theme, ')
          ..write('onboardingCompleted: $onboardingCompleted, ')
          ..write('lastBackupAt: $lastBackupAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $AccountsTableTable extends AccountsTable
    with TableInfo<$AccountsTableTable, AccountsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _institutionMeta = const VerificationMeta(
    'institution',
  );
  @override
  late final GeneratedColumn<String> institution = GeneratedColumn<String>(
    'institution',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _domainMeta = const VerificationMeta('domain');
  @override
  late final GeneratedColumn<String> domain = GeneratedColumn<String>(
    'domain',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('KRW'),
  );
  static const VerificationMeta _initialBalanceMeta = const VerificationMeta(
    'initialBalance',
  );
  @override
  late final GeneratedColumn<int> initialBalance = GeneratedColumn<int>(
    'initial_balance',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _balanceDateMeta = const VerificationMeta(
    'balanceDate',
  );
  @override
  late final GeneratedColumn<DateTime> balanceDate = GeneratedColumn<DateTime>(
    'balance_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    institution,
    type,
    domain,
    currency,
    initialBalance,
    balanceDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts';
  @override
  VerificationContext validateIntegrity(
    Insertable<AccountsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('institution')) {
      context.handle(
        _institutionMeta,
        institution.isAcceptableOrUnknown(
          data['institution']!,
          _institutionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_institutionMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('domain')) {
      context.handle(
        _domainMeta,
        domain.isAcceptableOrUnknown(data['domain']!, _domainMeta),
      );
    } else if (isInserting) {
      context.missing(_domainMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('initial_balance')) {
      context.handle(
        _initialBalanceMeta,
        initialBalance.isAcceptableOrUnknown(
          data['initial_balance']!,
          _initialBalanceMeta,
        ),
      );
    }
    if (data.containsKey('balance_date')) {
      context.handle(
        _balanceDateMeta,
        balanceDate.isAcceptableOrUnknown(
          data['balance_date']!,
          _balanceDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_balanceDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      institution: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}institution'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      domain: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}domain'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      initialBalance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}initial_balance'],
      )!,
      balanceDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}balance_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $AccountsTableTable createAlias(String alias) {
    return $AccountsTableTable(attachedDatabase, alias);
  }
}

class AccountsTableData extends DataClass
    implements Insertable<AccountsTableData> {
  final int id;
  final String name;
  final String institution;
  final String type;
  final String domain;
  final String currency;
  final int initialBalance;
  final DateTime balanceDate;
  final String? userId;
  const AccountsTableData({
    required this.id,
    required this.name,
    required this.institution,
    required this.type,
    required this.domain,
    required this.currency,
    required this.initialBalance,
    required this.balanceDate,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['institution'] = Variable<String>(institution);
    map['type'] = Variable<String>(type);
    map['domain'] = Variable<String>(domain);
    map['currency'] = Variable<String>(currency);
    map['initial_balance'] = Variable<int>(initialBalance);
    map['balance_date'] = Variable<DateTime>(balanceDate);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  AccountsTableCompanion toCompanion(bool nullToAbsent) {
    return AccountsTableCompanion(
      id: Value(id),
      name: Value(name),
      institution: Value(institution),
      type: Value(type),
      domain: Value(domain),
      currency: Value(currency),
      initialBalance: Value(initialBalance),
      balanceDate: Value(balanceDate),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory AccountsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      institution: serializer.fromJson<String>(json['institution']),
      type: serializer.fromJson<String>(json['type']),
      domain: serializer.fromJson<String>(json['domain']),
      currency: serializer.fromJson<String>(json['currency']),
      initialBalance: serializer.fromJson<int>(json['initialBalance']),
      balanceDate: serializer.fromJson<DateTime>(json['balanceDate']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'institution': serializer.toJson<String>(institution),
      'type': serializer.toJson<String>(type),
      'domain': serializer.toJson<String>(domain),
      'currency': serializer.toJson<String>(currency),
      'initialBalance': serializer.toJson<int>(initialBalance),
      'balanceDate': serializer.toJson<DateTime>(balanceDate),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  AccountsTableData copyWith({
    int? id,
    String? name,
    String? institution,
    String? type,
    String? domain,
    String? currency,
    int? initialBalance,
    DateTime? balanceDate,
    Value<String?> userId = const Value.absent(),
  }) => AccountsTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    institution: institution ?? this.institution,
    type: type ?? this.type,
    domain: domain ?? this.domain,
    currency: currency ?? this.currency,
    initialBalance: initialBalance ?? this.initialBalance,
    balanceDate: balanceDate ?? this.balanceDate,
    userId: userId.present ? userId.value : this.userId,
  );
  AccountsTableData copyWithCompanion(AccountsTableCompanion data) {
    return AccountsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      institution: data.institution.present
          ? data.institution.value
          : this.institution,
      type: data.type.present ? data.type.value : this.type,
      domain: data.domain.present ? data.domain.value : this.domain,
      currency: data.currency.present ? data.currency.value : this.currency,
      initialBalance: data.initialBalance.present
          ? data.initialBalance.value
          : this.initialBalance,
      balanceDate: data.balanceDate.present
          ? data.balanceDate.value
          : this.balanceDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AccountsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('institution: $institution, ')
          ..write('type: $type, ')
          ..write('domain: $domain, ')
          ..write('currency: $currency, ')
          ..write('initialBalance: $initialBalance, ')
          ..write('balanceDate: $balanceDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    institution,
    type,
    domain,
    currency,
    initialBalance,
    balanceDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.institution == this.institution &&
          other.type == this.type &&
          other.domain == this.domain &&
          other.currency == this.currency &&
          other.initialBalance == this.initialBalance &&
          other.balanceDate == this.balanceDate &&
          other.userId == this.userId);
}

class AccountsTableCompanion extends UpdateCompanion<AccountsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> institution;
  final Value<String> type;
  final Value<String> domain;
  final Value<String> currency;
  final Value<int> initialBalance;
  final Value<DateTime> balanceDate;
  final Value<String?> userId;
  const AccountsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.institution = const Value.absent(),
    this.type = const Value.absent(),
    this.domain = const Value.absent(),
    this.currency = const Value.absent(),
    this.initialBalance = const Value.absent(),
    this.balanceDate = const Value.absent(),
    this.userId = const Value.absent(),
  });
  AccountsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String institution,
    required String type,
    required String domain,
    this.currency = const Value.absent(),
    this.initialBalance = const Value.absent(),
    required DateTime balanceDate,
    this.userId = const Value.absent(),
  }) : name = Value(name),
       institution = Value(institution),
       type = Value(type),
       domain = Value(domain),
       balanceDate = Value(balanceDate);
  static Insertable<AccountsTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? institution,
    Expression<String>? type,
    Expression<String>? domain,
    Expression<String>? currency,
    Expression<int>? initialBalance,
    Expression<DateTime>? balanceDate,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (institution != null) 'institution': institution,
      if (type != null) 'type': type,
      if (domain != null) 'domain': domain,
      if (currency != null) 'currency': currency,
      if (initialBalance != null) 'initial_balance': initialBalance,
      if (balanceDate != null) 'balance_date': balanceDate,
      if (userId != null) 'user_id': userId,
    });
  }

  AccountsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? institution,
    Value<String>? type,
    Value<String>? domain,
    Value<String>? currency,
    Value<int>? initialBalance,
    Value<DateTime>? balanceDate,
    Value<String?>? userId,
  }) {
    return AccountsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      institution: institution ?? this.institution,
      type: type ?? this.type,
      domain: domain ?? this.domain,
      currency: currency ?? this.currency,
      initialBalance: initialBalance ?? this.initialBalance,
      balanceDate: balanceDate ?? this.balanceDate,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (institution.present) {
      map['institution'] = Variable<String>(institution.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (initialBalance.present) {
      map['initial_balance'] = Variable<int>(initialBalance.value);
    }
    if (balanceDate.present) {
      map['balance_date'] = Variable<DateTime>(balanceDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('institution: $institution, ')
          ..write('type: $type, ')
          ..write('domain: $domain, ')
          ..write('currency: $currency, ')
          ..write('initialBalance: $initialBalance, ')
          ..write('balanceDate: $balanceDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTableTable extends CategoriesTable
    with TableInfo<$CategoriesTableTable, CategoriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parentCategoryIdMeta = const VerificationMeta(
    'parentCategoryId',
  );
  @override
  late final GeneratedColumn<int> parentCategoryId = GeneratedColumn<int>(
    'parent_category_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  static const VerificationMeta _isFixedMeta = const VerificationMeta(
    'isFixed',
  );
  @override
  late final GeneratedColumn<bool> isFixed = GeneratedColumn<bool>(
    'is_fixed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_fixed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    parentCategoryId,
    isFixed,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoriesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('parent_category_id')) {
      context.handle(
        _parentCategoryIdMeta,
        parentCategoryId.isAcceptableOrUnknown(
          data['parent_category_id']!,
          _parentCategoryIdMeta,
        ),
      );
    }
    if (data.containsKey('is_fixed')) {
      context.handle(
        _isFixedMeta,
        isFixed.isAcceptableOrUnknown(data['is_fixed']!, _isFixedMeta),
      );
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoriesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      parentCategoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}parent_category_id'],
      ),
      isFixed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_fixed'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $CategoriesTableTable createAlias(String alias) {
    return $CategoriesTableTable(attachedDatabase, alias);
  }
}

class CategoriesTableData extends DataClass
    implements Insertable<CategoriesTableData> {
  final int id;
  final String name;
  final int? parentCategoryId;
  final bool isFixed;
  final String? userId;
  const CategoriesTableData({
    required this.id,
    required this.name,
    this.parentCategoryId,
    required this.isFixed,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || parentCategoryId != null) {
      map['parent_category_id'] = Variable<int>(parentCategoryId);
    }
    map['is_fixed'] = Variable<bool>(isFixed);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  CategoriesTableCompanion toCompanion(bool nullToAbsent) {
    return CategoriesTableCompanion(
      id: Value(id),
      name: Value(name),
      parentCategoryId: parentCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentCategoryId),
      isFixed: Value(isFixed),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory CategoriesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoriesTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      parentCategoryId: serializer.fromJson<int?>(json['parentCategoryId']),
      isFixed: serializer.fromJson<bool>(json['isFixed']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'parentCategoryId': serializer.toJson<int?>(parentCategoryId),
      'isFixed': serializer.toJson<bool>(isFixed),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  CategoriesTableData copyWith({
    int? id,
    String? name,
    Value<int?> parentCategoryId = const Value.absent(),
    bool? isFixed,
    Value<String?> userId = const Value.absent(),
  }) => CategoriesTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    parentCategoryId: parentCategoryId.present
        ? parentCategoryId.value
        : this.parentCategoryId,
    isFixed: isFixed ?? this.isFixed,
    userId: userId.present ? userId.value : this.userId,
  );
  CategoriesTableData copyWithCompanion(CategoriesTableCompanion data) {
    return CategoriesTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      parentCategoryId: data.parentCategoryId.present
          ? data.parentCategoryId.value
          : this.parentCategoryId,
      isFixed: data.isFixed.present ? data.isFixed.value : this.isFixed,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentCategoryId: $parentCategoryId, ')
          ..write('isFixed: $isFixed, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, parentCategoryId, isFixed, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoriesTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.parentCategoryId == this.parentCategoryId &&
          other.isFixed == this.isFixed &&
          other.userId == this.userId);
}

class CategoriesTableCompanion extends UpdateCompanion<CategoriesTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> parentCategoryId;
  final Value<bool> isFixed;
  final Value<String?> userId;
  const CategoriesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.parentCategoryId = const Value.absent(),
    this.isFixed = const Value.absent(),
    this.userId = const Value.absent(),
  });
  CategoriesTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.parentCategoryId = const Value.absent(),
    this.isFixed = const Value.absent(),
    this.userId = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CategoriesTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? parentCategoryId,
    Expression<bool>? isFixed,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (parentCategoryId != null) 'parent_category_id': parentCategoryId,
      if (isFixed != null) 'is_fixed': isFixed,
      if (userId != null) 'user_id': userId,
    });
  }

  CategoriesTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int?>? parentCategoryId,
    Value<bool>? isFixed,
    Value<String?>? userId,
  }) {
    return CategoriesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      isFixed: isFixed ?? this.isFixed,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (parentCategoryId.present) {
      map['parent_category_id'] = Variable<int>(parentCategoryId.value);
    }
    if (isFixed.present) {
      map['is_fixed'] = Variable<bool>(isFixed.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('parentCategoryId: $parentCategoryId, ')
          ..write('isFixed: $isFixed, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $TagsTableTable extends TagsTable
    with TableInfo<$TagsTableTable, TagsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 30),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, userId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<TagsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $TagsTableTable createAlias(String alias) {
    return $TagsTableTable(attachedDatabase, alias);
  }
}

class TagsTableData extends DataClass implements Insertable<TagsTableData> {
  final int id;
  final String name;
  final String? userId;
  const TagsTableData({required this.id, required this.name, this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  TagsTableCompanion toCompanion(bool nullToAbsent) {
    return TagsTableCompanion(
      id: Value(id),
      name: Value(name),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory TagsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagsTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  TagsTableData copyWith({
    int? id,
    String? name,
    Value<String?> userId = const Value.absent(),
  }) => TagsTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    userId: userId.present ? userId.value : this.userId,
  );
  TagsTableData copyWithCompanion(TagsTableCompanion data) {
    return TagsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.userId == this.userId);
}

class TagsTableCompanion extends UpdateCompanion<TagsTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> userId;
  const TagsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.userId = const Value.absent(),
  });
  TagsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.userId = const Value.absent(),
  }) : name = Value(name);
  static Insertable<TagsTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (userId != null) 'user_id': userId,
    });
  }

  TagsTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? userId,
  }) {
    return TagsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTableTable extends TransactionsTable
    with TableInfo<$TransactionsTableTable, TransactionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES accounts (id)',
    ),
  );
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
    'memo',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _receiptImagePathMeta = const VerificationMeta(
    'receiptImagePath',
  );
  @override
  late final GeneratedColumn<String> receiptImagePath = GeneratedColumn<String>(
    'receipt_image_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    amount,
    type,
    categoryId,
    accountId,
    memo,
    receiptImagePath,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('memo')) {
      context.handle(
        _memoMeta,
        memo.isAcceptableOrUnknown(data['memo']!, _memoMeta),
      );
    }
    if (data.containsKey('receipt_image_path')) {
      context.handle(
        _receiptImagePathMeta,
        receiptImagePath.isAcceptableOrUnknown(
          data['receipt_image_path']!,
          _receiptImagePathMeta,
        ),
      );
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}account_id'],
      )!,
      memo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}memo'],
      ),
      receiptImagePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}receipt_image_path'],
      ),
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $TransactionsTableTable createAlias(String alias) {
    return $TransactionsTableTable(attachedDatabase, alias);
  }
}

class TransactionsTableData extends DataClass
    implements Insertable<TransactionsTableData> {
  final int id;
  final DateTime date;
  final int amount;
  final String type;
  final int categoryId;
  final int accountId;
  final String? memo;
  final String? receiptImagePath;
  final String? userId;
  const TransactionsTableData({
    required this.id,
    required this.date,
    required this.amount,
    required this.type,
    required this.categoryId,
    required this.accountId,
    this.memo,
    this.receiptImagePath,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    map['amount'] = Variable<int>(amount);
    map['type'] = Variable<String>(type);
    map['category_id'] = Variable<int>(categoryId);
    map['account_id'] = Variable<int>(accountId);
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String>(memo);
    }
    if (!nullToAbsent || receiptImagePath != null) {
      map['receipt_image_path'] = Variable<String>(receiptImagePath);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  TransactionsTableCompanion toCompanion(bool nullToAbsent) {
    return TransactionsTableCompanion(
      id: Value(id),
      date: Value(date),
      amount: Value(amount),
      type: Value(type),
      categoryId: Value(categoryId),
      accountId: Value(accountId),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
      receiptImagePath: receiptImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(receiptImagePath),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory TransactionsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionsTableData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      amount: serializer.fromJson<int>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      accountId: serializer.fromJson<int>(json['accountId']),
      memo: serializer.fromJson<String?>(json['memo']),
      receiptImagePath: serializer.fromJson<String?>(json['receiptImagePath']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'amount': serializer.toJson<int>(amount),
      'type': serializer.toJson<String>(type),
      'categoryId': serializer.toJson<int>(categoryId),
      'accountId': serializer.toJson<int>(accountId),
      'memo': serializer.toJson<String?>(memo),
      'receiptImagePath': serializer.toJson<String?>(receiptImagePath),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  TransactionsTableData copyWith({
    int? id,
    DateTime? date,
    int? amount,
    String? type,
    int? categoryId,
    int? accountId,
    Value<String?> memo = const Value.absent(),
    Value<String?> receiptImagePath = const Value.absent(),
    Value<String?> userId = const Value.absent(),
  }) => TransactionsTableData(
    id: id ?? this.id,
    date: date ?? this.date,
    amount: amount ?? this.amount,
    type: type ?? this.type,
    categoryId: categoryId ?? this.categoryId,
    accountId: accountId ?? this.accountId,
    memo: memo.present ? memo.value : this.memo,
    receiptImagePath: receiptImagePath.present
        ? receiptImagePath.value
        : this.receiptImagePath,
    userId: userId.present ? userId.value : this.userId,
  );
  TransactionsTableData copyWithCompanion(TransactionsTableCompanion data) {
    return TransactionsTableData(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      amount: data.amount.present ? data.amount.value : this.amount,
      type: data.type.present ? data.type.value : this.type,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      memo: data.memo.present ? data.memo.value : this.memo,
      receiptImagePath: data.receiptImagePath.present
          ? data.receiptImagePath.value
          : this.receiptImagePath,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsTableData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('categoryId: $categoryId, ')
          ..write('accountId: $accountId, ')
          ..write('memo: $memo, ')
          ..write('receiptImagePath: $receiptImagePath, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    amount,
    type,
    categoryId,
    accountId,
    memo,
    receiptImagePath,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionsTableData &&
          other.id == this.id &&
          other.date == this.date &&
          other.amount == this.amount &&
          other.type == this.type &&
          other.categoryId == this.categoryId &&
          other.accountId == this.accountId &&
          other.memo == this.memo &&
          other.receiptImagePath == this.receiptImagePath &&
          other.userId == this.userId);
}

class TransactionsTableCompanion
    extends UpdateCompanion<TransactionsTableData> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<int> amount;
  final Value<String> type;
  final Value<int> categoryId;
  final Value<int> accountId;
  final Value<String?> memo;
  final Value<String?> receiptImagePath;
  final Value<String?> userId;
  const TransactionsTableCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.accountId = const Value.absent(),
    this.memo = const Value.absent(),
    this.receiptImagePath = const Value.absent(),
    this.userId = const Value.absent(),
  });
  TransactionsTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    required int amount,
    required String type,
    required int categoryId,
    required int accountId,
    this.memo = const Value.absent(),
    this.receiptImagePath = const Value.absent(),
    this.userId = const Value.absent(),
  }) : date = Value(date),
       amount = Value(amount),
       type = Value(type),
       categoryId = Value(categoryId),
       accountId = Value(accountId);
  static Insertable<TransactionsTableData> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<int>? amount,
    Expression<String>? type,
    Expression<int>? categoryId,
    Expression<int>? accountId,
    Expression<String>? memo,
    Expression<String>? receiptImagePath,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (categoryId != null) 'category_id': categoryId,
      if (accountId != null) 'account_id': accountId,
      if (memo != null) 'memo': memo,
      if (receiptImagePath != null) 'receipt_image_path': receiptImagePath,
      if (userId != null) 'user_id': userId,
    });
  }

  TransactionsTableCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? date,
    Value<int>? amount,
    Value<String>? type,
    Value<int>? categoryId,
    Value<int>? accountId,
    Value<String?>? memo,
    Value<String?>? receiptImagePath,
    Value<String?>? userId,
  }) {
    return TransactionsTableCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      categoryId: categoryId ?? this.categoryId,
      accountId: accountId ?? this.accountId,
      memo: memo ?? this.memo,
      receiptImagePath: receiptImagePath ?? this.receiptImagePath,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    if (receiptImagePath.present) {
      map['receipt_image_path'] = Variable<String>(receiptImagePath.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsTableCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('categoryId: $categoryId, ')
          ..write('accountId: $accountId, ')
          ..write('memo: $memo, ')
          ..write('receiptImagePath: $receiptImagePath, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $TransactionTagsTableTable extends TransactionTagsTable
    with TableInfo<$TransactionTagsTableTable, TransactionTagsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionTagsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _transactionIdMeta = const VerificationMeta(
    'transactionId',
  );
  @override
  late final GeneratedColumn<int> transactionId = GeneratedColumn<int>(
    'transaction_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES transactions (id)',
    ),
  );
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
    'tag_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tags (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [transactionId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionTagsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('transaction_id')) {
      context.handle(
        _transactionIdMeta,
        transactionId.isAcceptableOrUnknown(
          data['transaction_id']!,
          _transactionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transactionIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {transactionId, tagId};
  @override
  TransactionTagsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionTagsTableData(
      transactionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}transaction_id'],
      )!,
      tagId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tag_id'],
      )!,
    );
  }

  @override
  $TransactionTagsTableTable createAlias(String alias) {
    return $TransactionTagsTableTable(attachedDatabase, alias);
  }
}

class TransactionTagsTableData extends DataClass
    implements Insertable<TransactionTagsTableData> {
  final int transactionId;
  final int tagId;
  const TransactionTagsTableData({
    required this.transactionId,
    required this.tagId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['transaction_id'] = Variable<int>(transactionId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  TransactionTagsTableCompanion toCompanion(bool nullToAbsent) {
    return TransactionTagsTableCompanion(
      transactionId: Value(transactionId),
      tagId: Value(tagId),
    );
  }

  factory TransactionTagsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionTagsTableData(
      transactionId: serializer.fromJson<int>(json['transactionId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'transactionId': serializer.toJson<int>(transactionId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  TransactionTagsTableData copyWith({int? transactionId, int? tagId}) =>
      TransactionTagsTableData(
        transactionId: transactionId ?? this.transactionId,
        tagId: tagId ?? this.tagId,
      );
  TransactionTagsTableData copyWithCompanion(
    TransactionTagsTableCompanion data,
  ) {
    return TransactionTagsTableData(
      transactionId: data.transactionId.present
          ? data.transactionId.value
          : this.transactionId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTagsTableData(')
          ..write('transactionId: $transactionId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(transactionId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionTagsTableData &&
          other.transactionId == this.transactionId &&
          other.tagId == this.tagId);
}

class TransactionTagsTableCompanion
    extends UpdateCompanion<TransactionTagsTableData> {
  final Value<int> transactionId;
  final Value<int> tagId;
  final Value<int> rowid;
  const TransactionTagsTableCompanion({
    this.transactionId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionTagsTableCompanion.insert({
    required int transactionId,
    required int tagId,
    this.rowid = const Value.absent(),
  }) : transactionId = Value(transactionId),
       tagId = Value(tagId);
  static Insertable<TransactionTagsTableData> custom({
    Expression<int>? transactionId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (transactionId != null) 'transaction_id': transactionId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionTagsTableCompanion copyWith({
    Value<int>? transactionId,
    Value<int>? tagId,
    Value<int>? rowid,
  }) {
    return TransactionTagsTableCompanion(
      transactionId: transactionId ?? this.transactionId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (transactionId.present) {
      map['transaction_id'] = Variable<int>(transactionId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionTagsTableCompanion(')
          ..write('transactionId: $transactionId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BudgetsTableTable extends BudgetsTable
    with TableInfo<$BudgetsTableTable, BudgetsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BudgetsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  static const VerificationMeta _yearMonthMeta = const VerificationMeta(
    'yearMonth',
  );
  @override
  late final GeneratedColumn<String> yearMonth = GeneratedColumn<String>(
    'year_month',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 7,
      maxTextLength: 7,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _limitAmountMeta = const VerificationMeta(
    'limitAmount',
  );
  @override
  late final GeneratedColumn<int> limitAmount = GeneratedColumn<int>(
    'limit_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    categoryId,
    yearMonth,
    limitAmount,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'budgets';
  @override
  VerificationContext validateIntegrity(
    Insertable<BudgetsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('year_month')) {
      context.handle(
        _yearMonthMeta,
        yearMonth.isAcceptableOrUnknown(data['year_month']!, _yearMonthMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMonthMeta);
    }
    if (data.containsKey('limit_amount')) {
      context.handle(
        _limitAmountMeta,
        limitAmount.isAcceptableOrUnknown(
          data['limit_amount']!,
          _limitAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_limitAmountMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BudgetsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BudgetsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      yearMonth: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year_month'],
      )!,
      limitAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}limit_amount'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $BudgetsTableTable createAlias(String alias) {
    return $BudgetsTableTable(attachedDatabase, alias);
  }
}

class BudgetsTableData extends DataClass
    implements Insertable<BudgetsTableData> {
  final int id;
  final int categoryId;
  final String yearMonth;
  final int limitAmount;
  final String? userId;
  const BudgetsTableData({
    required this.id,
    required this.categoryId,
    required this.yearMonth,
    required this.limitAmount,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_id'] = Variable<int>(categoryId);
    map['year_month'] = Variable<String>(yearMonth);
    map['limit_amount'] = Variable<int>(limitAmount);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  BudgetsTableCompanion toCompanion(bool nullToAbsent) {
    return BudgetsTableCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      yearMonth: Value(yearMonth),
      limitAmount: Value(limitAmount),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory BudgetsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BudgetsTableData(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      yearMonth: serializer.fromJson<String>(json['yearMonth']),
      limitAmount: serializer.fromJson<int>(json['limitAmount']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<int>(categoryId),
      'yearMonth': serializer.toJson<String>(yearMonth),
      'limitAmount': serializer.toJson<int>(limitAmount),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  BudgetsTableData copyWith({
    int? id,
    int? categoryId,
    String? yearMonth,
    int? limitAmount,
    Value<String?> userId = const Value.absent(),
  }) => BudgetsTableData(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    yearMonth: yearMonth ?? this.yearMonth,
    limitAmount: limitAmount ?? this.limitAmount,
    userId: userId.present ? userId.value : this.userId,
  );
  BudgetsTableData copyWithCompanion(BudgetsTableCompanion data) {
    return BudgetsTableData(
      id: data.id.present ? data.id.value : this.id,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      yearMonth: data.yearMonth.present ? data.yearMonth.value : this.yearMonth,
      limitAmount: data.limitAmount.present
          ? data.limitAmount.value
          : this.limitAmount,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BudgetsTableData(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('limitAmount: $limitAmount, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, categoryId, yearMonth, limitAmount, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BudgetsTableData &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.yearMonth == this.yearMonth &&
          other.limitAmount == this.limitAmount &&
          other.userId == this.userId);
}

class BudgetsTableCompanion extends UpdateCompanion<BudgetsTableData> {
  final Value<int> id;
  final Value<int> categoryId;
  final Value<String> yearMonth;
  final Value<int> limitAmount;
  final Value<String?> userId;
  const BudgetsTableCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.yearMonth = const Value.absent(),
    this.limitAmount = const Value.absent(),
    this.userId = const Value.absent(),
  });
  BudgetsTableCompanion.insert({
    this.id = const Value.absent(),
    required int categoryId,
    required String yearMonth,
    required int limitAmount,
    this.userId = const Value.absent(),
  }) : categoryId = Value(categoryId),
       yearMonth = Value(yearMonth),
       limitAmount = Value(limitAmount);
  static Insertable<BudgetsTableData> custom({
    Expression<int>? id,
    Expression<int>? categoryId,
    Expression<String>? yearMonth,
    Expression<int>? limitAmount,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (yearMonth != null) 'year_month': yearMonth,
      if (limitAmount != null) 'limit_amount': limitAmount,
      if (userId != null) 'user_id': userId,
    });
  }

  BudgetsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? categoryId,
    Value<String>? yearMonth,
    Value<int>? limitAmount,
    Value<String?>? userId,
  }) {
    return BudgetsTableCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      yearMonth: yearMonth ?? this.yearMonth,
      limitAmount: limitAmount ?? this.limitAmount,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (yearMonth.present) {
      map['year_month'] = Variable<String>(yearMonth.value);
    }
    if (limitAmount.present) {
      map['limit_amount'] = Variable<int>(limitAmount.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BudgetsTableCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('yearMonth: $yearMonth, ')
          ..write('limitAmount: $limitAmount, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $RecurringTransactionsTableTable extends RecurringTransactionsTable
    with
        TableInfo<
          $RecurringTransactionsTableTable,
          RecurringTransactionsTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecurringTransactionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayOfMonthMeta = const VerificationMeta(
    'dayOfMonth',
  );
  @override
  late final GeneratedColumn<int> dayOfMonth = GeneratedColumn<int>(
    'day_of_month',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
    'memo',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    categoryId,
    amount,
    dayOfMonth,
    memo,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recurring_transactions';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecurringTransactionsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('day_of_month')) {
      context.handle(
        _dayOfMonthMeta,
        dayOfMonth.isAcceptableOrUnknown(
          data['day_of_month']!,
          _dayOfMonthMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dayOfMonthMeta);
    }
    if (data.containsKey('memo')) {
      context.handle(
        _memoMeta,
        memo.isAcceptableOrUnknown(data['memo']!, _memoMeta),
      );
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecurringTransactionsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecurringTransactionsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      dayOfMonth: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_of_month'],
      )!,
      memo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}memo'],
      ),
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $RecurringTransactionsTableTable createAlias(String alias) {
    return $RecurringTransactionsTableTable(attachedDatabase, alias);
  }
}

class RecurringTransactionsTableData extends DataClass
    implements Insertable<RecurringTransactionsTableData> {
  final int id;
  final int categoryId;
  final int amount;
  final int dayOfMonth;
  final String? memo;
  final String? userId;
  const RecurringTransactionsTableData({
    required this.id,
    required this.categoryId,
    required this.amount,
    required this.dayOfMonth,
    this.memo,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_id'] = Variable<int>(categoryId);
    map['amount'] = Variable<int>(amount);
    map['day_of_month'] = Variable<int>(dayOfMonth);
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String>(memo);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  RecurringTransactionsTableCompanion toCompanion(bool nullToAbsent) {
    return RecurringTransactionsTableCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      amount: Value(amount),
      dayOfMonth: Value(dayOfMonth),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory RecurringTransactionsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecurringTransactionsTableData(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      amount: serializer.fromJson<int>(json['amount']),
      dayOfMonth: serializer.fromJson<int>(json['dayOfMonth']),
      memo: serializer.fromJson<String?>(json['memo']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<int>(categoryId),
      'amount': serializer.toJson<int>(amount),
      'dayOfMonth': serializer.toJson<int>(dayOfMonth),
      'memo': serializer.toJson<String?>(memo),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  RecurringTransactionsTableData copyWith({
    int? id,
    int? categoryId,
    int? amount,
    int? dayOfMonth,
    Value<String?> memo = const Value.absent(),
    Value<String?> userId = const Value.absent(),
  }) => RecurringTransactionsTableData(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    amount: amount ?? this.amount,
    dayOfMonth: dayOfMonth ?? this.dayOfMonth,
    memo: memo.present ? memo.value : this.memo,
    userId: userId.present ? userId.value : this.userId,
  );
  RecurringTransactionsTableData copyWithCompanion(
    RecurringTransactionsTableCompanion data,
  ) {
    return RecurringTransactionsTableData(
      id: data.id.present ? data.id.value : this.id,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      amount: data.amount.present ? data.amount.value : this.amount,
      dayOfMonth: data.dayOfMonth.present
          ? data.dayOfMonth.value
          : this.dayOfMonth,
      memo: data.memo.present ? data.memo.value : this.memo,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecurringTransactionsTableData(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('amount: $amount, ')
          ..write('dayOfMonth: $dayOfMonth, ')
          ..write('memo: $memo, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, categoryId, amount, dayOfMonth, memo, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecurringTransactionsTableData &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.amount == this.amount &&
          other.dayOfMonth == this.dayOfMonth &&
          other.memo == this.memo &&
          other.userId == this.userId);
}

class RecurringTransactionsTableCompanion
    extends UpdateCompanion<RecurringTransactionsTableData> {
  final Value<int> id;
  final Value<int> categoryId;
  final Value<int> amount;
  final Value<int> dayOfMonth;
  final Value<String?> memo;
  final Value<String?> userId;
  const RecurringTransactionsTableCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.amount = const Value.absent(),
    this.dayOfMonth = const Value.absent(),
    this.memo = const Value.absent(),
    this.userId = const Value.absent(),
  });
  RecurringTransactionsTableCompanion.insert({
    this.id = const Value.absent(),
    required int categoryId,
    required int amount,
    required int dayOfMonth,
    this.memo = const Value.absent(),
    this.userId = const Value.absent(),
  }) : categoryId = Value(categoryId),
       amount = Value(amount),
       dayOfMonth = Value(dayOfMonth);
  static Insertable<RecurringTransactionsTableData> custom({
    Expression<int>? id,
    Expression<int>? categoryId,
    Expression<int>? amount,
    Expression<int>? dayOfMonth,
    Expression<String>? memo,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (amount != null) 'amount': amount,
      if (dayOfMonth != null) 'day_of_month': dayOfMonth,
      if (memo != null) 'memo': memo,
      if (userId != null) 'user_id': userId,
    });
  }

  RecurringTransactionsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? categoryId,
    Value<int>? amount,
    Value<int>? dayOfMonth,
    Value<String?>? memo,
    Value<String?>? userId,
  }) {
    return RecurringTransactionsTableCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      amount: amount ?? this.amount,
      dayOfMonth: dayOfMonth ?? this.dayOfMonth,
      memo: memo ?? this.memo,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (dayOfMonth.present) {
      map['day_of_month'] = Variable<int>(dayOfMonth.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecurringTransactionsTableCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('amount: $amount, ')
          ..write('dayOfMonth: $dayOfMonth, ')
          ..write('memo: $memo, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $HoldingsTableTable extends HoldingsTable
    with TableInfo<$HoldingsTableTable, HoldingsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HoldingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES accounts (id)',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String> market = GeneratedColumn<String>(
    'market',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avgCostMeta = const VerificationMeta(
    'avgCost',
  );
  @override
  late final GeneratedColumn<double> avgCost = GeneratedColumn<double>(
    'avg_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    symbol,
    market,
    quantity,
    avgCost,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'holdings';
  @override
  VerificationContext validateIntegrity(
    Insertable<HoldingsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('market')) {
      context.handle(
        _marketMeta,
        market.isAcceptableOrUnknown(data['market']!, _marketMeta),
      );
    } else if (isInserting) {
      context.missing(_marketMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('avg_cost')) {
      context.handle(
        _avgCostMeta,
        avgCost.isAcceptableOrUnknown(data['avg_cost']!, _avgCostMeta),
      );
    } else if (isInserting) {
      context.missing(_avgCostMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HoldingsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HoldingsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}account_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      market: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}market'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      )!,
      avgCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_cost'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $HoldingsTableTable createAlias(String alias) {
    return $HoldingsTableTable(attachedDatabase, alias);
  }
}

class HoldingsTableData extends DataClass
    implements Insertable<HoldingsTableData> {
  final int id;
  final int accountId;
  final String symbol;
  final String market;
  final double quantity;
  final double avgCost;
  final String? userId;
  const HoldingsTableData({
    required this.id,
    required this.accountId,
    required this.symbol,
    required this.market,
    required this.quantity,
    required this.avgCost,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['account_id'] = Variable<int>(accountId);
    map['symbol'] = Variable<String>(symbol);
    map['market'] = Variable<String>(market);
    map['quantity'] = Variable<double>(quantity);
    map['avg_cost'] = Variable<double>(avgCost);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  HoldingsTableCompanion toCompanion(bool nullToAbsent) {
    return HoldingsTableCompanion(
      id: Value(id),
      accountId: Value(accountId),
      symbol: Value(symbol),
      market: Value(market),
      quantity: Value(quantity),
      avgCost: Value(avgCost),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory HoldingsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HoldingsTableData(
      id: serializer.fromJson<int>(json['id']),
      accountId: serializer.fromJson<int>(json['accountId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      market: serializer.fromJson<String>(json['market']),
      quantity: serializer.fromJson<double>(json['quantity']),
      avgCost: serializer.fromJson<double>(json['avgCost']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'accountId': serializer.toJson<int>(accountId),
      'symbol': serializer.toJson<String>(symbol),
      'market': serializer.toJson<String>(market),
      'quantity': serializer.toJson<double>(quantity),
      'avgCost': serializer.toJson<double>(avgCost),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  HoldingsTableData copyWith({
    int? id,
    int? accountId,
    String? symbol,
    String? market,
    double? quantity,
    double? avgCost,
    Value<String?> userId = const Value.absent(),
  }) => HoldingsTableData(
    id: id ?? this.id,
    accountId: accountId ?? this.accountId,
    symbol: symbol ?? this.symbol,
    market: market ?? this.market,
    quantity: quantity ?? this.quantity,
    avgCost: avgCost ?? this.avgCost,
    userId: userId.present ? userId.value : this.userId,
  );
  HoldingsTableData copyWithCompanion(HoldingsTableCompanion data) {
    return HoldingsTableData(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      market: data.market.present ? data.market.value : this.market,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      avgCost: data.avgCost.present ? data.avgCost.value : this.avgCost,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HoldingsTableData(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('market: $market, ')
          ..write('quantity: $quantity, ')
          ..write('avgCost: $avgCost, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, accountId, symbol, market, quantity, avgCost, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HoldingsTableData &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.symbol == this.symbol &&
          other.market == this.market &&
          other.quantity == this.quantity &&
          other.avgCost == this.avgCost &&
          other.userId == this.userId);
}

class HoldingsTableCompanion extends UpdateCompanion<HoldingsTableData> {
  final Value<int> id;
  final Value<int> accountId;
  final Value<String> symbol;
  final Value<String> market;
  final Value<double> quantity;
  final Value<double> avgCost;
  final Value<String?> userId;
  const HoldingsTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.market = const Value.absent(),
    this.quantity = const Value.absent(),
    this.avgCost = const Value.absent(),
    this.userId = const Value.absent(),
  });
  HoldingsTableCompanion.insert({
    this.id = const Value.absent(),
    required int accountId,
    required String symbol,
    required String market,
    required double quantity,
    required double avgCost,
    this.userId = const Value.absent(),
  }) : accountId = Value(accountId),
       symbol = Value(symbol),
       market = Value(market),
       quantity = Value(quantity),
       avgCost = Value(avgCost);
  static Insertable<HoldingsTableData> custom({
    Expression<int>? id,
    Expression<int>? accountId,
    Expression<String>? symbol,
    Expression<String>? market,
    Expression<double>? quantity,
    Expression<double>? avgCost,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (symbol != null) 'symbol': symbol,
      if (market != null) 'market': market,
      if (quantity != null) 'quantity': quantity,
      if (avgCost != null) 'avg_cost': avgCost,
      if (userId != null) 'user_id': userId,
    });
  }

  HoldingsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? accountId,
    Value<String>? symbol,
    Value<String>? market,
    Value<double>? quantity,
    Value<double>? avgCost,
    Value<String?>? userId,
  }) {
    return HoldingsTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      symbol: symbol ?? this.symbol,
      market: market ?? this.market,
      quantity: quantity ?? this.quantity,
      avgCost: avgCost ?? this.avgCost,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (market.present) {
      map['market'] = Variable<String>(market.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (avgCost.present) {
      map['avg_cost'] = Variable<double>(avgCost.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HoldingsTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('market: $market, ')
          ..write('quantity: $quantity, ')
          ..write('avgCost: $avgCost, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $TransactionsInvestTableTable extends TransactionsInvestTable
    with TableInfo<$TransactionsInvestTableTable, TransactionsInvestTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsInvestTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES accounts (id)',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String> market = GeneratedColumn<String>(
    'market',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _feeMeta = const VerificationMeta('fee');
  @override
  late final GeneratedColumn<double> fee = GeneratedColumn<double>(
    'fee',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    symbol,
    market,
    type,
    date,
    quantity,
    price,
    fee,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transactions_invest';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionsInvestTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('market')) {
      context.handle(
        _marketMeta,
        market.isAcceptableOrUnknown(data['market']!, _marketMeta),
      );
    } else if (isInserting) {
      context.missing(_marketMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('fee')) {
      context.handle(
        _feeMeta,
        fee.isAcceptableOrUnknown(data['fee']!, _feeMeta),
      );
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionsInvestTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionsInvestTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}account_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      market: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}market'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      fee: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fee'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $TransactionsInvestTableTable createAlias(String alias) {
    return $TransactionsInvestTableTable(attachedDatabase, alias);
  }
}

class TransactionsInvestTableData extends DataClass
    implements Insertable<TransactionsInvestTableData> {
  final int id;
  final int accountId;
  final String symbol;
  final String market;
  final String type;
  final DateTime date;
  final double quantity;
  final double price;
  final double fee;
  final String? userId;
  const TransactionsInvestTableData({
    required this.id,
    required this.accountId,
    required this.symbol,
    required this.market,
    required this.type,
    required this.date,
    required this.quantity,
    required this.price,
    required this.fee,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['account_id'] = Variable<int>(accountId);
    map['symbol'] = Variable<String>(symbol);
    map['market'] = Variable<String>(market);
    map['type'] = Variable<String>(type);
    map['date'] = Variable<DateTime>(date);
    map['quantity'] = Variable<double>(quantity);
    map['price'] = Variable<double>(price);
    map['fee'] = Variable<double>(fee);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  TransactionsInvestTableCompanion toCompanion(bool nullToAbsent) {
    return TransactionsInvestTableCompanion(
      id: Value(id),
      accountId: Value(accountId),
      symbol: Value(symbol),
      market: Value(market),
      type: Value(type),
      date: Value(date),
      quantity: Value(quantity),
      price: Value(price),
      fee: Value(fee),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory TransactionsInvestTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionsInvestTableData(
      id: serializer.fromJson<int>(json['id']),
      accountId: serializer.fromJson<int>(json['accountId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      market: serializer.fromJson<String>(json['market']),
      type: serializer.fromJson<String>(json['type']),
      date: serializer.fromJson<DateTime>(json['date']),
      quantity: serializer.fromJson<double>(json['quantity']),
      price: serializer.fromJson<double>(json['price']),
      fee: serializer.fromJson<double>(json['fee']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'accountId': serializer.toJson<int>(accountId),
      'symbol': serializer.toJson<String>(symbol),
      'market': serializer.toJson<String>(market),
      'type': serializer.toJson<String>(type),
      'date': serializer.toJson<DateTime>(date),
      'quantity': serializer.toJson<double>(quantity),
      'price': serializer.toJson<double>(price),
      'fee': serializer.toJson<double>(fee),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  TransactionsInvestTableData copyWith({
    int? id,
    int? accountId,
    String? symbol,
    String? market,
    String? type,
    DateTime? date,
    double? quantity,
    double? price,
    double? fee,
    Value<String?> userId = const Value.absent(),
  }) => TransactionsInvestTableData(
    id: id ?? this.id,
    accountId: accountId ?? this.accountId,
    symbol: symbol ?? this.symbol,
    market: market ?? this.market,
    type: type ?? this.type,
    date: date ?? this.date,
    quantity: quantity ?? this.quantity,
    price: price ?? this.price,
    fee: fee ?? this.fee,
    userId: userId.present ? userId.value : this.userId,
  );
  TransactionsInvestTableData copyWithCompanion(
    TransactionsInvestTableCompanion data,
  ) {
    return TransactionsInvestTableData(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      market: data.market.present ? data.market.value : this.market,
      type: data.type.present ? data.type.value : this.type,
      date: data.date.present ? data.date.value : this.date,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      price: data.price.present ? data.price.value : this.price,
      fee: data.fee.present ? data.fee.value : this.fee,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsInvestTableData(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('market: $market, ')
          ..write('type: $type, ')
          ..write('date: $date, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('fee: $fee, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    accountId,
    symbol,
    market,
    type,
    date,
    quantity,
    price,
    fee,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionsInvestTableData &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.symbol == this.symbol &&
          other.market == this.market &&
          other.type == this.type &&
          other.date == this.date &&
          other.quantity == this.quantity &&
          other.price == this.price &&
          other.fee == this.fee &&
          other.userId == this.userId);
}

class TransactionsInvestTableCompanion
    extends UpdateCompanion<TransactionsInvestTableData> {
  final Value<int> id;
  final Value<int> accountId;
  final Value<String> symbol;
  final Value<String> market;
  final Value<String> type;
  final Value<DateTime> date;
  final Value<double> quantity;
  final Value<double> price;
  final Value<double> fee;
  final Value<String?> userId;
  const TransactionsInvestTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.market = const Value.absent(),
    this.type = const Value.absent(),
    this.date = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
    this.fee = const Value.absent(),
    this.userId = const Value.absent(),
  });
  TransactionsInvestTableCompanion.insert({
    this.id = const Value.absent(),
    required int accountId,
    required String symbol,
    required String market,
    required String type,
    required DateTime date,
    required double quantity,
    required double price,
    this.fee = const Value.absent(),
    this.userId = const Value.absent(),
  }) : accountId = Value(accountId),
       symbol = Value(symbol),
       market = Value(market),
       type = Value(type),
       date = Value(date),
       quantity = Value(quantity),
       price = Value(price);
  static Insertable<TransactionsInvestTableData> custom({
    Expression<int>? id,
    Expression<int>? accountId,
    Expression<String>? symbol,
    Expression<String>? market,
    Expression<String>? type,
    Expression<DateTime>? date,
    Expression<double>? quantity,
    Expression<double>? price,
    Expression<double>? fee,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (symbol != null) 'symbol': symbol,
      if (market != null) 'market': market,
      if (type != null) 'type': type,
      if (date != null) 'date': date,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
      if (fee != null) 'fee': fee,
      if (userId != null) 'user_id': userId,
    });
  }

  TransactionsInvestTableCompanion copyWith({
    Value<int>? id,
    Value<int>? accountId,
    Value<String>? symbol,
    Value<String>? market,
    Value<String>? type,
    Value<DateTime>? date,
    Value<double>? quantity,
    Value<double>? price,
    Value<double>? fee,
    Value<String?>? userId,
  }) {
    return TransactionsInvestTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      symbol: symbol ?? this.symbol,
      market: market ?? this.market,
      type: type ?? this.type,
      date: date ?? this.date,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      fee: fee ?? this.fee,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (market.present) {
      map['market'] = Variable<String>(market.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (fee.present) {
      map['fee'] = Variable<double>(fee.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsInvestTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('market: $market, ')
          ..write('type: $type, ')
          ..write('date: $date, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('fee: $fee, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $DividendsTableTable extends DividendsTable
    with TableInfo<$DividendsTableTable, DividendsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DividendsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES accounts (id)',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fxRateAppliedMeta = const VerificationMeta(
    'fxRateApplied',
  );
  @override
  late final GeneratedColumn<double> fxRateApplied = GeneratedColumn<double>(
    'fx_rate_applied',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(1.0),
  );
  static const VerificationMeta _krwConvertedAmountMeta =
      const VerificationMeta('krwConvertedAmount');
  @override
  late final GeneratedColumn<int> krwConvertedAmount = GeneratedColumn<int>(
    'krw_converted_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    symbol,
    date,
    currency,
    amount,
    fxRateApplied,
    krwConvertedAmount,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dividends';
  @override
  VerificationContext validateIntegrity(
    Insertable<DividendsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('fx_rate_applied')) {
      context.handle(
        _fxRateAppliedMeta,
        fxRateApplied.isAcceptableOrUnknown(
          data['fx_rate_applied']!,
          _fxRateAppliedMeta,
        ),
      );
    }
    if (data.containsKey('krw_converted_amount')) {
      context.handle(
        _krwConvertedAmountMeta,
        krwConvertedAmount.isAcceptableOrUnknown(
          data['krw_converted_amount']!,
          _krwConvertedAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_krwConvertedAmountMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DividendsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DividendsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}account_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      fxRateApplied: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fx_rate_applied'],
      )!,
      krwConvertedAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}krw_converted_amount'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $DividendsTableTable createAlias(String alias) {
    return $DividendsTableTable(attachedDatabase, alias);
  }
}

class DividendsTableData extends DataClass
    implements Insertable<DividendsTableData> {
  final int id;
  final int accountId;
  final String symbol;
  final DateTime date;
  final String currency;
  final double amount;
  final double fxRateApplied;
  final int krwConvertedAmount;
  final String? userId;
  const DividendsTableData({
    required this.id,
    required this.accountId,
    required this.symbol,
    required this.date,
    required this.currency,
    required this.amount,
    required this.fxRateApplied,
    required this.krwConvertedAmount,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['account_id'] = Variable<int>(accountId);
    map['symbol'] = Variable<String>(symbol);
    map['date'] = Variable<DateTime>(date);
    map['currency'] = Variable<String>(currency);
    map['amount'] = Variable<double>(amount);
    map['fx_rate_applied'] = Variable<double>(fxRateApplied);
    map['krw_converted_amount'] = Variable<int>(krwConvertedAmount);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  DividendsTableCompanion toCompanion(bool nullToAbsent) {
    return DividendsTableCompanion(
      id: Value(id),
      accountId: Value(accountId),
      symbol: Value(symbol),
      date: Value(date),
      currency: Value(currency),
      amount: Value(amount),
      fxRateApplied: Value(fxRateApplied),
      krwConvertedAmount: Value(krwConvertedAmount),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory DividendsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DividendsTableData(
      id: serializer.fromJson<int>(json['id']),
      accountId: serializer.fromJson<int>(json['accountId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      date: serializer.fromJson<DateTime>(json['date']),
      currency: serializer.fromJson<String>(json['currency']),
      amount: serializer.fromJson<double>(json['amount']),
      fxRateApplied: serializer.fromJson<double>(json['fxRateApplied']),
      krwConvertedAmount: serializer.fromJson<int>(json['krwConvertedAmount']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'accountId': serializer.toJson<int>(accountId),
      'symbol': serializer.toJson<String>(symbol),
      'date': serializer.toJson<DateTime>(date),
      'currency': serializer.toJson<String>(currency),
      'amount': serializer.toJson<double>(amount),
      'fxRateApplied': serializer.toJson<double>(fxRateApplied),
      'krwConvertedAmount': serializer.toJson<int>(krwConvertedAmount),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  DividendsTableData copyWith({
    int? id,
    int? accountId,
    String? symbol,
    DateTime? date,
    String? currency,
    double? amount,
    double? fxRateApplied,
    int? krwConvertedAmount,
    Value<String?> userId = const Value.absent(),
  }) => DividendsTableData(
    id: id ?? this.id,
    accountId: accountId ?? this.accountId,
    symbol: symbol ?? this.symbol,
    date: date ?? this.date,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    fxRateApplied: fxRateApplied ?? this.fxRateApplied,
    krwConvertedAmount: krwConvertedAmount ?? this.krwConvertedAmount,
    userId: userId.present ? userId.value : this.userId,
  );
  DividendsTableData copyWithCompanion(DividendsTableCompanion data) {
    return DividendsTableData(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      date: data.date.present ? data.date.value : this.date,
      currency: data.currency.present ? data.currency.value : this.currency,
      amount: data.amount.present ? data.amount.value : this.amount,
      fxRateApplied: data.fxRateApplied.present
          ? data.fxRateApplied.value
          : this.fxRateApplied,
      krwConvertedAmount: data.krwConvertedAmount.present
          ? data.krwConvertedAmount.value
          : this.krwConvertedAmount,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DividendsTableData(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('date: $date, ')
          ..write('currency: $currency, ')
          ..write('amount: $amount, ')
          ..write('fxRateApplied: $fxRateApplied, ')
          ..write('krwConvertedAmount: $krwConvertedAmount, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    accountId,
    symbol,
    date,
    currency,
    amount,
    fxRateApplied,
    krwConvertedAmount,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DividendsTableData &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.symbol == this.symbol &&
          other.date == this.date &&
          other.currency == this.currency &&
          other.amount == this.amount &&
          other.fxRateApplied == this.fxRateApplied &&
          other.krwConvertedAmount == this.krwConvertedAmount &&
          other.userId == this.userId);
}

class DividendsTableCompanion extends UpdateCompanion<DividendsTableData> {
  final Value<int> id;
  final Value<int> accountId;
  final Value<String> symbol;
  final Value<DateTime> date;
  final Value<String> currency;
  final Value<double> amount;
  final Value<double> fxRateApplied;
  final Value<int> krwConvertedAmount;
  final Value<String?> userId;
  const DividendsTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.date = const Value.absent(),
    this.currency = const Value.absent(),
    this.amount = const Value.absent(),
    this.fxRateApplied = const Value.absent(),
    this.krwConvertedAmount = const Value.absent(),
    this.userId = const Value.absent(),
  });
  DividendsTableCompanion.insert({
    this.id = const Value.absent(),
    required int accountId,
    required String symbol,
    required DateTime date,
    required String currency,
    required double amount,
    this.fxRateApplied = const Value.absent(),
    required int krwConvertedAmount,
    this.userId = const Value.absent(),
  }) : accountId = Value(accountId),
       symbol = Value(symbol),
       date = Value(date),
       currency = Value(currency),
       amount = Value(amount),
       krwConvertedAmount = Value(krwConvertedAmount);
  static Insertable<DividendsTableData> custom({
    Expression<int>? id,
    Expression<int>? accountId,
    Expression<String>? symbol,
    Expression<DateTime>? date,
    Expression<String>? currency,
    Expression<double>? amount,
    Expression<double>? fxRateApplied,
    Expression<int>? krwConvertedAmount,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (symbol != null) 'symbol': symbol,
      if (date != null) 'date': date,
      if (currency != null) 'currency': currency,
      if (amount != null) 'amount': amount,
      if (fxRateApplied != null) 'fx_rate_applied': fxRateApplied,
      if (krwConvertedAmount != null)
        'krw_converted_amount': krwConvertedAmount,
      if (userId != null) 'user_id': userId,
    });
  }

  DividendsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? accountId,
    Value<String>? symbol,
    Value<DateTime>? date,
    Value<String>? currency,
    Value<double>? amount,
    Value<double>? fxRateApplied,
    Value<int>? krwConvertedAmount,
    Value<String?>? userId,
  }) {
    return DividendsTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      symbol: symbol ?? this.symbol,
      date: date ?? this.date,
      currency: currency ?? this.currency,
      amount: amount ?? this.amount,
      fxRateApplied: fxRateApplied ?? this.fxRateApplied,
      krwConvertedAmount: krwConvertedAmount ?? this.krwConvertedAmount,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (fxRateApplied.present) {
      map['fx_rate_applied'] = Variable<double>(fxRateApplied.value);
    }
    if (krwConvertedAmount.present) {
      map['krw_converted_amount'] = Variable<int>(krwConvertedAmount.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DividendsTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('symbol: $symbol, ')
          ..write('date: $date, ')
          ..write('currency: $currency, ')
          ..write('amount: $amount, ')
          ..write('fxRateApplied: $fxRateApplied, ')
          ..write('krwConvertedAmount: $krwConvertedAmount, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $DepositsWithdrawalsTableTable extends DepositsWithdrawalsTable
    with
        TableInfo<
          $DepositsWithdrawalsTableTable,
          DepositsWithdrawalsTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DepositsWithdrawalsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<int> accountId = GeneratedColumn<int>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES accounts (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    date,
    amount,
    type,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'deposits_withdrawals';
  @override
  VerificationContext validateIntegrity(
    Insertable<DepositsWithdrawalsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DepositsWithdrawalsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DepositsWithdrawalsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}account_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $DepositsWithdrawalsTableTable createAlias(String alias) {
    return $DepositsWithdrawalsTableTable(attachedDatabase, alias);
  }
}

class DepositsWithdrawalsTableData extends DataClass
    implements Insertable<DepositsWithdrawalsTableData> {
  final int id;
  final int accountId;
  final DateTime date;
  final int amount;
  final String type;
  final String? userId;
  const DepositsWithdrawalsTableData({
    required this.id,
    required this.accountId,
    required this.date,
    required this.amount,
    required this.type,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['account_id'] = Variable<int>(accountId);
    map['date'] = Variable<DateTime>(date);
    map['amount'] = Variable<int>(amount);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  DepositsWithdrawalsTableCompanion toCompanion(bool nullToAbsent) {
    return DepositsWithdrawalsTableCompanion(
      id: Value(id),
      accountId: Value(accountId),
      date: Value(date),
      amount: Value(amount),
      type: Value(type),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory DepositsWithdrawalsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DepositsWithdrawalsTableData(
      id: serializer.fromJson<int>(json['id']),
      accountId: serializer.fromJson<int>(json['accountId']),
      date: serializer.fromJson<DateTime>(json['date']),
      amount: serializer.fromJson<int>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'accountId': serializer.toJson<int>(accountId),
      'date': serializer.toJson<DateTime>(date),
      'amount': serializer.toJson<int>(amount),
      'type': serializer.toJson<String>(type),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  DepositsWithdrawalsTableData copyWith({
    int? id,
    int? accountId,
    DateTime? date,
    int? amount,
    String? type,
    Value<String?> userId = const Value.absent(),
  }) => DepositsWithdrawalsTableData(
    id: id ?? this.id,
    accountId: accountId ?? this.accountId,
    date: date ?? this.date,
    amount: amount ?? this.amount,
    type: type ?? this.type,
    userId: userId.present ? userId.value : this.userId,
  );
  DepositsWithdrawalsTableData copyWithCompanion(
    DepositsWithdrawalsTableCompanion data,
  ) {
    return DepositsWithdrawalsTableData(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      date: data.date.present ? data.date.value : this.date,
      amount: data.amount.present ? data.amount.value : this.amount,
      type: data.type.present ? data.type.value : this.type,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DepositsWithdrawalsTableData(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('date: $date, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, accountId, date, amount, type, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DepositsWithdrawalsTableData &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.date == this.date &&
          other.amount == this.amount &&
          other.type == this.type &&
          other.userId == this.userId);
}

class DepositsWithdrawalsTableCompanion
    extends UpdateCompanion<DepositsWithdrawalsTableData> {
  final Value<int> id;
  final Value<int> accountId;
  final Value<DateTime> date;
  final Value<int> amount;
  final Value<String> type;
  final Value<String?> userId;
  const DepositsWithdrawalsTableCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.date = const Value.absent(),
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.userId = const Value.absent(),
  });
  DepositsWithdrawalsTableCompanion.insert({
    this.id = const Value.absent(),
    required int accountId,
    required DateTime date,
    required int amount,
    required String type,
    this.userId = const Value.absent(),
  }) : accountId = Value(accountId),
       date = Value(date),
       amount = Value(amount),
       type = Value(type);
  static Insertable<DepositsWithdrawalsTableData> custom({
    Expression<int>? id,
    Expression<int>? accountId,
    Expression<DateTime>? date,
    Expression<int>? amount,
    Expression<String>? type,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (date != null) 'date': date,
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (userId != null) 'user_id': userId,
    });
  }

  DepositsWithdrawalsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? accountId,
    Value<DateTime>? date,
    Value<int>? amount,
    Value<String>? type,
    Value<String?>? userId,
  }) {
    return DepositsWithdrawalsTableCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      date: date ?? this.date,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<int>(accountId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepositsWithdrawalsTableCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('date: $date, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $PriceHistoryTableTable extends PriceHistoryTable
    with TableInfo<$PriceHistoryTableTable, PriceHistoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PriceHistoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 20),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _closePriceMeta = const VerificationMeta(
    'closePrice',
  );
  @override
  late final GeneratedColumn<double> closePrice = GeneratedColumn<double>(
    'close_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, symbol, date, closePrice];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'price_history';
  @override
  VerificationContext validateIntegrity(
    Insertable<PriceHistoryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('close_price')) {
      context.handle(
        _closePriceMeta,
        closePrice.isAcceptableOrUnknown(data['close_price']!, _closePriceMeta),
      );
    } else if (isInserting) {
      context.missing(_closePriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PriceHistoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PriceHistoryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      closePrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}close_price'],
      )!,
    );
  }

  @override
  $PriceHistoryTableTable createAlias(String alias) {
    return $PriceHistoryTableTable(attachedDatabase, alias);
  }
}

class PriceHistoryTableData extends DataClass
    implements Insertable<PriceHistoryTableData> {
  final int id;
  final String symbol;
  final DateTime date;
  final double closePrice;
  const PriceHistoryTableData({
    required this.id,
    required this.symbol,
    required this.date,
    required this.closePrice,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['symbol'] = Variable<String>(symbol);
    map['date'] = Variable<DateTime>(date);
    map['close_price'] = Variable<double>(closePrice);
    return map;
  }

  PriceHistoryTableCompanion toCompanion(bool nullToAbsent) {
    return PriceHistoryTableCompanion(
      id: Value(id),
      symbol: Value(symbol),
      date: Value(date),
      closePrice: Value(closePrice),
    );
  }

  factory PriceHistoryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PriceHistoryTableData(
      id: serializer.fromJson<int>(json['id']),
      symbol: serializer.fromJson<String>(json['symbol']),
      date: serializer.fromJson<DateTime>(json['date']),
      closePrice: serializer.fromJson<double>(json['closePrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'symbol': serializer.toJson<String>(symbol),
      'date': serializer.toJson<DateTime>(date),
      'closePrice': serializer.toJson<double>(closePrice),
    };
  }

  PriceHistoryTableData copyWith({
    int? id,
    String? symbol,
    DateTime? date,
    double? closePrice,
  }) => PriceHistoryTableData(
    id: id ?? this.id,
    symbol: symbol ?? this.symbol,
    date: date ?? this.date,
    closePrice: closePrice ?? this.closePrice,
  );
  PriceHistoryTableData copyWithCompanion(PriceHistoryTableCompanion data) {
    return PriceHistoryTableData(
      id: data.id.present ? data.id.value : this.id,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      date: data.date.present ? data.date.value : this.date,
      closePrice: data.closePrice.present
          ? data.closePrice.value
          : this.closePrice,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PriceHistoryTableData(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('date: $date, ')
          ..write('closePrice: $closePrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, symbol, date, closePrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PriceHistoryTableData &&
          other.id == this.id &&
          other.symbol == this.symbol &&
          other.date == this.date &&
          other.closePrice == this.closePrice);
}

class PriceHistoryTableCompanion
    extends UpdateCompanion<PriceHistoryTableData> {
  final Value<int> id;
  final Value<String> symbol;
  final Value<DateTime> date;
  final Value<double> closePrice;
  const PriceHistoryTableCompanion({
    this.id = const Value.absent(),
    this.symbol = const Value.absent(),
    this.date = const Value.absent(),
    this.closePrice = const Value.absent(),
  });
  PriceHistoryTableCompanion.insert({
    this.id = const Value.absent(),
    required String symbol,
    required DateTime date,
    required double closePrice,
  }) : symbol = Value(symbol),
       date = Value(date),
       closePrice = Value(closePrice);
  static Insertable<PriceHistoryTableData> custom({
    Expression<int>? id,
    Expression<String>? symbol,
    Expression<DateTime>? date,
    Expression<double>? closePrice,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (symbol != null) 'symbol': symbol,
      if (date != null) 'date': date,
      if (closePrice != null) 'close_price': closePrice,
    });
  }

  PriceHistoryTableCompanion copyWith({
    Value<int>? id,
    Value<String>? symbol,
    Value<DateTime>? date,
    Value<double>? closePrice,
  }) {
    return PriceHistoryTableCompanion(
      id: id ?? this.id,
      symbol: symbol ?? this.symbol,
      date: date ?? this.date,
      closePrice: closePrice ?? this.closePrice,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (closePrice.present) {
      map['close_price'] = Variable<double>(closePrice.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PriceHistoryTableCompanion(')
          ..write('id: $id, ')
          ..write('symbol: $symbol, ')
          ..write('date: $date, ')
          ..write('closePrice: $closePrice')
          ..write(')'))
        .toString();
  }
}

class $BenchmarkIndexHistoryTableTable extends BenchmarkIndexHistoryTable
    with
        TableInfo<
          $BenchmarkIndexHistoryTableTable,
          BenchmarkIndexHistoryTableData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BenchmarkIndexHistoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _indexNameMeta = const VerificationMeta(
    'indexName',
  );
  @override
  late final GeneratedColumn<String> indexName = GeneratedColumn<String>(
    'index_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, indexName, date, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'benchmark_index_history';
  @override
  VerificationContext validateIntegrity(
    Insertable<BenchmarkIndexHistoryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('index_name')) {
      context.handle(
        _indexNameMeta,
        indexName.isAcceptableOrUnknown(data['index_name']!, _indexNameMeta),
      );
    } else if (isInserting) {
      context.missing(_indexNameMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BenchmarkIndexHistoryTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BenchmarkIndexHistoryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      indexName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}index_name'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $BenchmarkIndexHistoryTableTable createAlias(String alias) {
    return $BenchmarkIndexHistoryTableTable(attachedDatabase, alias);
  }
}

class BenchmarkIndexHistoryTableData extends DataClass
    implements Insertable<BenchmarkIndexHistoryTableData> {
  final int id;
  final String indexName;
  final DateTime date;
  final double value;
  const BenchmarkIndexHistoryTableData({
    required this.id,
    required this.indexName,
    required this.date,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['index_name'] = Variable<String>(indexName);
    map['date'] = Variable<DateTime>(date);
    map['value'] = Variable<double>(value);
    return map;
  }

  BenchmarkIndexHistoryTableCompanion toCompanion(bool nullToAbsent) {
    return BenchmarkIndexHistoryTableCompanion(
      id: Value(id),
      indexName: Value(indexName),
      date: Value(date),
      value: Value(value),
    );
  }

  factory BenchmarkIndexHistoryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BenchmarkIndexHistoryTableData(
      id: serializer.fromJson<int>(json['id']),
      indexName: serializer.fromJson<String>(json['indexName']),
      date: serializer.fromJson<DateTime>(json['date']),
      value: serializer.fromJson<double>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'indexName': serializer.toJson<String>(indexName),
      'date': serializer.toJson<DateTime>(date),
      'value': serializer.toJson<double>(value),
    };
  }

  BenchmarkIndexHistoryTableData copyWith({
    int? id,
    String? indexName,
    DateTime? date,
    double? value,
  }) => BenchmarkIndexHistoryTableData(
    id: id ?? this.id,
    indexName: indexName ?? this.indexName,
    date: date ?? this.date,
    value: value ?? this.value,
  );
  BenchmarkIndexHistoryTableData copyWithCompanion(
    BenchmarkIndexHistoryTableCompanion data,
  ) {
    return BenchmarkIndexHistoryTableData(
      id: data.id.present ? data.id.value : this.id,
      indexName: data.indexName.present ? data.indexName.value : this.indexName,
      date: data.date.present ? data.date.value : this.date,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BenchmarkIndexHistoryTableData(')
          ..write('id: $id, ')
          ..write('indexName: $indexName, ')
          ..write('date: $date, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, indexName, date, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BenchmarkIndexHistoryTableData &&
          other.id == this.id &&
          other.indexName == this.indexName &&
          other.date == this.date &&
          other.value == this.value);
}

class BenchmarkIndexHistoryTableCompanion
    extends UpdateCompanion<BenchmarkIndexHistoryTableData> {
  final Value<int> id;
  final Value<String> indexName;
  final Value<DateTime> date;
  final Value<double> value;
  const BenchmarkIndexHistoryTableCompanion({
    this.id = const Value.absent(),
    this.indexName = const Value.absent(),
    this.date = const Value.absent(),
    this.value = const Value.absent(),
  });
  BenchmarkIndexHistoryTableCompanion.insert({
    this.id = const Value.absent(),
    required String indexName,
    required DateTime date,
    required double value,
  }) : indexName = Value(indexName),
       date = Value(date),
       value = Value(value);
  static Insertable<BenchmarkIndexHistoryTableData> custom({
    Expression<int>? id,
    Expression<String>? indexName,
    Expression<DateTime>? date,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (indexName != null) 'index_name': indexName,
      if (date != null) 'date': date,
      if (value != null) 'value': value,
    });
  }

  BenchmarkIndexHistoryTableCompanion copyWith({
    Value<int>? id,
    Value<String>? indexName,
    Value<DateTime>? date,
    Value<double>? value,
  }) {
    return BenchmarkIndexHistoryTableCompanion(
      id: id ?? this.id,
      indexName: indexName ?? this.indexName,
      date: date ?? this.date,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (indexName.present) {
      map['index_name'] = Variable<String>(indexName.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BenchmarkIndexHistoryTableCompanion(')
          ..write('id: $id, ')
          ..write('indexName: $indexName, ')
          ..write('date: $date, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $GoalsTableTable extends GoalsTable
    with TableInfo<$GoalsTableTable, GoalsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GoalsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _targetAssetAmountMeta = const VerificationMeta(
    'targetAssetAmount',
  );
  @override
  late final GeneratedColumn<int> targetAssetAmount = GeneratedColumn<int>(
    'target_asset_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _annualDepositTargetMeta =
      const VerificationMeta('annualDepositTarget');
  @override
  late final GeneratedColumn<int> annualDepositTarget = GeneratedColumn<int>(
    'annual_deposit_target',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _retirementDateMeta = const VerificationMeta(
    'retirementDate',
  );
  @override
  late final GeneratedColumn<DateTime> retirementDate =
      GeneratedColumn<DateTime>(
        'retirement_date',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    targetAssetAmount,
    annualDepositTarget,
    retirementDate,
    userId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals';
  @override
  VerificationContext validateIntegrity(
    Insertable<GoalsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('target_asset_amount')) {
      context.handle(
        _targetAssetAmountMeta,
        targetAssetAmount.isAcceptableOrUnknown(
          data['target_asset_amount']!,
          _targetAssetAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetAssetAmountMeta);
    }
    if (data.containsKey('annual_deposit_target')) {
      context.handle(
        _annualDepositTargetMeta,
        annualDepositTarget.isAcceptableOrUnknown(
          data['annual_deposit_target']!,
          _annualDepositTargetMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_annualDepositTargetMeta);
    }
    if (data.containsKey('retirement_date')) {
      context.handle(
        _retirementDateMeta,
        retirementDate.isAcceptableOrUnknown(
          data['retirement_date']!,
          _retirementDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_retirementDateMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GoalsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GoalsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      targetAssetAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target_asset_amount'],
      )!,
      annualDepositTarget: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}annual_deposit_target'],
      )!,
      retirementDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}retirement_date'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      ),
    );
  }

  @override
  $GoalsTableTable createAlias(String alias) {
    return $GoalsTableTable(attachedDatabase, alias);
  }
}

class GoalsTableData extends DataClass implements Insertable<GoalsTableData> {
  final int id;
  final int targetAssetAmount;
  final int annualDepositTarget;
  final DateTime retirementDate;
  final String? userId;
  const GoalsTableData({
    required this.id,
    required this.targetAssetAmount,
    required this.annualDepositTarget,
    required this.retirementDate,
    this.userId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['target_asset_amount'] = Variable<int>(targetAssetAmount);
    map['annual_deposit_target'] = Variable<int>(annualDepositTarget);
    map['retirement_date'] = Variable<DateTime>(retirementDate);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  GoalsTableCompanion toCompanion(bool nullToAbsent) {
    return GoalsTableCompanion(
      id: Value(id),
      targetAssetAmount: Value(targetAssetAmount),
      annualDepositTarget: Value(annualDepositTarget),
      retirementDate: Value(retirementDate),
      userId: userId == null && nullToAbsent
          ? const Value.absent()
          : Value(userId),
    );
  }

  factory GoalsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GoalsTableData(
      id: serializer.fromJson<int>(json['id']),
      targetAssetAmount: serializer.fromJson<int>(json['targetAssetAmount']),
      annualDepositTarget: serializer.fromJson<int>(
        json['annualDepositTarget'],
      ),
      retirementDate: serializer.fromJson<DateTime>(json['retirementDate']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'targetAssetAmount': serializer.toJson<int>(targetAssetAmount),
      'annualDepositTarget': serializer.toJson<int>(annualDepositTarget),
      'retirementDate': serializer.toJson<DateTime>(retirementDate),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  GoalsTableData copyWith({
    int? id,
    int? targetAssetAmount,
    int? annualDepositTarget,
    DateTime? retirementDate,
    Value<String?> userId = const Value.absent(),
  }) => GoalsTableData(
    id: id ?? this.id,
    targetAssetAmount: targetAssetAmount ?? this.targetAssetAmount,
    annualDepositTarget: annualDepositTarget ?? this.annualDepositTarget,
    retirementDate: retirementDate ?? this.retirementDate,
    userId: userId.present ? userId.value : this.userId,
  );
  GoalsTableData copyWithCompanion(GoalsTableCompanion data) {
    return GoalsTableData(
      id: data.id.present ? data.id.value : this.id,
      targetAssetAmount: data.targetAssetAmount.present
          ? data.targetAssetAmount.value
          : this.targetAssetAmount,
      annualDepositTarget: data.annualDepositTarget.present
          ? data.annualDepositTarget.value
          : this.annualDepositTarget,
      retirementDate: data.retirementDate.present
          ? data.retirementDate.value
          : this.retirementDate,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GoalsTableData(')
          ..write('id: $id, ')
          ..write('targetAssetAmount: $targetAssetAmount, ')
          ..write('annualDepositTarget: $annualDepositTarget, ')
          ..write('retirementDate: $retirementDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    targetAssetAmount,
    annualDepositTarget,
    retirementDate,
    userId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GoalsTableData &&
          other.id == this.id &&
          other.targetAssetAmount == this.targetAssetAmount &&
          other.annualDepositTarget == this.annualDepositTarget &&
          other.retirementDate == this.retirementDate &&
          other.userId == this.userId);
}

class GoalsTableCompanion extends UpdateCompanion<GoalsTableData> {
  final Value<int> id;
  final Value<int> targetAssetAmount;
  final Value<int> annualDepositTarget;
  final Value<DateTime> retirementDate;
  final Value<String?> userId;
  const GoalsTableCompanion({
    this.id = const Value.absent(),
    this.targetAssetAmount = const Value.absent(),
    this.annualDepositTarget = const Value.absent(),
    this.retirementDate = const Value.absent(),
    this.userId = const Value.absent(),
  });
  GoalsTableCompanion.insert({
    this.id = const Value.absent(),
    required int targetAssetAmount,
    required int annualDepositTarget,
    required DateTime retirementDate,
    this.userId = const Value.absent(),
  }) : targetAssetAmount = Value(targetAssetAmount),
       annualDepositTarget = Value(annualDepositTarget),
       retirementDate = Value(retirementDate);
  static Insertable<GoalsTableData> custom({
    Expression<int>? id,
    Expression<int>? targetAssetAmount,
    Expression<int>? annualDepositTarget,
    Expression<DateTime>? retirementDate,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (targetAssetAmount != null) 'target_asset_amount': targetAssetAmount,
      if (annualDepositTarget != null)
        'annual_deposit_target': annualDepositTarget,
      if (retirementDate != null) 'retirement_date': retirementDate,
      if (userId != null) 'user_id': userId,
    });
  }

  GoalsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? targetAssetAmount,
    Value<int>? annualDepositTarget,
    Value<DateTime>? retirementDate,
    Value<String?>? userId,
  }) {
    return GoalsTableCompanion(
      id: id ?? this.id,
      targetAssetAmount: targetAssetAmount ?? this.targetAssetAmount,
      annualDepositTarget: annualDepositTarget ?? this.annualDepositTarget,
      retirementDate: retirementDate ?? this.retirementDate,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (targetAssetAmount.present) {
      map['target_asset_amount'] = Variable<int>(targetAssetAmount.value);
    }
    if (annualDepositTarget.present) {
      map['annual_deposit_target'] = Variable<int>(annualDepositTarget.value);
    }
    if (retirementDate.present) {
      map['retirement_date'] = Variable<DateTime>(retirementDate.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsTableCompanion(')
          ..write('id: $id, ')
          ..write('targetAssetAmount: $targetAssetAmount, ')
          ..write('annualDepositTarget: $annualDepositTarget, ')
          ..write('retirementDate: $retirementDate, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AppSettingsTableTable appSettingsTable = $AppSettingsTableTable(
    this,
  );
  late final $AccountsTableTable accountsTable = $AccountsTableTable(this);
  late final $CategoriesTableTable categoriesTable = $CategoriesTableTable(
    this,
  );
  late final $TagsTableTable tagsTable = $TagsTableTable(this);
  late final $TransactionsTableTable transactionsTable =
      $TransactionsTableTable(this);
  late final $TransactionTagsTableTable transactionTagsTable =
      $TransactionTagsTableTable(this);
  late final $BudgetsTableTable budgetsTable = $BudgetsTableTable(this);
  late final $RecurringTransactionsTableTable recurringTransactionsTable =
      $RecurringTransactionsTableTable(this);
  late final $HoldingsTableTable holdingsTable = $HoldingsTableTable(this);
  late final $TransactionsInvestTableTable transactionsInvestTable =
      $TransactionsInvestTableTable(this);
  late final $DividendsTableTable dividendsTable = $DividendsTableTable(this);
  late final $DepositsWithdrawalsTableTable depositsWithdrawalsTable =
      $DepositsWithdrawalsTableTable(this);
  late final $PriceHistoryTableTable priceHistoryTable =
      $PriceHistoryTableTable(this);
  late final $BenchmarkIndexHistoryTableTable benchmarkIndexHistoryTable =
      $BenchmarkIndexHistoryTableTable(this);
  late final $GoalsTableTable goalsTable = $GoalsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    appSettingsTable,
    accountsTable,
    categoriesTable,
    tagsTable,
    transactionsTable,
    transactionTagsTable,
    budgetsTable,
    recurringTransactionsTable,
    holdingsTable,
    transactionsInvestTable,
    dividendsTable,
    depositsWithdrawalsTable,
    priceHistoryTable,
    benchmarkIndexHistoryTable,
    goalsTable,
  ];
}

typedef $$AppSettingsTableTableCreateCompanionBuilder =
    AppSettingsTableCompanion Function({
      Value<int> id,
      required String displayName,
      Value<String?> googleAccountEmail,
      Value<bool> autoBackupEnabled,
      Value<String> theme,
      Value<bool> onboardingCompleted,
      Value<DateTime?> lastBackupAt,
      Value<DateTime> createdAt,
    });
typedef $$AppSettingsTableTableUpdateCompanionBuilder =
    AppSettingsTableCompanion Function({
      Value<int> id,
      Value<String> displayName,
      Value<String?> googleAccountEmail,
      Value<bool> autoBackupEnabled,
      Value<String> theme,
      Value<bool> onboardingCompleted,
      Value<DateTime?> lastBackupAt,
      Value<DateTime> createdAt,
    });

class $$AppSettingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get googleAccountEmail => $composableBuilder(
    column: $table.googleAccountEmail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get autoBackupEnabled => $composableBuilder(
    column: $table.autoBackupEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastBackupAt => $composableBuilder(
    column: $table.lastBackupAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AppSettingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get googleAccountEmail => $composableBuilder(
    column: $table.googleAccountEmail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get autoBackupEnabled => $composableBuilder(
    column: $table.autoBackupEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastBackupAt => $composableBuilder(
    column: $table.lastBackupAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AppSettingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AppSettingsTableTable> {
  $$AppSettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get googleAccountEmail => $composableBuilder(
    column: $table.googleAccountEmail,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get autoBackupEnabled => $composableBuilder(
    column: $table.autoBackupEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<String> get theme =>
      $composableBuilder(column: $table.theme, builder: (column) => column);

  GeneratedColumn<bool> get onboardingCompleted => $composableBuilder(
    column: $table.onboardingCompleted,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastBackupAt => $composableBuilder(
    column: $table.lastBackupAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$AppSettingsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AppSettingsTableTable,
          AppSettingsTableData,
          $$AppSettingsTableTableFilterComposer,
          $$AppSettingsTableTableOrderingComposer,
          $$AppSettingsTableTableAnnotationComposer,
          $$AppSettingsTableTableCreateCompanionBuilder,
          $$AppSettingsTableTableUpdateCompanionBuilder,
          (
            AppSettingsTableData,
            BaseReferences<
              _$AppDatabase,
              $AppSettingsTableTable,
              AppSettingsTableData
            >,
          ),
          AppSettingsTableData,
          PrefetchHooks Function()
        > {
  $$AppSettingsTableTableTableManager(
    _$AppDatabase db,
    $AppSettingsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppSettingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppSettingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppSettingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> displayName = const Value.absent(),
                Value<String?> googleAccountEmail = const Value.absent(),
                Value<bool> autoBackupEnabled = const Value.absent(),
                Value<String> theme = const Value.absent(),
                Value<bool> onboardingCompleted = const Value.absent(),
                Value<DateTime?> lastBackupAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => AppSettingsTableCompanion(
                id: id,
                displayName: displayName,
                googleAccountEmail: googleAccountEmail,
                autoBackupEnabled: autoBackupEnabled,
                theme: theme,
                onboardingCompleted: onboardingCompleted,
                lastBackupAt: lastBackupAt,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String displayName,
                Value<String?> googleAccountEmail = const Value.absent(),
                Value<bool> autoBackupEnabled = const Value.absent(),
                Value<String> theme = const Value.absent(),
                Value<bool> onboardingCompleted = const Value.absent(),
                Value<DateTime?> lastBackupAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => AppSettingsTableCompanion.insert(
                id: id,
                displayName: displayName,
                googleAccountEmail: googleAccountEmail,
                autoBackupEnabled: autoBackupEnabled,
                theme: theme,
                onboardingCompleted: onboardingCompleted,
                lastBackupAt: lastBackupAt,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AppSettingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AppSettingsTableTable,
      AppSettingsTableData,
      $$AppSettingsTableTableFilterComposer,
      $$AppSettingsTableTableOrderingComposer,
      $$AppSettingsTableTableAnnotationComposer,
      $$AppSettingsTableTableCreateCompanionBuilder,
      $$AppSettingsTableTableUpdateCompanionBuilder,
      (
        AppSettingsTableData,
        BaseReferences<
          _$AppDatabase,
          $AppSettingsTableTable,
          AppSettingsTableData
        >,
      ),
      AppSettingsTableData,
      PrefetchHooks Function()
    >;
typedef $$AccountsTableTableCreateCompanionBuilder =
    AccountsTableCompanion Function({
      Value<int> id,
      required String name,
      required String institution,
      required String type,
      required String domain,
      Value<String> currency,
      Value<int> initialBalance,
      required DateTime balanceDate,
      Value<String?> userId,
    });
typedef $$AccountsTableTableUpdateCompanionBuilder =
    AccountsTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> institution,
      Value<String> type,
      Value<String> domain,
      Value<String> currency,
      Value<int> initialBalance,
      Value<DateTime> balanceDate,
      Value<String?> userId,
    });

final class $$AccountsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $AccountsTableTable, AccountsTableData> {
  $$AccountsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<
    $TransactionsTableTable,
    List<TransactionsTableData>
  >
  _transactionsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionsTable,
        aliasName: $_aliasNameGenerator(
          db.accountsTable.id,
          db.transactionsTable.accountId,
        ),
      );

  $$TransactionsTableTableProcessedTableManager get transactionsTableRefs {
    final manager = $$TransactionsTableTableTableManager(
      $_db,
      $_db.transactionsTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$HoldingsTableTable, List<HoldingsTableData>>
  _holdingsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.holdingsTable,
    aliasName: $_aliasNameGenerator(
      db.accountsTable.id,
      db.holdingsTable.accountId,
    ),
  );

  $$HoldingsTableTableProcessedTableManager get holdingsTableRefs {
    final manager = $$HoldingsTableTableTableManager(
      $_db,
      $_db.holdingsTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_holdingsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $TransactionsInvestTableTable,
    List<TransactionsInvestTableData>
  >
  _transactionsInvestTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionsInvestTable,
        aliasName: $_aliasNameGenerator(
          db.accountsTable.id,
          db.transactionsInvestTable.accountId,
        ),
      );

  $$TransactionsInvestTableTableProcessedTableManager
  get transactionsInvestTableRefs {
    final manager = $$TransactionsInvestTableTableTableManager(
      $_db,
      $_db.transactionsInvestTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionsInvestTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$DividendsTableTable, List<DividendsTableData>>
  _dividendsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.dividendsTable,
    aliasName: $_aliasNameGenerator(
      db.accountsTable.id,
      db.dividendsTable.accountId,
    ),
  );

  $$DividendsTableTableProcessedTableManager get dividendsTableRefs {
    final manager = $$DividendsTableTableTableManager(
      $_db,
      $_db.dividendsTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_dividendsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $DepositsWithdrawalsTableTable,
    List<DepositsWithdrawalsTableData>
  >
  _depositsWithdrawalsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.depositsWithdrawalsTable,
        aliasName: $_aliasNameGenerator(
          db.accountsTable.id,
          db.depositsWithdrawalsTable.accountId,
        ),
      );

  $$DepositsWithdrawalsTableTableProcessedTableManager
  get depositsWithdrawalsTableRefs {
    final manager = $$DepositsWithdrawalsTableTableTableManager(
      $_db,
      $_db.depositsWithdrawalsTable,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _depositsWithdrawalsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AccountsTableTableFilterComposer
    extends Composer<_$AppDatabase, $AccountsTableTable> {
  $$AccountsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get initialBalance => $composableBuilder(
    column: $table.initialBalance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get balanceDate => $composableBuilder(
    column: $table.balanceDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> transactionsTableRefs(
    Expression<bool> Function($$TransactionsTableTableFilterComposer f) f,
  ) {
    final $$TransactionsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionsTable,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionsTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> holdingsTableRefs(
    Expression<bool> Function($$HoldingsTableTableFilterComposer f) f,
  ) {
    final $$HoldingsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.holdingsTable,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HoldingsTableTableFilterComposer(
            $db: $db,
            $table: $db.holdingsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> transactionsInvestTableRefs(
    Expression<bool> Function($$TransactionsInvestTableTableFilterComposer f) f,
  ) {
    final $$TransactionsInvestTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionsInvestTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionsInvestTableTableFilterComposer(
                $db: $db,
                $table: $db.transactionsInvestTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> dividendsTableRefs(
    Expression<bool> Function($$DividendsTableTableFilterComposer f) f,
  ) {
    final $$DividendsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dividendsTable,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DividendsTableTableFilterComposer(
            $db: $db,
            $table: $db.dividendsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> depositsWithdrawalsTableRefs(
    Expression<bool> Function($$DepositsWithdrawalsTableTableFilterComposer f)
    f,
  ) {
    final $$DepositsWithdrawalsTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.depositsWithdrawalsTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$DepositsWithdrawalsTableTableFilterComposer(
                $db: $db,
                $table: $db.depositsWithdrawalsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AccountsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountsTableTable> {
  $$AccountsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get initialBalance => $composableBuilder(
    column: $table.initialBalance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get balanceDate => $composableBuilder(
    column: $table.balanceDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AccountsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountsTableTable> {
  $$AccountsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get domain =>
      $composableBuilder(column: $table.domain, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<int> get initialBalance => $composableBuilder(
    column: $table.initialBalance,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get balanceDate => $composableBuilder(
    column: $table.balanceDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  Expression<T> transactionsTableRefs<T extends Object>(
    Expression<T> Function($$TransactionsTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionsTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> holdingsTableRefs<T extends Object>(
    Expression<T> Function($$HoldingsTableTableAnnotationComposer a) f,
  ) {
    final $$HoldingsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.holdingsTable,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HoldingsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.holdingsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> transactionsInvestTableRefs<T extends Object>(
    Expression<T> Function($$TransactionsInvestTableTableAnnotationComposer a)
    f,
  ) {
    final $$TransactionsInvestTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionsInvestTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionsInvestTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionsInvestTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> dividendsTableRefs<T extends Object>(
    Expression<T> Function($$DividendsTableTableAnnotationComposer a) f,
  ) {
    final $$DividendsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.dividendsTable,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DividendsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.dividendsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> depositsWithdrawalsTableRefs<T extends Object>(
    Expression<T> Function($$DepositsWithdrawalsTableTableAnnotationComposer a)
    f,
  ) {
    final $$DepositsWithdrawalsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.depositsWithdrawalsTable,
          getReferencedColumn: (t) => t.accountId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$DepositsWithdrawalsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.depositsWithdrawalsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$AccountsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AccountsTableTable,
          AccountsTableData,
          $$AccountsTableTableFilterComposer,
          $$AccountsTableTableOrderingComposer,
          $$AccountsTableTableAnnotationComposer,
          $$AccountsTableTableCreateCompanionBuilder,
          $$AccountsTableTableUpdateCompanionBuilder,
          (AccountsTableData, $$AccountsTableTableReferences),
          AccountsTableData,
          PrefetchHooks Function({
            bool transactionsTableRefs,
            bool holdingsTableRefs,
            bool transactionsInvestTableRefs,
            bool dividendsTableRefs,
            bool depositsWithdrawalsTableRefs,
          })
        > {
  $$AccountsTableTableTableManager(_$AppDatabase db, $AccountsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> institution = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> domain = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<int> initialBalance = const Value.absent(),
                Value<DateTime> balanceDate = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => AccountsTableCompanion(
                id: id,
                name: name,
                institution: institution,
                type: type,
                domain: domain,
                currency: currency,
                initialBalance: initialBalance,
                balanceDate: balanceDate,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String institution,
                required String type,
                required String domain,
                Value<String> currency = const Value.absent(),
                Value<int> initialBalance = const Value.absent(),
                required DateTime balanceDate,
                Value<String?> userId = const Value.absent(),
              }) => AccountsTableCompanion.insert(
                id: id,
                name: name,
                institution: institution,
                type: type,
                domain: domain,
                currency: currency,
                initialBalance: initialBalance,
                balanceDate: balanceDate,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$AccountsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                transactionsTableRefs = false,
                holdingsTableRefs = false,
                transactionsInvestTableRefs = false,
                dividendsTableRefs = false,
                depositsWithdrawalsTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (transactionsTableRefs) db.transactionsTable,
                    if (holdingsTableRefs) db.holdingsTable,
                    if (transactionsInvestTableRefs) db.transactionsInvestTable,
                    if (dividendsTableRefs) db.dividendsTable,
                    if (depositsWithdrawalsTableRefs)
                      db.depositsWithdrawalsTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (transactionsTableRefs)
                        await $_getPrefetchedData<
                          AccountsTableData,
                          $AccountsTableTable,
                          TransactionsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$AccountsTableTableReferences
                              ._transactionsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (holdingsTableRefs)
                        await $_getPrefetchedData<
                          AccountsTableData,
                          $AccountsTableTable,
                          HoldingsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$AccountsTableTableReferences
                              ._holdingsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).holdingsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (transactionsInvestTableRefs)
                        await $_getPrefetchedData<
                          AccountsTableData,
                          $AccountsTableTable,
                          TransactionsInvestTableData
                        >(
                          currentTable: table,
                          referencedTable: $$AccountsTableTableReferences
                              ._transactionsInvestTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionsInvestTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (dividendsTableRefs)
                        await $_getPrefetchedData<
                          AccountsTableData,
                          $AccountsTableTable,
                          DividendsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$AccountsTableTableReferences
                              ._dividendsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).dividendsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (depositsWithdrawalsTableRefs)
                        await $_getPrefetchedData<
                          AccountsTableData,
                          $AccountsTableTable,
                          DepositsWithdrawalsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$AccountsTableTableReferences
                              ._depositsWithdrawalsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).depositsWithdrawalsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AccountsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AccountsTableTable,
      AccountsTableData,
      $$AccountsTableTableFilterComposer,
      $$AccountsTableTableOrderingComposer,
      $$AccountsTableTableAnnotationComposer,
      $$AccountsTableTableCreateCompanionBuilder,
      $$AccountsTableTableUpdateCompanionBuilder,
      (AccountsTableData, $$AccountsTableTableReferences),
      AccountsTableData,
      PrefetchHooks Function({
        bool transactionsTableRefs,
        bool holdingsTableRefs,
        bool transactionsInvestTableRefs,
        bool dividendsTableRefs,
        bool depositsWithdrawalsTableRefs,
      })
    >;
typedef $$CategoriesTableTableCreateCompanionBuilder =
    CategoriesTableCompanion Function({
      Value<int> id,
      required String name,
      Value<int?> parentCategoryId,
      Value<bool> isFixed,
      Value<String?> userId,
    });
typedef $$CategoriesTableTableUpdateCompanionBuilder =
    CategoriesTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int?> parentCategoryId,
      Value<bool> isFixed,
      Value<String?> userId,
    });

final class $$CategoriesTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $CategoriesTableTable,
          CategoriesTableData
        > {
  $$CategoriesTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CategoriesTableTable _parentCategoryIdTable(_$AppDatabase db) =>
      db.categoriesTable.createAlias(
        $_aliasNameGenerator(
          db.categoriesTable.parentCategoryId,
          db.categoriesTable.id,
        ),
      );

  $$CategoriesTableTableProcessedTableManager? get parentCategoryId {
    final $_column = $_itemColumn<int>('parent_category_id');
    if ($_column == null) return null;
    final manager = $$CategoriesTableTableTableManager(
      $_db,
      $_db.categoriesTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentCategoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $TransactionsTableTable,
    List<TransactionsTableData>
  >
  _transactionsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionsTable,
        aliasName: $_aliasNameGenerator(
          db.categoriesTable.id,
          db.transactionsTable.categoryId,
        ),
      );

  $$TransactionsTableTableProcessedTableManager get transactionsTableRefs {
    final manager = $$TransactionsTableTableTableManager(
      $_db,
      $_db.transactionsTable,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$BudgetsTableTable, List<BudgetsTableData>>
  _budgetsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.budgetsTable,
    aliasName: $_aliasNameGenerator(
      db.categoriesTable.id,
      db.budgetsTable.categoryId,
    ),
  );

  $$BudgetsTableTableProcessedTableManager get budgetsTableRefs {
    final manager = $$BudgetsTableTableTableManager(
      $_db,
      $_db.budgetsTable,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_budgetsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $RecurringTransactionsTableTable,
    List<RecurringTransactionsTableData>
  >
  _recurringTransactionsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recurringTransactionsTable,
        aliasName: $_aliasNameGenerator(
          db.categoriesTable.id,
          db.recurringTransactionsTable.categoryId,
        ),
      );

  $$RecurringTransactionsTableTableProcessedTableManager
  get recurringTransactionsTableRefs {
    final manager = $$RecurringTransactionsTableTableTableManager(
      $_db,
      $_db.recurringTransactionsTable,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recurringTransactionsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoriesTableTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFixed => $composableBuilder(
    column: $table.isFixed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableTableFilterComposer get parentCategoryId {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentCategoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableFilterComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> transactionsTableRefs(
    Expression<bool> Function($$TransactionsTableTableFilterComposer f) f,
  ) {
    final $$TransactionsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionsTable,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionsTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> budgetsTableRefs(
    Expression<bool> Function($$BudgetsTableTableFilterComposer f) f,
  ) {
    final $$BudgetsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.budgetsTable,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BudgetsTableTableFilterComposer(
            $db: $db,
            $table: $db.budgetsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recurringTransactionsTableRefs(
    Expression<bool> Function($$RecurringTransactionsTableTableFilterComposer f)
    f,
  ) {
    final $$RecurringTransactionsTableTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recurringTransactionsTable,
          getReferencedColumn: (t) => t.categoryId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecurringTransactionsTableTableFilterComposer(
                $db: $db,
                $table: $db.recurringTransactionsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$CategoriesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFixed => $composableBuilder(
    column: $table.isFixed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableTableOrderingComposer get parentCategoryId {
    final $$CategoriesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentCategoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CategoriesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTableTable> {
  $$CategoriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get isFixed =>
      $composableBuilder(column: $table.isFixed, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$CategoriesTableTableAnnotationComposer get parentCategoryId {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parentCategoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> transactionsTableRefs<T extends Object>(
    Expression<T> Function($$TransactionsTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionsTable,
          getReferencedColumn: (t) => t.categoryId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> budgetsTableRefs<T extends Object>(
    Expression<T> Function($$BudgetsTableTableAnnotationComposer a) f,
  ) {
    final $$BudgetsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.budgetsTable,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BudgetsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.budgetsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recurringTransactionsTableRefs<T extends Object>(
    Expression<T> Function(
      $$RecurringTransactionsTableTableAnnotationComposer a,
    )
    f,
  ) {
    final $$RecurringTransactionsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recurringTransactionsTable,
          getReferencedColumn: (t) => t.categoryId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecurringTransactionsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.recurringTransactionsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$CategoriesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTableTable,
          CategoriesTableData,
          $$CategoriesTableTableFilterComposer,
          $$CategoriesTableTableOrderingComposer,
          $$CategoriesTableTableAnnotationComposer,
          $$CategoriesTableTableCreateCompanionBuilder,
          $$CategoriesTableTableUpdateCompanionBuilder,
          (CategoriesTableData, $$CategoriesTableTableReferences),
          CategoriesTableData,
          PrefetchHooks Function({
            bool parentCategoryId,
            bool transactionsTableRefs,
            bool budgetsTableRefs,
            bool recurringTransactionsTableRefs,
          })
        > {
  $$CategoriesTableTableTableManager(
    _$AppDatabase db,
    $CategoriesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> parentCategoryId = const Value.absent(),
                Value<bool> isFixed = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => CategoriesTableCompanion(
                id: id,
                name: name,
                parentCategoryId: parentCategoryId,
                isFixed: isFixed,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<int?> parentCategoryId = const Value.absent(),
                Value<bool> isFixed = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => CategoriesTableCompanion.insert(
                id: id,
                name: name,
                parentCategoryId: parentCategoryId,
                isFixed: isFixed,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoriesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                parentCategoryId = false,
                transactionsTableRefs = false,
                budgetsTableRefs = false,
                recurringTransactionsTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (transactionsTableRefs) db.transactionsTable,
                    if (budgetsTableRefs) db.budgetsTable,
                    if (recurringTransactionsTableRefs)
                      db.recurringTransactionsTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (parentCategoryId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.parentCategoryId,
                                    referencedTable:
                                        $$CategoriesTableTableReferences
                                            ._parentCategoryIdTable(db),
                                    referencedColumn:
                                        $$CategoriesTableTableReferences
                                            ._parentCategoryIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (transactionsTableRefs)
                        await $_getPrefetchedData<
                          CategoriesTableData,
                          $CategoriesTableTable,
                          TransactionsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$CategoriesTableTableReferences
                              ._transactionsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CategoriesTableTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.categoryId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (budgetsTableRefs)
                        await $_getPrefetchedData<
                          CategoriesTableData,
                          $CategoriesTableTable,
                          BudgetsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$CategoriesTableTableReferences
                              ._budgetsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CategoriesTableTableReferences(
                                db,
                                table,
                                p0,
                              ).budgetsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.categoryId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recurringTransactionsTableRefs)
                        await $_getPrefetchedData<
                          CategoriesTableData,
                          $CategoriesTableTable,
                          RecurringTransactionsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$CategoriesTableTableReferences
                              ._recurringTransactionsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CategoriesTableTableReferences(
                                db,
                                table,
                                p0,
                              ).recurringTransactionsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.categoryId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$CategoriesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTableTable,
      CategoriesTableData,
      $$CategoriesTableTableFilterComposer,
      $$CategoriesTableTableOrderingComposer,
      $$CategoriesTableTableAnnotationComposer,
      $$CategoriesTableTableCreateCompanionBuilder,
      $$CategoriesTableTableUpdateCompanionBuilder,
      (CategoriesTableData, $$CategoriesTableTableReferences),
      CategoriesTableData,
      PrefetchHooks Function({
        bool parentCategoryId,
        bool transactionsTableRefs,
        bool budgetsTableRefs,
        bool recurringTransactionsTableRefs,
      })
    >;
typedef $$TagsTableTableCreateCompanionBuilder =
    TagsTableCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> userId,
    });
typedef $$TagsTableTableUpdateCompanionBuilder =
    TagsTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> userId,
    });

final class $$TagsTableTableReferences
    extends BaseReferences<_$AppDatabase, $TagsTableTable, TagsTableData> {
  $$TagsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $TransactionTagsTableTable,
    List<TransactionTagsTableData>
  >
  _transactionTagsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionTagsTable,
        aliasName: $_aliasNameGenerator(
          db.tagsTable.id,
          db.transactionTagsTable.tagId,
        ),
      );

  $$TransactionTagsTableTableProcessedTableManager
  get transactionTagsTableRefs {
    final manager = $$TransactionTagsTableTableTableManager(
      $_db,
      $_db.transactionTagsTable,
    ).filter((f) => f.tagId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionTagsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TagsTableTableFilterComposer
    extends Composer<_$AppDatabase, $TagsTableTable> {
  $$TagsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> transactionTagsTableRefs(
    Expression<bool> Function($$TransactionTagsTableTableFilterComposer f) f,
  ) {
    final $$TransactionTagsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTagsTable,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTagsTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionTagsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TagsTableTable> {
  $$TagsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagsTableTable> {
  $$TagsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  Expression<T> transactionTagsTableRefs<T extends Object>(
    Expression<T> Function($$TransactionTagsTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionTagsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionTagsTable,
          getReferencedColumn: (t) => t.tagId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionTagsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionTagsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TagsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagsTableTable,
          TagsTableData,
          $$TagsTableTableFilterComposer,
          $$TagsTableTableOrderingComposer,
          $$TagsTableTableAnnotationComposer,
          $$TagsTableTableCreateCompanionBuilder,
          $$TagsTableTableUpdateCompanionBuilder,
          (TagsTableData, $$TagsTableTableReferences),
          TagsTableData,
          PrefetchHooks Function({bool transactionTagsTableRefs})
        > {
  $$TagsTableTableTableManager(_$AppDatabase db, $TagsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => TagsTableCompanion(id: id, name: name, userId: userId),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> userId = const Value.absent(),
              }) =>
                  TagsTableCompanion.insert(id: id, name: name, userId: userId),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TagsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({transactionTagsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (transactionTagsTableRefs) db.transactionTagsTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (transactionTagsTableRefs)
                    await $_getPrefetchedData<
                      TagsTableData,
                      $TagsTableTable,
                      TransactionTagsTableData
                    >(
                      currentTable: table,
                      referencedTable: $$TagsTableTableReferences
                          ._transactionTagsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$TagsTableTableReferences(
                            db,
                            table,
                            p0,
                          ).transactionTagsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tagId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TagsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagsTableTable,
      TagsTableData,
      $$TagsTableTableFilterComposer,
      $$TagsTableTableOrderingComposer,
      $$TagsTableTableAnnotationComposer,
      $$TagsTableTableCreateCompanionBuilder,
      $$TagsTableTableUpdateCompanionBuilder,
      (TagsTableData, $$TagsTableTableReferences),
      TagsTableData,
      PrefetchHooks Function({bool transactionTagsTableRefs})
    >;
typedef $$TransactionsTableTableCreateCompanionBuilder =
    TransactionsTableCompanion Function({
      Value<int> id,
      required DateTime date,
      required int amount,
      required String type,
      required int categoryId,
      required int accountId,
      Value<String?> memo,
      Value<String?> receiptImagePath,
      Value<String?> userId,
    });
typedef $$TransactionsTableTableUpdateCompanionBuilder =
    TransactionsTableCompanion Function({
      Value<int> id,
      Value<DateTime> date,
      Value<int> amount,
      Value<String> type,
      Value<int> categoryId,
      Value<int> accountId,
      Value<String?> memo,
      Value<String?> receiptImagePath,
      Value<String?> userId,
    });

final class $$TransactionsTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TransactionsTableTable,
          TransactionsTableData
        > {
  $$TransactionsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CategoriesTableTable _categoryIdTable(_$AppDatabase db) =>
      db.categoriesTable.createAlias(
        $_aliasNameGenerator(
          db.transactionsTable.categoryId,
          db.categoriesTable.id,
        ),
      );

  $$CategoriesTableTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoriesTableTableTableManager(
      $_db,
      $_db.categoriesTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AccountsTableTable _accountIdTable(_$AppDatabase db) =>
      db.accountsTable.createAlias(
        $_aliasNameGenerator(
          db.transactionsTable.accountId,
          db.accountsTable.id,
        ),
      );

  $$AccountsTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableTableManager(
      $_db,
      $_db.accountsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $TransactionTagsTableTable,
    List<TransactionTagsTableData>
  >
  _transactionTagsTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionTagsTable,
        aliasName: $_aliasNameGenerator(
          db.transactionsTable.id,
          db.transactionTagsTable.transactionId,
        ),
      );

  $$TransactionTagsTableTableProcessedTableManager
  get transactionTagsTableRefs {
    final manager = $$TransactionTagsTableTableTableManager(
      $_db,
      $_db.transactionTagsTable,
    ).filter((f) => f.transactionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionTagsTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TransactionsTableTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionsTableTable> {
  $$TransactionsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get receiptImagePath => $composableBuilder(
    column: $table.receiptImagePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableTableFilterComposer get categoryId {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableFilterComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountsTableTableFilterComposer get accountId {
    final $$AccountsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableFilterComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> transactionTagsTableRefs(
    Expression<bool> Function($$TransactionTagsTableTableFilterComposer f) f,
  ) {
    final $$TransactionTagsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionTagsTable,
      getReferencedColumn: (t) => t.transactionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionTagsTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionTagsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TransactionsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionsTableTable> {
  $$TransactionsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get receiptImagePath => $composableBuilder(
    column: $table.receiptImagePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableTableOrderingComposer get categoryId {
    final $$CategoriesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountsTableTableOrderingComposer get accountId {
    final $$AccountsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableOrderingComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionsTableTable> {
  $$TransactionsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get memo =>
      $composableBuilder(column: $table.memo, builder: (column) => column);

  GeneratedColumn<String> get receiptImagePath => $composableBuilder(
    column: $table.receiptImagePath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$CategoriesTableTableAnnotationComposer get categoryId {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountsTableTableAnnotationComposer get accountId {
    final $$AccountsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> transactionTagsTableRefs<T extends Object>(
    Expression<T> Function($$TransactionTagsTableTableAnnotationComposer a) f,
  ) {
    final $$TransactionTagsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.transactionTagsTable,
          getReferencedColumn: (t) => t.transactionId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionTagsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionTagsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TransactionsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TransactionsTableTable,
          TransactionsTableData,
          $$TransactionsTableTableFilterComposer,
          $$TransactionsTableTableOrderingComposer,
          $$TransactionsTableTableAnnotationComposer,
          $$TransactionsTableTableCreateCompanionBuilder,
          $$TransactionsTableTableUpdateCompanionBuilder,
          (TransactionsTableData, $$TransactionsTableTableReferences),
          TransactionsTableData,
          PrefetchHooks Function({
            bool categoryId,
            bool accountId,
            bool transactionTagsTableRefs,
          })
        > {
  $$TransactionsTableTableTableManager(
    _$AppDatabase db,
    $TransactionsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<String?> memo = const Value.absent(),
                Value<String?> receiptImagePath = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => TransactionsTableCompanion(
                id: id,
                date: date,
                amount: amount,
                type: type,
                categoryId: categoryId,
                accountId: accountId,
                memo: memo,
                receiptImagePath: receiptImagePath,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime date,
                required int amount,
                required String type,
                required int categoryId,
                required int accountId,
                Value<String?> memo = const Value.absent(),
                Value<String?> receiptImagePath = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => TransactionsTableCompanion.insert(
                id: id,
                date: date,
                amount: amount,
                type: type,
                categoryId: categoryId,
                accountId: accountId,
                memo: memo,
                receiptImagePath: receiptImagePath,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TransactionsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                categoryId = false,
                accountId = false,
                transactionTagsTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (transactionTagsTableRefs) db.transactionTagsTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (categoryId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.categoryId,
                                    referencedTable:
                                        $$TransactionsTableTableReferences
                                            ._categoryIdTable(db),
                                    referencedColumn:
                                        $$TransactionsTableTableReferences
                                            ._categoryIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (accountId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.accountId,
                                    referencedTable:
                                        $$TransactionsTableTableReferences
                                            ._accountIdTable(db),
                                    referencedColumn:
                                        $$TransactionsTableTableReferences
                                            ._accountIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (transactionTagsTableRefs)
                        await $_getPrefetchedData<
                          TransactionsTableData,
                          $TransactionsTableTable,
                          TransactionTagsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$TransactionsTableTableReferences
                              ._transactionTagsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TransactionsTableTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionTagsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.transactionId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TransactionsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TransactionsTableTable,
      TransactionsTableData,
      $$TransactionsTableTableFilterComposer,
      $$TransactionsTableTableOrderingComposer,
      $$TransactionsTableTableAnnotationComposer,
      $$TransactionsTableTableCreateCompanionBuilder,
      $$TransactionsTableTableUpdateCompanionBuilder,
      (TransactionsTableData, $$TransactionsTableTableReferences),
      TransactionsTableData,
      PrefetchHooks Function({
        bool categoryId,
        bool accountId,
        bool transactionTagsTableRefs,
      })
    >;
typedef $$TransactionTagsTableTableCreateCompanionBuilder =
    TransactionTagsTableCompanion Function({
      required int transactionId,
      required int tagId,
      Value<int> rowid,
    });
typedef $$TransactionTagsTableTableUpdateCompanionBuilder =
    TransactionTagsTableCompanion Function({
      Value<int> transactionId,
      Value<int> tagId,
      Value<int> rowid,
    });

final class $$TransactionTagsTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TransactionTagsTableTable,
          TransactionTagsTableData
        > {
  $$TransactionTagsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TransactionsTableTable _transactionIdTable(_$AppDatabase db) =>
      db.transactionsTable.createAlias(
        $_aliasNameGenerator(
          db.transactionTagsTable.transactionId,
          db.transactionsTable.id,
        ),
      );

  $$TransactionsTableTableProcessedTableManager get transactionId {
    final $_column = $_itemColumn<int>('transaction_id')!;

    final manager = $$TransactionsTableTableTableManager(
      $_db,
      $_db.transactionsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_transactionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TagsTableTable _tagIdTable(_$AppDatabase db) =>
      db.tagsTable.createAlias(
        $_aliasNameGenerator(db.transactionTagsTable.tagId, db.tagsTable.id),
      );

  $$TagsTableTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<int>('tag_id')!;

    final manager = $$TagsTableTableTableManager(
      $_db,
      $_db.tagsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TransactionTagsTableTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionTagsTableTable> {
  $$TransactionTagsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableTableFilterComposer get transactionId {
    final $$TransactionsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.transactionId,
      referencedTable: $db.transactionsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionsTableTableFilterComposer(
            $db: $db,
            $table: $db.transactionsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableTableFilterComposer get tagId {
    final $$TagsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tagsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableTableFilterComposer(
            $db: $db,
            $table: $db.tagsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTagsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionTagsTableTable> {
  $$TransactionTagsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableTableOrderingComposer get transactionId {
    final $$TransactionsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.transactionId,
      referencedTable: $db.transactionsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionsTableTableOrderingComposer(
            $db: $db,
            $table: $db.transactionsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableTableOrderingComposer get tagId {
    final $$TagsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tagsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableTableOrderingComposer(
            $db: $db,
            $table: $db.tagsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTagsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionTagsTableTable> {
  $$TransactionTagsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TransactionsTableTableAnnotationComposer get transactionId {
    final $$TransactionsTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.transactionId,
          referencedTable: $db.transactionsTable,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TransactionsTableTableAnnotationComposer(
                $db: $db,
                $table: $db.transactionsTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }

  $$TagsTableTableAnnotationComposer get tagId {
    final $$TagsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tagsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.tagsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionTagsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TransactionTagsTableTable,
          TransactionTagsTableData,
          $$TransactionTagsTableTableFilterComposer,
          $$TransactionTagsTableTableOrderingComposer,
          $$TransactionTagsTableTableAnnotationComposer,
          $$TransactionTagsTableTableCreateCompanionBuilder,
          $$TransactionTagsTableTableUpdateCompanionBuilder,
          (TransactionTagsTableData, $$TransactionTagsTableTableReferences),
          TransactionTagsTableData,
          PrefetchHooks Function({bool transactionId, bool tagId})
        > {
  $$TransactionTagsTableTableTableManager(
    _$AppDatabase db,
    $TransactionTagsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionTagsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionTagsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TransactionTagsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> transactionId = const Value.absent(),
                Value<int> tagId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionTagsTableCompanion(
                transactionId: transactionId,
                tagId: tagId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int transactionId,
                required int tagId,
                Value<int> rowid = const Value.absent(),
              }) => TransactionTagsTableCompanion.insert(
                transactionId: transactionId,
                tagId: tagId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TransactionTagsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({transactionId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (transactionId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.transactionId,
                                referencedTable:
                                    $$TransactionTagsTableTableReferences
                                        ._transactionIdTable(db),
                                referencedColumn:
                                    $$TransactionTagsTableTableReferences
                                        ._transactionIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (tagId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tagId,
                                referencedTable:
                                    $$TransactionTagsTableTableReferences
                                        ._tagIdTable(db),
                                referencedColumn:
                                    $$TransactionTagsTableTableReferences
                                        ._tagIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TransactionTagsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TransactionTagsTableTable,
      TransactionTagsTableData,
      $$TransactionTagsTableTableFilterComposer,
      $$TransactionTagsTableTableOrderingComposer,
      $$TransactionTagsTableTableAnnotationComposer,
      $$TransactionTagsTableTableCreateCompanionBuilder,
      $$TransactionTagsTableTableUpdateCompanionBuilder,
      (TransactionTagsTableData, $$TransactionTagsTableTableReferences),
      TransactionTagsTableData,
      PrefetchHooks Function({bool transactionId, bool tagId})
    >;
typedef $$BudgetsTableTableCreateCompanionBuilder =
    BudgetsTableCompanion Function({
      Value<int> id,
      required int categoryId,
      required String yearMonth,
      required int limitAmount,
      Value<String?> userId,
    });
typedef $$BudgetsTableTableUpdateCompanionBuilder =
    BudgetsTableCompanion Function({
      Value<int> id,
      Value<int> categoryId,
      Value<String> yearMonth,
      Value<int> limitAmount,
      Value<String?> userId,
    });

final class $$BudgetsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $BudgetsTableTable, BudgetsTableData> {
  $$BudgetsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoriesTableTable _categoryIdTable(_$AppDatabase db) =>
      db.categoriesTable.createAlias(
        $_aliasNameGenerator(db.budgetsTable.categoryId, db.categoriesTable.id),
      );

  $$CategoriesTableTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoriesTableTableTableManager(
      $_db,
      $_db.categoriesTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$BudgetsTableTableFilterComposer
    extends Composer<_$AppDatabase, $BudgetsTableTable> {
  $$BudgetsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableTableFilterComposer get categoryId {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableFilterComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BudgetsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BudgetsTableTable> {
  $$BudgetsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get yearMonth => $composableBuilder(
    column: $table.yearMonth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableTableOrderingComposer get categoryId {
    final $$CategoriesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BudgetsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BudgetsTableTable> {
  $$BudgetsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get yearMonth =>
      $composableBuilder(column: $table.yearMonth, builder: (column) => column);

  GeneratedColumn<int> get limitAmount => $composableBuilder(
    column: $table.limitAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$CategoriesTableTableAnnotationComposer get categoryId {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$BudgetsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BudgetsTableTable,
          BudgetsTableData,
          $$BudgetsTableTableFilterComposer,
          $$BudgetsTableTableOrderingComposer,
          $$BudgetsTableTableAnnotationComposer,
          $$BudgetsTableTableCreateCompanionBuilder,
          $$BudgetsTableTableUpdateCompanionBuilder,
          (BudgetsTableData, $$BudgetsTableTableReferences),
          BudgetsTableData,
          PrefetchHooks Function({bool categoryId})
        > {
  $$BudgetsTableTableTableManager(_$AppDatabase db, $BudgetsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BudgetsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BudgetsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BudgetsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<String> yearMonth = const Value.absent(),
                Value<int> limitAmount = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => BudgetsTableCompanion(
                id: id,
                categoryId: categoryId,
                yearMonth: yearMonth,
                limitAmount: limitAmount,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int categoryId,
                required String yearMonth,
                required int limitAmount,
                Value<String?> userId = const Value.absent(),
              }) => BudgetsTableCompanion.insert(
                id: id,
                categoryId: categoryId,
                yearMonth: yearMonth,
                limitAmount: limitAmount,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$BudgetsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (categoryId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.categoryId,
                                referencedTable: $$BudgetsTableTableReferences
                                    ._categoryIdTable(db),
                                referencedColumn: $$BudgetsTableTableReferences
                                    ._categoryIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$BudgetsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BudgetsTableTable,
      BudgetsTableData,
      $$BudgetsTableTableFilterComposer,
      $$BudgetsTableTableOrderingComposer,
      $$BudgetsTableTableAnnotationComposer,
      $$BudgetsTableTableCreateCompanionBuilder,
      $$BudgetsTableTableUpdateCompanionBuilder,
      (BudgetsTableData, $$BudgetsTableTableReferences),
      BudgetsTableData,
      PrefetchHooks Function({bool categoryId})
    >;
typedef $$RecurringTransactionsTableTableCreateCompanionBuilder =
    RecurringTransactionsTableCompanion Function({
      Value<int> id,
      required int categoryId,
      required int amount,
      required int dayOfMonth,
      Value<String?> memo,
      Value<String?> userId,
    });
typedef $$RecurringTransactionsTableTableUpdateCompanionBuilder =
    RecurringTransactionsTableCompanion Function({
      Value<int> id,
      Value<int> categoryId,
      Value<int> amount,
      Value<int> dayOfMonth,
      Value<String?> memo,
      Value<String?> userId,
    });

final class $$RecurringTransactionsTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecurringTransactionsTableTable,
          RecurringTransactionsTableData
        > {
  $$RecurringTransactionsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CategoriesTableTable _categoryIdTable(_$AppDatabase db) =>
      db.categoriesTable.createAlias(
        $_aliasNameGenerator(
          db.recurringTransactionsTable.categoryId,
          db.categoriesTable.id,
        ),
      );

  $$CategoriesTableTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoriesTableTableTableManager(
      $_db,
      $_db.categoriesTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecurringTransactionsTableTableFilterComposer
    extends Composer<_$AppDatabase, $RecurringTransactionsTableTable> {
  $$RecurringTransactionsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayOfMonth => $composableBuilder(
    column: $table.dayOfMonth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableTableFilterComposer get categoryId {
    final $$CategoriesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableFilterComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecurringTransactionsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RecurringTransactionsTableTable> {
  $$RecurringTransactionsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayOfMonth => $composableBuilder(
    column: $table.dayOfMonth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get memo => $composableBuilder(
    column: $table.memo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableTableOrderingComposer get categoryId {
    final $$CategoriesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableOrderingComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecurringTransactionsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecurringTransactionsTableTable> {
  $$RecurringTransactionsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<int> get dayOfMonth => $composableBuilder(
    column: $table.dayOfMonth,
    builder: (column) => column,
  );

  GeneratedColumn<String> get memo =>
      $composableBuilder(column: $table.memo, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$CategoriesTableTableAnnotationComposer get categoryId {
    final $$CategoriesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categoriesTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.categoriesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecurringTransactionsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecurringTransactionsTableTable,
          RecurringTransactionsTableData,
          $$RecurringTransactionsTableTableFilterComposer,
          $$RecurringTransactionsTableTableOrderingComposer,
          $$RecurringTransactionsTableTableAnnotationComposer,
          $$RecurringTransactionsTableTableCreateCompanionBuilder,
          $$RecurringTransactionsTableTableUpdateCompanionBuilder,
          (
            RecurringTransactionsTableData,
            $$RecurringTransactionsTableTableReferences,
          ),
          RecurringTransactionsTableData,
          PrefetchHooks Function({bool categoryId})
        > {
  $$RecurringTransactionsTableTableTableManager(
    _$AppDatabase db,
    $RecurringTransactionsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecurringTransactionsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$RecurringTransactionsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$RecurringTransactionsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<int> dayOfMonth = const Value.absent(),
                Value<String?> memo = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => RecurringTransactionsTableCompanion(
                id: id,
                categoryId: categoryId,
                amount: amount,
                dayOfMonth: dayOfMonth,
                memo: memo,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int categoryId,
                required int amount,
                required int dayOfMonth,
                Value<String?> memo = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => RecurringTransactionsTableCompanion.insert(
                id: id,
                categoryId: categoryId,
                amount: amount,
                dayOfMonth: dayOfMonth,
                memo: memo,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecurringTransactionsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (categoryId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.categoryId,
                                referencedTable:
                                    $$RecurringTransactionsTableTableReferences
                                        ._categoryIdTable(db),
                                referencedColumn:
                                    $$RecurringTransactionsTableTableReferences
                                        ._categoryIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecurringTransactionsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecurringTransactionsTableTable,
      RecurringTransactionsTableData,
      $$RecurringTransactionsTableTableFilterComposer,
      $$RecurringTransactionsTableTableOrderingComposer,
      $$RecurringTransactionsTableTableAnnotationComposer,
      $$RecurringTransactionsTableTableCreateCompanionBuilder,
      $$RecurringTransactionsTableTableUpdateCompanionBuilder,
      (
        RecurringTransactionsTableData,
        $$RecurringTransactionsTableTableReferences,
      ),
      RecurringTransactionsTableData,
      PrefetchHooks Function({bool categoryId})
    >;
typedef $$HoldingsTableTableCreateCompanionBuilder =
    HoldingsTableCompanion Function({
      Value<int> id,
      required int accountId,
      required String symbol,
      required String market,
      required double quantity,
      required double avgCost,
      Value<String?> userId,
    });
typedef $$HoldingsTableTableUpdateCompanionBuilder =
    HoldingsTableCompanion Function({
      Value<int> id,
      Value<int> accountId,
      Value<String> symbol,
      Value<String> market,
      Value<double> quantity,
      Value<double> avgCost,
      Value<String?> userId,
    });

final class $$HoldingsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $HoldingsTableTable, HoldingsTableData> {
  $$HoldingsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AccountsTableTable _accountIdTable(_$AppDatabase db) =>
      db.accountsTable.createAlias(
        $_aliasNameGenerator(db.holdingsTable.accountId, db.accountsTable.id),
      );

  $$AccountsTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableTableManager(
      $_db,
      $_db.accountsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$HoldingsTableTableFilterComposer
    extends Composer<_$AppDatabase, $HoldingsTableTable> {
  $$HoldingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgCost => $composableBuilder(
    column: $table.avgCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$AccountsTableTableFilterComposer get accountId {
    final $$AccountsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableFilterComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HoldingsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HoldingsTableTable> {
  $$HoldingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgCost => $composableBuilder(
    column: $table.avgCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$AccountsTableTableOrderingComposer get accountId {
    final $$AccountsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableOrderingComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HoldingsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HoldingsTableTable> {
  $$HoldingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get market =>
      $composableBuilder(column: $table.market, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get avgCost =>
      $composableBuilder(column: $table.avgCost, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$AccountsTableTableAnnotationComposer get accountId {
    final $$AccountsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HoldingsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HoldingsTableTable,
          HoldingsTableData,
          $$HoldingsTableTableFilterComposer,
          $$HoldingsTableTableOrderingComposer,
          $$HoldingsTableTableAnnotationComposer,
          $$HoldingsTableTableCreateCompanionBuilder,
          $$HoldingsTableTableUpdateCompanionBuilder,
          (HoldingsTableData, $$HoldingsTableTableReferences),
          HoldingsTableData,
          PrefetchHooks Function({bool accountId})
        > {
  $$HoldingsTableTableTableManager(_$AppDatabase db, $HoldingsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HoldingsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HoldingsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HoldingsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> market = const Value.absent(),
                Value<double> quantity = const Value.absent(),
                Value<double> avgCost = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => HoldingsTableCompanion(
                id: id,
                accountId: accountId,
                symbol: symbol,
                market: market,
                quantity: quantity,
                avgCost: avgCost,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int accountId,
                required String symbol,
                required String market,
                required double quantity,
                required double avgCost,
                Value<String?> userId = const Value.absent(),
              }) => HoldingsTableCompanion.insert(
                id: id,
                accountId: accountId,
                symbol: symbol,
                market: market,
                quantity: quantity,
                avgCost: avgCost,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HoldingsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({accountId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (accountId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.accountId,
                                referencedTable: $$HoldingsTableTableReferences
                                    ._accountIdTable(db),
                                referencedColumn: $$HoldingsTableTableReferences
                                    ._accountIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$HoldingsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HoldingsTableTable,
      HoldingsTableData,
      $$HoldingsTableTableFilterComposer,
      $$HoldingsTableTableOrderingComposer,
      $$HoldingsTableTableAnnotationComposer,
      $$HoldingsTableTableCreateCompanionBuilder,
      $$HoldingsTableTableUpdateCompanionBuilder,
      (HoldingsTableData, $$HoldingsTableTableReferences),
      HoldingsTableData,
      PrefetchHooks Function({bool accountId})
    >;
typedef $$TransactionsInvestTableTableCreateCompanionBuilder =
    TransactionsInvestTableCompanion Function({
      Value<int> id,
      required int accountId,
      required String symbol,
      required String market,
      required String type,
      required DateTime date,
      required double quantity,
      required double price,
      Value<double> fee,
      Value<String?> userId,
    });
typedef $$TransactionsInvestTableTableUpdateCompanionBuilder =
    TransactionsInvestTableCompanion Function({
      Value<int> id,
      Value<int> accountId,
      Value<String> symbol,
      Value<String> market,
      Value<String> type,
      Value<DateTime> date,
      Value<double> quantity,
      Value<double> price,
      Value<double> fee,
      Value<String?> userId,
    });

final class $$TransactionsInvestTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TransactionsInvestTableTable,
          TransactionsInvestTableData
        > {
  $$TransactionsInvestTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AccountsTableTable _accountIdTable(_$AppDatabase db) =>
      db.accountsTable.createAlias(
        $_aliasNameGenerator(
          db.transactionsInvestTable.accountId,
          db.accountsTable.id,
        ),
      );

  $$AccountsTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableTableManager(
      $_db,
      $_db.accountsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TransactionsInvestTableTableFilterComposer
    extends Composer<_$AppDatabase, $TransactionsInvestTableTable> {
  $$TransactionsInvestTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fee => $composableBuilder(
    column: $table.fee,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$AccountsTableTableFilterComposer get accountId {
    final $$AccountsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableFilterComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionsInvestTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TransactionsInvestTableTable> {
  $$TransactionsInvestTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fee => $composableBuilder(
    column: $table.fee,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$AccountsTableTableOrderingComposer get accountId {
    final $$AccountsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableOrderingComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionsInvestTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TransactionsInvestTableTable> {
  $$TransactionsInvestTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get market =>
      $composableBuilder(column: $table.market, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<double> get fee =>
      $composableBuilder(column: $table.fee, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$AccountsTableTableAnnotationComposer get accountId {
    final $$AccountsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionsInvestTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TransactionsInvestTableTable,
          TransactionsInvestTableData,
          $$TransactionsInvestTableTableFilterComposer,
          $$TransactionsInvestTableTableOrderingComposer,
          $$TransactionsInvestTableTableAnnotationComposer,
          $$TransactionsInvestTableTableCreateCompanionBuilder,
          $$TransactionsInvestTableTableUpdateCompanionBuilder,
          (
            TransactionsInvestTableData,
            $$TransactionsInvestTableTableReferences,
          ),
          TransactionsInvestTableData,
          PrefetchHooks Function({bool accountId})
        > {
  $$TransactionsInvestTableTableTableManager(
    _$AppDatabase db,
    $TransactionsInvestTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionsInvestTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$TransactionsInvestTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TransactionsInvestTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String> market = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double> quantity = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<double> fee = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => TransactionsInvestTableCompanion(
                id: id,
                accountId: accountId,
                symbol: symbol,
                market: market,
                type: type,
                date: date,
                quantity: quantity,
                price: price,
                fee: fee,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int accountId,
                required String symbol,
                required String market,
                required String type,
                required DateTime date,
                required double quantity,
                required double price,
                Value<double> fee = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => TransactionsInvestTableCompanion.insert(
                id: id,
                accountId: accountId,
                symbol: symbol,
                market: market,
                type: type,
                date: date,
                quantity: quantity,
                price: price,
                fee: fee,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TransactionsInvestTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({accountId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (accountId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.accountId,
                                referencedTable:
                                    $$TransactionsInvestTableTableReferences
                                        ._accountIdTable(db),
                                referencedColumn:
                                    $$TransactionsInvestTableTableReferences
                                        ._accountIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TransactionsInvestTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TransactionsInvestTableTable,
      TransactionsInvestTableData,
      $$TransactionsInvestTableTableFilterComposer,
      $$TransactionsInvestTableTableOrderingComposer,
      $$TransactionsInvestTableTableAnnotationComposer,
      $$TransactionsInvestTableTableCreateCompanionBuilder,
      $$TransactionsInvestTableTableUpdateCompanionBuilder,
      (TransactionsInvestTableData, $$TransactionsInvestTableTableReferences),
      TransactionsInvestTableData,
      PrefetchHooks Function({bool accountId})
    >;
typedef $$DividendsTableTableCreateCompanionBuilder =
    DividendsTableCompanion Function({
      Value<int> id,
      required int accountId,
      required String symbol,
      required DateTime date,
      required String currency,
      required double amount,
      Value<double> fxRateApplied,
      required int krwConvertedAmount,
      Value<String?> userId,
    });
typedef $$DividendsTableTableUpdateCompanionBuilder =
    DividendsTableCompanion Function({
      Value<int> id,
      Value<int> accountId,
      Value<String> symbol,
      Value<DateTime> date,
      Value<String> currency,
      Value<double> amount,
      Value<double> fxRateApplied,
      Value<int> krwConvertedAmount,
      Value<String?> userId,
    });

final class $$DividendsTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $DividendsTableTable,
          DividendsTableData
        > {
  $$DividendsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AccountsTableTable _accountIdTable(_$AppDatabase db) =>
      db.accountsTable.createAlias(
        $_aliasNameGenerator(db.dividendsTable.accountId, db.accountsTable.id),
      );

  $$AccountsTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableTableManager(
      $_db,
      $_db.accountsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DividendsTableTableFilterComposer
    extends Composer<_$AppDatabase, $DividendsTableTable> {
  $$DividendsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fxRateApplied => $composableBuilder(
    column: $table.fxRateApplied,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get krwConvertedAmount => $composableBuilder(
    column: $table.krwConvertedAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$AccountsTableTableFilterComposer get accountId {
    final $$AccountsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableFilterComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DividendsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DividendsTableTable> {
  $$DividendsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fxRateApplied => $composableBuilder(
    column: $table.fxRateApplied,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get krwConvertedAmount => $composableBuilder(
    column: $table.krwConvertedAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$AccountsTableTableOrderingComposer get accountId {
    final $$AccountsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableOrderingComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DividendsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DividendsTableTable> {
  $$DividendsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<double> get fxRateApplied => $composableBuilder(
    column: $table.fxRateApplied,
    builder: (column) => column,
  );

  GeneratedColumn<int> get krwConvertedAmount => $composableBuilder(
    column: $table.krwConvertedAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$AccountsTableTableAnnotationComposer get accountId {
    final $$AccountsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DividendsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DividendsTableTable,
          DividendsTableData,
          $$DividendsTableTableFilterComposer,
          $$DividendsTableTableOrderingComposer,
          $$DividendsTableTableAnnotationComposer,
          $$DividendsTableTableCreateCompanionBuilder,
          $$DividendsTableTableUpdateCompanionBuilder,
          (DividendsTableData, $$DividendsTableTableReferences),
          DividendsTableData,
          PrefetchHooks Function({bool accountId})
        > {
  $$DividendsTableTableTableManager(
    _$AppDatabase db,
    $DividendsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DividendsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DividendsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DividendsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<double> fxRateApplied = const Value.absent(),
                Value<int> krwConvertedAmount = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => DividendsTableCompanion(
                id: id,
                accountId: accountId,
                symbol: symbol,
                date: date,
                currency: currency,
                amount: amount,
                fxRateApplied: fxRateApplied,
                krwConvertedAmount: krwConvertedAmount,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int accountId,
                required String symbol,
                required DateTime date,
                required String currency,
                required double amount,
                Value<double> fxRateApplied = const Value.absent(),
                required int krwConvertedAmount,
                Value<String?> userId = const Value.absent(),
              }) => DividendsTableCompanion.insert(
                id: id,
                accountId: accountId,
                symbol: symbol,
                date: date,
                currency: currency,
                amount: amount,
                fxRateApplied: fxRateApplied,
                krwConvertedAmount: krwConvertedAmount,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DividendsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({accountId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (accountId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.accountId,
                                referencedTable: $$DividendsTableTableReferences
                                    ._accountIdTable(db),
                                referencedColumn:
                                    $$DividendsTableTableReferences
                                        ._accountIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DividendsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DividendsTableTable,
      DividendsTableData,
      $$DividendsTableTableFilterComposer,
      $$DividendsTableTableOrderingComposer,
      $$DividendsTableTableAnnotationComposer,
      $$DividendsTableTableCreateCompanionBuilder,
      $$DividendsTableTableUpdateCompanionBuilder,
      (DividendsTableData, $$DividendsTableTableReferences),
      DividendsTableData,
      PrefetchHooks Function({bool accountId})
    >;
typedef $$DepositsWithdrawalsTableTableCreateCompanionBuilder =
    DepositsWithdrawalsTableCompanion Function({
      Value<int> id,
      required int accountId,
      required DateTime date,
      required int amount,
      required String type,
      Value<String?> userId,
    });
typedef $$DepositsWithdrawalsTableTableUpdateCompanionBuilder =
    DepositsWithdrawalsTableCompanion Function({
      Value<int> id,
      Value<int> accountId,
      Value<DateTime> date,
      Value<int> amount,
      Value<String> type,
      Value<String?> userId,
    });

final class $$DepositsWithdrawalsTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $DepositsWithdrawalsTableTable,
          DepositsWithdrawalsTableData
        > {
  $$DepositsWithdrawalsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AccountsTableTable _accountIdTable(_$AppDatabase db) =>
      db.accountsTable.createAlias(
        $_aliasNameGenerator(
          db.depositsWithdrawalsTable.accountId,
          db.accountsTable.id,
        ),
      );

  $$AccountsTableTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<int>('account_id')!;

    final manager = $$AccountsTableTableTableManager(
      $_db,
      $_db.accountsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DepositsWithdrawalsTableTableFilterComposer
    extends Composer<_$AppDatabase, $DepositsWithdrawalsTableTable> {
  $$DepositsWithdrawalsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  $$AccountsTableTableFilterComposer get accountId {
    final $$AccountsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableFilterComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DepositsWithdrawalsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DepositsWithdrawalsTableTable> {
  $$DepositsWithdrawalsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  $$AccountsTableTableOrderingComposer get accountId {
    final $$AccountsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableOrderingComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DepositsWithdrawalsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DepositsWithdrawalsTableTable> {
  $$DepositsWithdrawalsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  $$AccountsTableTableAnnotationComposer get accountId {
    final $$AccountsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.accountsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DepositsWithdrawalsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DepositsWithdrawalsTableTable,
          DepositsWithdrawalsTableData,
          $$DepositsWithdrawalsTableTableFilterComposer,
          $$DepositsWithdrawalsTableTableOrderingComposer,
          $$DepositsWithdrawalsTableTableAnnotationComposer,
          $$DepositsWithdrawalsTableTableCreateCompanionBuilder,
          $$DepositsWithdrawalsTableTableUpdateCompanionBuilder,
          (
            DepositsWithdrawalsTableData,
            $$DepositsWithdrawalsTableTableReferences,
          ),
          DepositsWithdrawalsTableData,
          PrefetchHooks Function({bool accountId})
        > {
  $$DepositsWithdrawalsTableTableTableManager(
    _$AppDatabase db,
    $DepositsWithdrawalsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DepositsWithdrawalsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$DepositsWithdrawalsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$DepositsWithdrawalsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> accountId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => DepositsWithdrawalsTableCompanion(
                id: id,
                accountId: accountId,
                date: date,
                amount: amount,
                type: type,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int accountId,
                required DateTime date,
                required int amount,
                required String type,
                Value<String?> userId = const Value.absent(),
              }) => DepositsWithdrawalsTableCompanion.insert(
                id: id,
                accountId: accountId,
                date: date,
                amount: amount,
                type: type,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DepositsWithdrawalsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({accountId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (accountId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.accountId,
                                referencedTable:
                                    $$DepositsWithdrawalsTableTableReferences
                                        ._accountIdTable(db),
                                referencedColumn:
                                    $$DepositsWithdrawalsTableTableReferences
                                        ._accountIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DepositsWithdrawalsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DepositsWithdrawalsTableTable,
      DepositsWithdrawalsTableData,
      $$DepositsWithdrawalsTableTableFilterComposer,
      $$DepositsWithdrawalsTableTableOrderingComposer,
      $$DepositsWithdrawalsTableTableAnnotationComposer,
      $$DepositsWithdrawalsTableTableCreateCompanionBuilder,
      $$DepositsWithdrawalsTableTableUpdateCompanionBuilder,
      (DepositsWithdrawalsTableData, $$DepositsWithdrawalsTableTableReferences),
      DepositsWithdrawalsTableData,
      PrefetchHooks Function({bool accountId})
    >;
typedef $$PriceHistoryTableTableCreateCompanionBuilder =
    PriceHistoryTableCompanion Function({
      Value<int> id,
      required String symbol,
      required DateTime date,
      required double closePrice,
    });
typedef $$PriceHistoryTableTableUpdateCompanionBuilder =
    PriceHistoryTableCompanion Function({
      Value<int> id,
      Value<String> symbol,
      Value<DateTime> date,
      Value<double> closePrice,
    });

class $$PriceHistoryTableTableFilterComposer
    extends Composer<_$AppDatabase, $PriceHistoryTableTable> {
  $$PriceHistoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get closePrice => $composableBuilder(
    column: $table.closePrice,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PriceHistoryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PriceHistoryTableTable> {
  $$PriceHistoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get closePrice => $composableBuilder(
    column: $table.closePrice,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PriceHistoryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PriceHistoryTableTable> {
  $$PriceHistoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get closePrice => $composableBuilder(
    column: $table.closePrice,
    builder: (column) => column,
  );
}

class $$PriceHistoryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PriceHistoryTableTable,
          PriceHistoryTableData,
          $$PriceHistoryTableTableFilterComposer,
          $$PriceHistoryTableTableOrderingComposer,
          $$PriceHistoryTableTableAnnotationComposer,
          $$PriceHistoryTableTableCreateCompanionBuilder,
          $$PriceHistoryTableTableUpdateCompanionBuilder,
          (
            PriceHistoryTableData,
            BaseReferences<
              _$AppDatabase,
              $PriceHistoryTableTable,
              PriceHistoryTableData
            >,
          ),
          PriceHistoryTableData,
          PrefetchHooks Function()
        > {
  $$PriceHistoryTableTableTableManager(
    _$AppDatabase db,
    $PriceHistoryTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PriceHistoryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PriceHistoryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PriceHistoryTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double> closePrice = const Value.absent(),
              }) => PriceHistoryTableCompanion(
                id: id,
                symbol: symbol,
                date: date,
                closePrice: closePrice,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String symbol,
                required DateTime date,
                required double closePrice,
              }) => PriceHistoryTableCompanion.insert(
                id: id,
                symbol: symbol,
                date: date,
                closePrice: closePrice,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PriceHistoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PriceHistoryTableTable,
      PriceHistoryTableData,
      $$PriceHistoryTableTableFilterComposer,
      $$PriceHistoryTableTableOrderingComposer,
      $$PriceHistoryTableTableAnnotationComposer,
      $$PriceHistoryTableTableCreateCompanionBuilder,
      $$PriceHistoryTableTableUpdateCompanionBuilder,
      (
        PriceHistoryTableData,
        BaseReferences<
          _$AppDatabase,
          $PriceHistoryTableTable,
          PriceHistoryTableData
        >,
      ),
      PriceHistoryTableData,
      PrefetchHooks Function()
    >;
typedef $$BenchmarkIndexHistoryTableTableCreateCompanionBuilder =
    BenchmarkIndexHistoryTableCompanion Function({
      Value<int> id,
      required String indexName,
      required DateTime date,
      required double value,
    });
typedef $$BenchmarkIndexHistoryTableTableUpdateCompanionBuilder =
    BenchmarkIndexHistoryTableCompanion Function({
      Value<int> id,
      Value<String> indexName,
      Value<DateTime> date,
      Value<double> value,
    });

class $$BenchmarkIndexHistoryTableTableFilterComposer
    extends Composer<_$AppDatabase, $BenchmarkIndexHistoryTableTable> {
  $$BenchmarkIndexHistoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get indexName => $composableBuilder(
    column: $table.indexName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BenchmarkIndexHistoryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $BenchmarkIndexHistoryTableTable> {
  $$BenchmarkIndexHistoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get indexName => $composableBuilder(
    column: $table.indexName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BenchmarkIndexHistoryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $BenchmarkIndexHistoryTableTable> {
  $$BenchmarkIndexHistoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get indexName =>
      $composableBuilder(column: $table.indexName, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$BenchmarkIndexHistoryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BenchmarkIndexHistoryTableTable,
          BenchmarkIndexHistoryTableData,
          $$BenchmarkIndexHistoryTableTableFilterComposer,
          $$BenchmarkIndexHistoryTableTableOrderingComposer,
          $$BenchmarkIndexHistoryTableTableAnnotationComposer,
          $$BenchmarkIndexHistoryTableTableCreateCompanionBuilder,
          $$BenchmarkIndexHistoryTableTableUpdateCompanionBuilder,
          (
            BenchmarkIndexHistoryTableData,
            BaseReferences<
              _$AppDatabase,
              $BenchmarkIndexHistoryTableTable,
              BenchmarkIndexHistoryTableData
            >,
          ),
          BenchmarkIndexHistoryTableData,
          PrefetchHooks Function()
        > {
  $$BenchmarkIndexHistoryTableTableTableManager(
    _$AppDatabase db,
    $BenchmarkIndexHistoryTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BenchmarkIndexHistoryTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$BenchmarkIndexHistoryTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$BenchmarkIndexHistoryTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> indexName = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double> value = const Value.absent(),
              }) => BenchmarkIndexHistoryTableCompanion(
                id: id,
                indexName: indexName,
                date: date,
                value: value,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String indexName,
                required DateTime date,
                required double value,
              }) => BenchmarkIndexHistoryTableCompanion.insert(
                id: id,
                indexName: indexName,
                date: date,
                value: value,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BenchmarkIndexHistoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BenchmarkIndexHistoryTableTable,
      BenchmarkIndexHistoryTableData,
      $$BenchmarkIndexHistoryTableTableFilterComposer,
      $$BenchmarkIndexHistoryTableTableOrderingComposer,
      $$BenchmarkIndexHistoryTableTableAnnotationComposer,
      $$BenchmarkIndexHistoryTableTableCreateCompanionBuilder,
      $$BenchmarkIndexHistoryTableTableUpdateCompanionBuilder,
      (
        BenchmarkIndexHistoryTableData,
        BaseReferences<
          _$AppDatabase,
          $BenchmarkIndexHistoryTableTable,
          BenchmarkIndexHistoryTableData
        >,
      ),
      BenchmarkIndexHistoryTableData,
      PrefetchHooks Function()
    >;
typedef $$GoalsTableTableCreateCompanionBuilder =
    GoalsTableCompanion Function({
      Value<int> id,
      required int targetAssetAmount,
      required int annualDepositTarget,
      required DateTime retirementDate,
      Value<String?> userId,
    });
typedef $$GoalsTableTableUpdateCompanionBuilder =
    GoalsTableCompanion Function({
      Value<int> id,
      Value<int> targetAssetAmount,
      Value<int> annualDepositTarget,
      Value<DateTime> retirementDate,
      Value<String?> userId,
    });

class $$GoalsTableTableFilterComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get targetAssetAmount => $composableBuilder(
    column: $table.targetAssetAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get annualDepositTarget => $composableBuilder(
    column: $table.annualDepositTarget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get retirementDate => $composableBuilder(
    column: $table.retirementDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GoalsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get targetAssetAmount => $composableBuilder(
    column: $table.targetAssetAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get annualDepositTarget => $composableBuilder(
    column: $table.annualDepositTarget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get retirementDate => $composableBuilder(
    column: $table.retirementDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GoalsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $GoalsTableTable> {
  $$GoalsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get targetAssetAmount => $composableBuilder(
    column: $table.targetAssetAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get annualDepositTarget => $composableBuilder(
    column: $table.annualDepositTarget,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get retirementDate => $composableBuilder(
    column: $table.retirementDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$GoalsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GoalsTableTable,
          GoalsTableData,
          $$GoalsTableTableFilterComposer,
          $$GoalsTableTableOrderingComposer,
          $$GoalsTableTableAnnotationComposer,
          $$GoalsTableTableCreateCompanionBuilder,
          $$GoalsTableTableUpdateCompanionBuilder,
          (
            GoalsTableData,
            BaseReferences<_$AppDatabase, $GoalsTableTable, GoalsTableData>,
          ),
          GoalsTableData,
          PrefetchHooks Function()
        > {
  $$GoalsTableTableTableManager(_$AppDatabase db, $GoalsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GoalsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GoalsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GoalsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> targetAssetAmount = const Value.absent(),
                Value<int> annualDepositTarget = const Value.absent(),
                Value<DateTime> retirementDate = const Value.absent(),
                Value<String?> userId = const Value.absent(),
              }) => GoalsTableCompanion(
                id: id,
                targetAssetAmount: targetAssetAmount,
                annualDepositTarget: annualDepositTarget,
                retirementDate: retirementDate,
                userId: userId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int targetAssetAmount,
                required int annualDepositTarget,
                required DateTime retirementDate,
                Value<String?> userId = const Value.absent(),
              }) => GoalsTableCompanion.insert(
                id: id,
                targetAssetAmount: targetAssetAmount,
                annualDepositTarget: annualDepositTarget,
                retirementDate: retirementDate,
                userId: userId,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GoalsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GoalsTableTable,
      GoalsTableData,
      $$GoalsTableTableFilterComposer,
      $$GoalsTableTableOrderingComposer,
      $$GoalsTableTableAnnotationComposer,
      $$GoalsTableTableCreateCompanionBuilder,
      $$GoalsTableTableUpdateCompanionBuilder,
      (
        GoalsTableData,
        BaseReferences<_$AppDatabase, $GoalsTableTable, GoalsTableData>,
      ),
      GoalsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AppSettingsTableTableTableManager get appSettingsTable =>
      $$AppSettingsTableTableTableManager(_db, _db.appSettingsTable);
  $$AccountsTableTableTableManager get accountsTable =>
      $$AccountsTableTableTableManager(_db, _db.accountsTable);
  $$CategoriesTableTableTableManager get categoriesTable =>
      $$CategoriesTableTableTableManager(_db, _db.categoriesTable);
  $$TagsTableTableTableManager get tagsTable =>
      $$TagsTableTableTableManager(_db, _db.tagsTable);
  $$TransactionsTableTableTableManager get transactionsTable =>
      $$TransactionsTableTableTableManager(_db, _db.transactionsTable);
  $$TransactionTagsTableTableTableManager get transactionTagsTable =>
      $$TransactionTagsTableTableTableManager(_db, _db.transactionTagsTable);
  $$BudgetsTableTableTableManager get budgetsTable =>
      $$BudgetsTableTableTableManager(_db, _db.budgetsTable);
  $$RecurringTransactionsTableTableTableManager
  get recurringTransactionsTable =>
      $$RecurringTransactionsTableTableTableManager(
        _db,
        _db.recurringTransactionsTable,
      );
  $$HoldingsTableTableTableManager get holdingsTable =>
      $$HoldingsTableTableTableManager(_db, _db.holdingsTable);
  $$TransactionsInvestTableTableTableManager get transactionsInvestTable =>
      $$TransactionsInvestTableTableTableManager(
        _db,
        _db.transactionsInvestTable,
      );
  $$DividendsTableTableTableManager get dividendsTable =>
      $$DividendsTableTableTableManager(_db, _db.dividendsTable);
  $$DepositsWithdrawalsTableTableTableManager get depositsWithdrawalsTable =>
      $$DepositsWithdrawalsTableTableTableManager(
        _db,
        _db.depositsWithdrawalsTable,
      );
  $$PriceHistoryTableTableTableManager get priceHistoryTable =>
      $$PriceHistoryTableTableTableManager(_db, _db.priceHistoryTable);
  $$BenchmarkIndexHistoryTableTableTableManager
  get benchmarkIndexHistoryTable =>
      $$BenchmarkIndexHistoryTableTableTableManager(
        _db,
        _db.benchmarkIndexHistoryTable,
      );
  $$GoalsTableTableTableManager get goalsTable =>
      $$GoalsTableTableTableManager(_db, _db.goalsTable);
}
