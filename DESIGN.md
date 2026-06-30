# FinLog 설계 문서 (DESIGN.md)

> 최종 수정: 2026-06-24  
> 상태: 1단계 완료 / 2단계(화면 및 UX 설계) 진행 중

---

## 1단계 — 기획 및 요구사항 정의

### 1-1. 앱 목적

> **"내 소비 패턴과 투자 포트폴리오를 하나의 앱에서 통합 관리하여,**  
> **현재 자산 상태와 흐름을 언제든 즉시 파악할 수 있게 한다"**

스프레드시트는 이 목적을 달성하기 위해 사용해온 기존 도구이며,  
앱은 동일한 목적을 더 효과적으로 달성하기 위한 새로운 수단이다.

### 1-2. 타겟 사용자

- 주식(국내/미국) 투자를 병행하는 20~30대
- 소비·자산·포트폴리오를 단일 앱에서 파악하고 싶은 사용자
- (향후) 협업 및 다중 사용자 확장 가능성을 고려한 구조 설계

### 1-3. 핵심 기능 정의

#### 가계부 도메인

| 기능 | 설명 |
|---|---|
| 거래 입력/수정/삭제 | 날짜, 금액, 카테고리, 메모, 계좌 선택 |
| 카테고리 관리 | 대분류/소분류 계층, 고정비/변동비 구분 |
| 태그 | 거래에 자유롭게 복수 태그 부착 |
| 예산 설정 | 월별/카테고리별 한도 설정 및 초과 경고 |
| 정기 거래 | 반복 고정비 템플릿 등록 → 자동 생성 |
| 월별 리포트 | 수입/지출 합계, 카테고리별 분석, 전월 비교 |

#### 투자 도메인

| 기능 | 설명 |
|---|---|
| 보유 종목 현황 | 종목별 수량·평단가·현재 평가금액·손익률 |
| 매수/매도 내역 | 거래 이력 기록 및 평단가 자동 계산 |
| 배당 관리 | 배당 내역 기록, 월별/연도별 배당 추이 |
| 실시간 시세 | KIS Open API 연동 (국내/미국 주식) |
| 환율 환산 | 해외 주식·배당 원화 환산 (당시 환율 저장) |
| 포트폴리오 시각화 | 종목별/섹터별 비중 도넛 차트 |
| 지수 대비 성과 | 코스피/S&P500/나스닥 대비 수익률 비교 |
| 목표 시뮬레이션 | FV 함수 기반 미래 자산 시각화 |
| 계좌 분리 | 일반/연금저축(IRP)/ISA 계좌별 분리 분석 |

#### 공통

| 기능 | 설명 |
|---|---|
| 종합 대시보드 | 총 자산, 이번 달 수지, 포트폴리오 요약 |
| 전체 자산 추이 | 예금+투자 합산 자산 시계열 그래프 |
| CSV import / export | 앱 표준 포맷 기반 데이터 이동 (3-3 참조) |
| Google 백업/복원 | Google Drive에 CSV zip 업로드/다운로드 |
| 다크/라이트 모드 | 시스템 설정 연동 |

### 1-4. MVP 범위 (단계별 우선순위)

**1차 MVP — 수동 입력 기반, 핵심 기능**
- 가계부 CRUD + 카테고리/태그/예산
- 투자 내역 수동 입력 (매수·매도·배당)
- 보유 종목 현황 대시보드 (수동 가격 기준)
- 월별 가계부 리포트
- 앱 표준 CSV import / export
- Google 계정 연동 + Google Drive 백업/복원

**2차 — API 연동 및 분석 강화**
- KIS Open API 실시간 시세 연동
- 지수 대비 포트폴리오 성과 비교
- 환율 적용 및 환율 변동 기여도 분리

**3차 — 고도화**
- 영수증/배당내역 OCR 자동 입력
- 목표 자산 FV 시뮬레이션
- 계좌별(일반/세제혜택) 분리 분석

