# CLAUDE.md — FinLog 프로젝트 컨텍스트

> Claude Code가 이 파일을 참고하여 프로젝트 구조와 설계 결정을 파악합니다.
> 자세한 설계 문서는 `DESIGN.md`를 참조하세요.

## 프로젝트 개요

**목적**: 소비(가계부)와 투자 포트폴리오를 하나의 앱에서 통합 관리  
**플랫폼**: Flutter (Android 우선, iOS 확장 가능)  
**설계 문서**: `DESIGN.md` (기획·화면·스키마·CSV 포맷 전체 포함)

## 핵심 설계 원칙

1. **로컬 우선**: 모든 데이터는 기기 내 SQLite(Drift)에 저장. Google Drive는 백업/복원 전용
2. **Clean Architecture**: Presentation → Domain → Data 단방향 의존성
3. **Reactive**: Drift `.watch()` + Riverpod `StreamProvider` → DB 변경 시 UI 자동 갱신
4. **타입 안전성**: Drift ORM + Riverpod annotation으로 컴파일 타임 에러 최소화

## 아키텍처 구조

```
lib/
├── core/            # 상수, 에러, 라우터, 테마, 유틸
├── database/        # Drift DB 클래스, Tables, DAOs
├── services/        # KIS API, Google Drive, CSV 서비스
└── features/
    ├── onboarding/  # 최초 실행 설정 (6단계)
    ├── home/        # 대시보드
    ├── budget/      # 가계부 (Clean Arch 완전 적용)
    │   ├── data/    # datasources/, models/, repositories/
    │   ├── domain/  # entities/, repositories/, usecases/
    │   └── presentation/ # pages/, providers/, widgets/
    ├── invest/      # 투자 (budget과 동일 구조)
    ├── auth/        # Google 로그인·백업
    └── settings/    # 설정 탭
```

## 주요 패키지

| 역할 | 패키지 |
|---|---|
| 상태관리 | flutter_riverpod, riverpod_annotation |
| 로컬 DB | drift, sqlite3_flutter_libs |
| 라우팅 | go_router |
| 차트 | fl_chart |
| Google | google_sign_in, googleapis |
| 보안 | flutter_secure_storage |
| 네트워크 | dio |
| CSV | csv |
| 코드 생성 | build_runner, riverpod_generator, drift_dev |

## DB 핵심 테이블

**가계부 도메인**: app_settings, accounts, categories, tags, transactions, transaction_tags, budgets, recurring_transactions  
**투자 도메인**: holdings, transactions_invest, dividends, deposits_withdrawals, price_history, benchmark_index_history, goals  
**공통**: 모든 테이블에 `user_id TEXT nullable` 예약 컬럼 포함

accounts 테이블의 `type` 값:
- budget: checking / savings / fixed_deposit / credit_card / debit_card / cash
- invest: brokerage / isa / pension_savings / irp

## 화면 구조 (탭 기준)

```
하단 탭 4개: 홈 | 가계부 | 투자 | 설정

홈: 스크롤형 대시보드 (총 자산, 수지, 투자 요약, 예산, 최근 거래)
가계부: 서브탭 [내역(리스트↔캘린더 토글) | 분석 | 예산]
투자: 서브탭 [포트폴리오 | 배당(바차트·내역·캘린더) | 추이 | 목표]
설정: 리스트형 (데이터관리 · 백업 · 앱설정)

FAB:
- 가계부 탭: "지출/수입" → 지출 입력 / 수입 입력
- 투자 탭: "투자 기록" → 투자 거래 / 배당 수령
- 홈·설정 탭: FAB 없음
```

## 개발 시 주의사항

### 코드 생성
```bash
# Drift + Riverpod 코드 생성 (테이블/Provider 변경 후 필수 실행)
flutter pub run build_runner build --delete-conflicting-outputs
```

### API Key 보안
- KIS API Key는 `flutter_secure_storage`로만 저장
- 코드에 하드코딩 금지, `.env` 파일 사용 금지 (기기 내 암호화 저장)

### 환율 자동 조회
- 배당 입력 폼 진입 시 KIS API에서 당일 USD/KRW 환율 자동 조회
- 저장 시 `fx_rate_applied`와 `krw_converted_amount`를 고정값으로 저장 (사후 환율 변동 무관)

### 잔액 계산
```
현재 잔액 = accounts.initial_balance + Σ(transactions WHERE date >= accounts.balance_date)
```

### CSV 표준 포맷
import/export 파일: accounts.csv, transactions.csv, transactions_invest.csv, dividends.csv  
import 순서 준수: accounts → transactions → transactions_invest → dividends  
export 묶음: `backup_YYYYMMDD.zip`

### 브랜치 규칙
- 작업 브랜치: `develop`에서 분기 (`feature/xxx`, `fix/xxx`, `chore/xxx`)
- PR 대상: 항상 `develop`
- `main` 머지: 버전 태그 릴리즈 시점에만

## 자주 쓰는 명령

```bash
flutter pub get                          # 패키지 설치
flutter pub run build_runner build       # 코드 생성
flutter run                              # 앱 실행 (기본 디바이스)
flutter run -d [device-id]              # 특정 디바이스 실행
flutter test                             # 전체 테스트
flutter build apk --release              # APK 빌드
flutter build apk --split-per-abi       # ABI별 APK 빌드 (배포용)
```