### 1-5. 유저 스토리

**가계부**
- 이번 달 카테고리별로 얼마를 썼는지 한눈에 보고 싶다
- 식비가 예산을 초과했을 때 앱에서 바로 알고 싶다
- 매달 자동으로 빠져나가는 고정비를 매번 입력하지 않아도 되게 하고 싶다

**투자**
- 내 포트폴리오 수익률이 코스피 대비 얼마나 좋은지 알고 싶다
- 이번 달 배당금과 연간 누계를 확인하고 싶다
- 주식 앱을 별도로 켜지 않아도 현재 평가금액을 이 앱 안에서 보고 싶다
- ISA 계좌와 일반 계좌의 수익률을 따로 확인하고 싶다

**공통**
- 앱을 열었을 때 이번 달 총 수지와 자산 현황을 3초 안에 파악하고 싶다
- 인터넷이 없어도 기존 데이터를 조회할 수 있어야 한다
- 폰을 바꿔도 내 데이터가 유지되어야 한다
- 내 데이터를 CSV로 언제든 꺼낼 수 있어야 한다

### 1-6. 비기능 요구사항

| 항목 | 요구사항 |
|---|---|
| 인증 방식 | 로컬 우선 — 로그인 없이 즉시 사용 가능. Google 계정은 백업/복원 용도로 선택적 연동 |
| 오프라인 동작 | 로컬 SQLite 기반. 시세 조회·백업 외 모든 기능은 오프라인에서 동작 |
| 보안 | KIS API Key는 flutter_secure_storage(Android Keystore)로 암호화 저장 |
| 플랫폼 | Android 우선, 향후 iOS 확장 가능한 Flutter 구조 유지 |
| 협업 | GitHub 기반 버전 관리, 브랜치 전략 및 PR 템플릿 구성 |
| 확장성 | 전 테이블에 user_id 예약 컬럼 추가 — 향후 멀티유저 확장 시 마이그레이션 불필요 |
| 성능 | 거래 내역 5,000건 기준 목록 스크롤 60fps 유지 |
| 데이터 이식성 | 앱 표준 CSV로 언제든 export → 백업/복원/이전 가능 |

---

## 2단계 — 화면 및 UX 설계

### 2-1. 네비게이션 구조

#### 하단 탭 구성 (4탭 확정)

| 탭 | 아이콘 | FAB 여부 | FAB 라벨 | FAB 옵션 |
|---|---|---|---|---|
| 홈 | ti-home | 없음 | — | — |
| 가계부 | ti-wallet | O | 지출/수입 (빨간) | 지출 입력 / 수입 입력 |
| 투자 | ti-chart-bar | O | 투자 기록 (파란) | 투자 거래 / 배당 수령 |
| 설정 | ti-settings | 없음 | — | — |

FAB 탭 → 해당 도메인 옵션만 담긴 바텀 시트 슬라이드업

#### FAB 설계 원칙
- 가계부 탭: 지출·수입만 표시 (투자 관련 옵션 없음)
- 투자 탭: 투자 거래·배당만 표시 (가계부 관련 옵션 없음)
- 홈·설정 탭: FAB 없음
- 배당 입력 폼 진입 시 KIS Open API로 당일 USD/KRW 환율 자동 조회 → 기본값 세팅, 수동 수정 가능

### 2-2. 전체 화면 목록

#### 온보딩 (최초 1회)
1. 환영 화면
2. 사용자 이름 설정
3. 계좌 추가 (반복)
4. CSV import (선택)
5. Google 계정 연동 (선택)
6. 설정 완료

#### 홈 탭 — 스크롤형 대시보드
- 인사 헤더 (표시 이름 + 오늘 날짜)
- 총 자산 카드 (예금+투자 합산, 전월 대비 변동)
- 이번 달 수입/지출 2분할 카드
- 투자 현황 미니 카드 (평가금액, 수익률)
- 예산 달성률 바 (초과 임박 카테고리 우선, 90% 이상 빨간 강조)
- 최근 거래 내역 5건 (가계부·투자 통합)

#### 가계부 탭 — 서브탭 3개

| 서브탭 | 주요 구성 |
|---|---|
| 내역 | 월 선택기, 월 수입/지출 요약, 리스트 ↔ 캘린더 토글, 날짜별 그룹 거래 리스트 (리스트 뷰) / 히트맵 소비 캘린더 (캘린더 뷰) |
| 분석 | 카테고리별 도넛 차트, 지출 순위 리스트, 전월 비교 바 차트, 고정비/변동비 비율 |
| 예산 | 카테고리별 달성률 바, 초과 카테고리 상단 강조, 예산 편집 |

#### 투자 탭 — 서브탭 4개

| 서브탭 | 주요 구성 |
|---|---|
| 포트폴리오 | 총 평가금액·수익률 카드, 계좌 필터(전체·ISA·연금저축·일반), 종목 비중 도넛 차트, 보유 종목 리스트 |
| 배당 | 이번 달/연간 누계 배당금, 월별 배당 바 차트(12개월), 배당 내역 리스트, 배당 캘린더 (수령일 마커, 날짜 탭 → 종목·금액 상세) |
| 추이 | 전체 자산 시계열 라인 차트, 기간 선택(1M·3M·6M·1Y·전체), 지수 오버레이(KOSPI·S&P500·NASDAQ) |
| 목표 | 목표 자산·월 납입·은퇴 시점 입력, FV 시뮬레이션 라인 차트, 현재 페이스 vs 목표 비교 |

#### 설정 탭 — 섹션 리스트형

| 섹션 | 항목 |
|---|---|
| 프로필 | 이름 수정, Google 연동 상태 |
| 데이터 관리 | 계좌 관리, 카테고리 관리, 예산 설정, 정기 거래 관리 |
| 백업/복원 | Google 계정 연동·자동 백업 설정, CSV 가져오기, CSV 내보내기 |
| 앱 설정 | 테마(시스템·라이트·다크), KIS API Key 설정, 앱 정보 |

### 2-3. 소비 캘린더 설계

가계부 내역 탭 안의 리스트 ↔ 캘린더 **토글 뷰** (서브탭 추가 없음)

#### 히트맵 방식
- 지출이 있는 날에 색상 강도로 소비량 표시
- 날짜 셀 내부: 날짜 숫자 + 하루 지출 합계 (만원 단위)
- 지출 없는 날: 색상 없이 숫자만 표시
- 오늘: 파란 테두리로 강조

#### 색상 기준 (상대적 — 일 예산 기준)
| 색상 | 기준 |
|---|---|
| 색 없음 | 지출 0원 |
| 연두 | 일 예산의 50% 미만 |
| 주황 | 일 예산의 50~100% |
| 빨강 | 일 예산 초과 |

> 일 예산 = 해당 월 총 예산 ÷ 30 (예산 미설정 시 절대값 기준 대체)

#### 날짜 셀 탭 동작
- 선택된 날짜 테두리 강조, 나머지 흐리게 처리
- 캘린더 하단에 해당일 거래 목록 표시 (카테고리·메모·금액)
- 거래 탭 → 수정/삭제 (리스트 뷰와 동일 액션)

#### 사용 패턴
- 일상 내역 확인 → 리스트 뷰
- "이번 달 언제 많이 썼지?" → 캘린더 뷰
- 특정 날짜 거래 찾기 → 캘린더 탭으로 빠른 접근

### 2-4. 배당 캘린더 설계

배당 뷰 서브탭: **차트 | 내역 | 캘린더** (3개)

#### MVP — 과거 기록형
- dividends 테이블의 date 컬럼 활용 (추가 DB 작업 없음)
- 배당 수령일에 녹색 마커 표시
- 날짜 탭 → 해당일 배당 내역 (종목·금액·환율) 하단 표시
- 월 선택기로 월간 이동 가능
- 상단 요약: 이번 달 수령 합계 / 연간 누계

#### 2차 — 예측 포함형 (배당 데이터 누적 후)
- 최근 3~6회 배당일 패턴으로 다음 배당 예정일 계산
  (월배당·분기배당·반기배당·연배당 자동 구분)
- 예상 배당일: 노란 점선 마커 + "예상" 뱃지
- 예상 금액: 최근 배당금 평균값
- 확정 배당일(녹색)과 예상 배당일(노란 점선) 명확히 구분

### 2-5. 입력 폼 명세

#### 지출/수입 입력 폼
| 필드 | 필수 | 비고 |
|---|---|---|
| type 토글 | O | 지출 / 수입 |
| 금액 | O | 숫자 키패드 자동 활성 |
| 날짜 | O | 기본값: 오늘 |
| 대분류 | O | 드롭다운 or 칩 선택 |
| 소분류 | O | 대분류 선택 후 연동 |
| 계좌 | O | 등록된 budget 계좌 목록 |
| 태그 | X | 복수 선택 가능 |
| 메모 | X | 자유 텍스트 |

#### 투자 거래 입력 폼
| 필드 | 필수 | 비고 |
|---|---|---|
| type 토글 | O | 매수 / 매도 |
| 종목코드/티커 | O | 검색 가능 |
| 시장 | O | KR / US |
| 수량 | O | — |
| 단가 | O | KR: 원, US: 달러 |
| 수수료 | O | — |
| 날짜 | O | 기본값: 오늘 |
| 계좌 | O | 등록된 invest 계좌 목록 |
| 총 거래금액 | 자동 | 수량 × 단가 + 수수료 (US: 원화 환산 병기) |

#### 배당 입력 폼
| 필드 | 필수 | 비고 |
|---|---|---|
| 종목코드/티커 | O | — |
| 시장 | O | KR / US |
| 통화 | O | KRW / USD |
| 배당금액 | O | 원화폐 기준 |
| 적용 환율 | O (US만) | KIS API 자동 조회 · 수동 수정 가능 · 새로고침 아이콘 |
| 날짜 | O | 기본값: 오늘 |
| 계좌 | O | 등록된 invest 계좌 목록 |
| 원화 환산금액 | 자동 | 배당금 × 환율, DB에 고정 저장 |

---

## 3단계 — 기술 설계

### 3-1. 인증 및 백업 아키텍처

```
[앱 내부]                              [Google 계정 연동 시]

로컬 SQLite (Drift)
       ↕ 항상 동작 (오프라인 포함)
   Flutter App          → export CSV zip →  Google Drive (사용자 소유)
                        ← download zip  ←  Google Drive
```

**핵심 원칙**: 로컬 DB가 항상 단일 진실 소스(source of truth).
Google 계정은 백업/복원 트리거 역할만 하며, 모든 읽기/쓰기는 항상 로컬 SQLite에서 발생.

#### 백업 전략 (스냅샷 방식)

| 방식 | 설명 |
|---|---|
| 수동 백업 | "지금 백업" 버튼 → CSV zip 생성 → Google Drive 업로드 |
| 자동 백업 | 매일 자정 백그라운드 자동 업로드 (설정에서 on/off) |
| 복원 | Google Drive 백업 목록 조회 → 선택 → import |
| 멀티기기 이전 | 새 기기에서 Google 로그인 → 최신 백업 복원 |

충돌 처리: **마지막 백업이 최신** 원칙 (단일 사용자 기준으로 충분)

#### Google 계정 연동 사용자 플로우

```
첫 실행
  └─ 로그인 없이 바로 사용 가능 (로컬 모드)

설정 → "Google 계정 연동"
  └─ Google OAuth 로그인
       ├─ Google Drive에 기존 백업 있음 → "복원하시겠습니까?" 팝업
       └─ 백업 없음 → 지금부터 백업 활성화

이후 운영
  ├─ 수동: "지금 백업" 버튼
  ├─ 자동: 매일 자정 백그라운드 백업
  └─ 복원: 백업 날짜 목록 → 선택 → import
```

### 3-2. 아키텍처 패턴 — Clean Architecture

의존성 규칙: 바깥 레이어가 안쪽 레이어에만 의존. Domain은 어디에도 의존하지 않음.

```
Presentation (UI, Riverpod Providers)
      ↓ 의존
Domain (Entities, Use Cases, Repository Interfaces)
      ↓ 의존
Data (Repository Impls, Local/Remote DataSources)
      ↓ 공통 사용
Core (유틸리티, 테마, 라우터, 상수)
```

| 레이어 | 구성 요소 | 설명 |
|---|---|---|
| Presentation | Pages, Widgets, Providers | Flutter 위젯 + Riverpod 상태관리 |
| Domain | Entities, Use Cases, Repository Interfaces | 순수 Dart, 프레임워크 의존성 없음 |
| Data | Repository Impls, Local DS (Drift), Remote DS (KIS API) | 구현체 및 데이터 소스 |
| Core | Constants, Errors, Router, Theme, Utils | 전 레이어 공통 유틸리티 |

#### 데이터 흐름 예시 (거래 입력)
```
UI(폼 저장) → Provider → UseCase(검증) → Repository Interface
→ RepositoryImpl → DAO → SQLite INSERT
→ Drift reactive stream → Provider 갱신 → UI 자동 리빌드
```

#### 시세 조회 흐름
```
화면 진입 → KisApiService.fetchPrices() → KIS REST API
→ price_history 테이블 upsert (로컬 캐시)
→ 오프라인 시 캐시값으로 차트 표시
```

### 3-3. 폴더 구조 (Feature-First + Clean Architecture)

```
lib/
├── main.dart                    # 앱 진입점
├── app.dart                     # 루트 위젯, 라우터 초기화
│
├── core/                        # 공통 유틸리티
│   ├── constants/               # 색상, API 엔드포인트, 문자열
│   ├── errors/                  # Failure 클래스, 예외 처리
│   ├── router/                  # go_router 설정
│   ├── theme/                   # 라이트/다크 테마
│   └── utils/                   # 날짜·숫자 포매터
│
├── database/                    # Drift (SQLite)
│   ├── app_database.dart        # DB 클래스 (테이블 등록)
│   ├── tables/                  # 테이블 정의 (accounts, transactions…)
│   └── daos/                    # Data Access Objects (쿼리 모음)
│
├── services/                    # 외부 서비스 클라이언트
│   ├── kis_api_service.dart     # KIS Open API (시세·환율)
│   ├── google_drive_service.dart
│   └── csv_service.dart         # CSV import·export
│
└── features/                    # 기능별 모듈
    ├── onboarding/
    │   └── presentation/
    │       ├── pages/           # 온보딩 6개 화면
    │       └── providers/
    ├── home/
    │   └── presentation/
    ├── budget/                  # Clean Architecture 완전 적용
    │   ├── data/
    │   │   ├── datasources/     # budget_local_datasource.dart
    │   │   ├── models/          # TransactionModel (DB ↔ Entity 변환)
    │   │   └── repositories/    # BudgetRepositoryImpl
    │   ├── domain/
    │   │   ├── entities/        # Transaction, Category, Tag
    │   │   ├── repositories/    # BudgetRepository (abstract)
    │   │   └── usecases/        # GetTransactions, AddTransaction…
    │   └── presentation/
    │       ├── pages/           # BudgetPage, TransactionListPage…
    │       ├── providers/       # budgetProvider, calendarProvider…
    │       └── widgets/         # TransactionItem, BudgetCalendar…
    ├── invest/                  # budget과 동일 구조
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    ├── auth/                    # Google 로그인·Drive 백업
    │   ├── data/
    │   └── presentation/
    └── settings/
        └── presentation/
```

### 3-4. 기술 스택 (최종 확정)

| 영역 | 패키지 | 비고 |
|---|---|---|
| 프레임워크 | Flutter | Android 우선 |
| 상태관리 | flutter_riverpod + riverpod_annotation | Riverpod 3.x, 코드 생성 방식 |
| 로컬 DB | drift + sqlite3_flutter_libs | type-safe ORM, reactive stream |
| 라우팅 | go_router | 선언적 라우팅 |
| 차트 | fl_chart | 시계열·도넛·바·라인 차트 |
| 주식 시세 | KIS Open API | REST (시세·환율), 무료 |
| HTTP 클라이언트 | dio | 인터셉터·에러 처리 용이 |
| Google 인증 | google_sign_in | OAuth 2.0 |
| Google Drive | googleapis + extension_google_sign_in_as_googleapis_auth | Drive 백업·복원 |
| 보안 | flutter_secure_storage | Android Keystore 암호화 |
| CSV | csv | import·export 공용 |
| 오프라인 감지 | connectivity_plus | 네트워크 상태 확인 |
| 유틸리티 | intl, path_provider, share_plus | 포매터, 파일 경로, 공유 |
| dev | build_runner, riverpod_lint, custom_lint | 코드 생성·린트 |

### 3-5. DB 스키마

> 모든 테이블에 `user_id TEXT nullable` 예약 컬럼 포함
> 현재는 null (로컬 단일 사용자), 향후 멀티유저 확장 시 활용

#### 가계부(Budget) 도메인

| 테이블 | 주요 컬럼 | 설명 |
|---|---|---|
| `app_settings` | id, display_name, google_account_email, auto_backup_enabled, theme, onboarding_completed, last_backup_at, created_at | 앱 전역 설정. 항상 id=1인 단일 레코드 |
| `accounts` | id, name, institution, type, domain, currency, initial_balance, balance_date, user_id | 가계부·투자 계좌 통합. 가장 먼저 생성. type 상세는 3-6 참조 |
| `categories` | id, name, parent_category_id, is_fixed, user_id | 대/소분류 계층(자기참조). is_fixed = 고정비 여부 |
| `tags` | id, name, user_id | 거래에 자유롭게 붙이는 태그 |
| `transactions` | id, date, amount, type, category_id, account_id, memo, receipt_image_path, user_id | 소비/수입 내역 |
| `transaction_tags` | transaction_id, tag_id | transactions ↔ tags 다대다 중간 테이블 |
| `budgets` | id, category_id, year_month, limit_amount, user_id | 월별/카테고리별 예산 한도 |
| `recurring_transactions` | id, category_id, amount, day_of_month, memo, user_id | 매달 반복 고정비 템플릿 |

#### 투자(Investment) 도메인

| 테이블 | 주요 컬럼 | 설명 |
|---|---|---|
| `holdings` | id, account_id, symbol, market, quantity, avg_cost, user_id | 현재 보유 종목 |
| `transactions_invest` | id, account_id, symbol, type, date, quantity, price, fee, user_id | 매수/매도 이력 |
| `dividends` | id, account_id, symbol, date, currency, amount, fx_rate_applied, krw_converted_amount, user_id | 배당 내역 |
| `deposits_withdrawals` | id, account_id, date, amount, type, user_id | 투자 계좌 입출금 |
| `price_history` | id, symbol, date, close_price | API 종가 로컬 캐싱 (공용 시세) |
| `benchmark_index_history` | id, index_name, date, value | 지수 이력 (공용 데이터) |
| `goals` | id, target_asset_amount, annual_deposit_target, retirement_date, user_id | FV 시뮬레이션 입력값 |

### 3-6. 계좌(accounts) 유형 정의

#### 가계부(budget) 도메인

| type 값 | 설명 | 예시 |
|---|---|---|
| `checking` | 입출금 통장 | 카카오뱅크 자유입출금 |
| `savings` | 적금 | 신한 정기적금 |
| `fixed_deposit` | 정기예금 | KB 정기예금 |
| `credit_card` | 신용카드 | 삼성카드, 현대카드 |
| `debit_card` | 체크카드 | 카카오뱅크 체크카드 |
| `cash` | 현금 | 지갑 현금 |

#### 투자(invest) 도메인

| type 값 | 설명 | 예시 |
|---|---|---|
| `brokerage` | 일반 증권 계좌 | 한국투자 일반 |
| `isa` | ISA 계좌 | 한국투자 ISA |
| `pension_savings` | 연금저축펀드 | 미래에셋 연금저축 |
| `irp` | 개인형 퇴직연금(IRP) | 한국투자 IRP |

#### 카드 계좌 처리 방식

**사용일 기준** 확정: 가계부의 목적이 "언제 어디에 썼나"를 파악하는 것이므로 결제일이 아닌 사용일에 지출로 기록.
이는 대부분의 가계부 앱의 표준 방식이며, MVP 이후에도 유지.

> `transactions` 잔액 검증:
> `현재 잔액 = initial_balance + Σ(balance_date 이후 모든 거래)`
> 앱이 이 값을 계산하여 사용자가 실제 잔액과 비교할 수 있는 검증 기능 제공

### 3-7. 앱 표준 CSV 포맷 (App Standard Format)

앱 DB 스키마 기준으로 정의한 표준 포맷.
import와 export가 동일한 포맷을 공유 → 백업/복원/외부 이전이 자유롭다.

#### import 처리 순서 (참조 무결성)
```
1. accounts.csv             → 계좌 먼저 등록
2. transactions.csv         → 가계부 내역
3. transactions_invest.csv  → 투자 내역
4. dividends.csv            → 배당 내역
```
export 시 전체를 `backup_YYYYMMDD.zip`으로 묶어 제공.

#### 온보딩 시 초기 잔액 설정 플로우

```
첫 실행 온보딩
  ├─ [간편 시작] 오늘 날짜 기준으로 잔액만 입력
  │     → balance_date = 오늘
  │     → 이후 거래만 추적 (과거 분석 불가)
  │
  └─ [과거 데이터 포함] CSV import
        → 과거 거래 내역을 표준 CSV로 정리 후 import
        → balance_date = CSV 최초 거래일
        → 해당 시점부터 소비·투자 패턴 분석 가능
```
잔액 검증 기능: 앱이 계산한 잔액 vs 실제 잔액을 사용자가 비교 확인 가능.
불일치 시 누락된 거래가 있다는 신호로 활용.

#### accounts.csv
| 컬럼 | 타입 | 설명 |
|---|---|---|
| id | integer | export 시 포함, import 시 무시(재발급) |
| name | string | 계좌명 (다른 CSV에서 참조키로 사용) |
| institution | string | 금융기관명 (카카오뱅크, 신한 등) |
| type | string | checking / savings / fixed_deposit / credit_card / debit_card / cash / brokerage / isa / pension_savings / irp |
| domain | string | budget / invest |
| currency | string | KRW / USD (기본값 KRW) |
| initial_balance | integer | 추적 시작 시점(balance_date)의 잔액 (원화 기준) |
| balance_date | YYYY-MM-DD | initial_balance 기준일. 이 날짜 이후의 거래로 잔액 자동 계산 |

#### transactions.csv
| 컬럼 | 타입 | 설명 |
|---|---|---|
| date | YYYY-MM-DD | 거래일 (카드: 사용일 기준) |
| amount | integer | 금액 (원화, 소수점 없음) |
| type | string | income / expense |
| category | string | 대분류명 |
| subcategory | string | 소분류명 (없으면 빈 값) |
| account_name | string | accounts.csv의 name과 일치 |
| memo | string | 메모 (선택) |
| tags | string | 쉼표 구분 복수 태그 (선택) |
| is_fixed | boolean | 고정비 여부 |

#### transactions_invest.csv
| 컬럼 | 타입 | 설명 |
|---|---|---|
| date | YYYY-MM-DD | 거래일 |
| symbol | string | 종목코드 (KR: 6자리, US: 티커) |
| market | string | KR / US |
| type | string | buy / sell |
| quantity | decimal | 수량 |
| price | decimal | 거래 단가 (KR: 원, US: 달러) |
| fee | decimal | 수수료 |
| account_name | string | accounts.csv의 name과 일치 |

#### dividends.csv
| 컬럼 | 타입 | 설명 |
|---|---|---|
| date | YYYY-MM-DD | 배당 수령일 |
| symbol | string | 종목코드 |
| market | string | KR / US |
| currency | string | KRW / USD |
| amount | decimal | 원화폐 기준 배당금 |
| fx_rate | decimal | 적용 환율 (KRW일 경우 1) |
| krw_amount | integer | 원화 환산 금액 (당시 환율 고정 저장) |
| account_name | string | accounts.csv의 name과 일치 |

## 4단계 — 개발 환경 구성

### 4-1. GitHub 파일 구성

| 파일 | 역할 |
|---|---|
| `README.md` | 프로젝트 소개, 설치 방법, 기술 스택 |
| `DESIGN.md` | 기획·화면·스키마 전체 설계 문서 (이 파일) |
| `CLAUDE.md` | Claude Code가 참고하는 프로젝트 컨텍스트 |
| `.gitignore` | Flutter 표준 + 시크릿·빌드 파일 제외 |
| `.github/PULL_REQUEST_TEMPLATE.md` | PR 작성 체크리스트 |
| `.github/ISSUE_TEMPLATE/bug_report.md` | 버그 리포트 템플릿 |
| `.github/ISSUE_TEMPLATE/feature_request.md` | 기능 요청 템플릿 |

### 4-2. 브랜치 전략

| 브랜치 | 역할 | 생성 기준 |
|---|---|---|
| `main` | 배포 가능한 안정 버전 | 버전 태그 릴리즈 시 develop에서 머지 |
| `develop` | 통합 개발 브랜치 | 모든 PR의 base 브랜치 |
| `feature/기능명` | 신규 기능 개발 | develop에서 분기 |
| `fix/버그명` | 버그 수정 | develop에서 분기 |
| `chore/작업명` | 설정·패키지·리팩토링 | develop에서 분기 |

**커밋 메시지 컨벤션**
```
feat: 가계부 소비 캘린더 히트맵 추가
fix: 투자 탭 배당 환율 조회 오류 수정
chore: drift 패키지 2.x로 업그레이드
docs: CLAUDE.md 아키텍처 설명 보완
refactor: BudgetRepository 인터페이스 분리
```

### 4-3. CLAUDE.md 핵심 내용

Claude Code 세션 시작 시 `CLAUDE.md`를 읽도록 지시하면, 아래 내용을 매번 설명하지 않아도 돼요.

- 프로젝트 목적 및 아키텍처 요약
- 주요 패키지 목록
- 코드 생성 명령 (`build_runner`)
- API Key 보안 규칙
- 환율 고정 저장 규칙
- 잔액 계산 공식
- 브랜치 규칙
- 자주 쓰는 Flutter 명령

---

## 5단계 — Claude Code 개발

> 4단계 완료 후 Claude Code로 이관하여 개발 시작

---

## 참고 서비스

| 서비스 | 참고 포인트 |
|---|---|
| 굴림 (서대리TV) | 배당 관리, 포트폴리오 시각화, 지수 대비 성과, FV 시뮬레이션, 계좌 분리 |
| 뱅크샐러드 | 대/소분류 카테고리, 고정비·변동비 구분, 예산 초과 알림 |
| 토스 | 주간 리포트, 카테고리별 소비 분석 |
| 브로콜리 | 태그 기능을 통한 세부 소비 분류 |
