# 핀로그 (FinLog)

> 소비 패턴과 투자 포트폴리오를 하나의 앱에서 통합 관리하여,  
> 현재 자산 상태와 흐름을 언제든 즉시 파악할 수 있게 한다.

## 주요 기능

**가계부**
- 지출/수입 내역 기록 (카테고리·태그·계좌 분류)
- 날짜별 소비 히트맵 캘린더
- 카테고리별 예산 설정 및 달성률 추적
- 월별 지출 분석 (카테고리 도넛 차트, 전월 비교)

**투자**
- 보유 종목 현황 및 실시간 평가금액 (KIS Open API)
- 매수/매도 이력 및 평단가 자동 계산
- 배당 내역 관리 및 캘린더 (환율 자동 적용)
- 포트폴리오 vs 지수(KOSPI·S&P500·NASDAQ) 성과 비교

**자산 관리**
- 예금·투자 통합 총 자산 대시보드
- Google Drive 백업/복원 (로그인 없이도 로컬 사용 가능)
- 표준 CSV export/import (데이터 이식성 보장)

## 기술 스택

| 영역 | 기술 |
|---|---|
| 프레임워크 | Flutter (Android 우선) |
| 상태관리 | Riverpod (riverpod_annotation) |
| 로컬 DB | Drift (SQLite ORM) |
| 라우팅 | go_router |
| 차트 | fl_chart |
| 주식 시세 | KIS Open API (REST) |
| Google 연동 | google_sign_in + googleapis |
| 보안 | flutter_secure_storage |

## 개발 환경 설정

### 요구사항
- Flutter SDK 3.x 이상
- Android Studio / VS Code
- Android 에뮬레이터 또는 실기기 (API 21+)

### 설치

```bash
# 저장소 클론
git clone https://github.com/[username]/finlog.git
cd finlog

# 패키지 설치
flutter pub get

# 코드 생성 (Drift + Riverpod)
flutter pub run build_runner build --delete-conflicting-outputs

# 앱 실행
flutter run
```

### KIS Open API 설정

1. [KIS Developers](https://apiportal.koreainvestment.com) 계정 생성
2. App Key / App Secret 발급
3. 앱 실행 후 설정 > KIS API 설정에서 입력
   - API Key는 기기 내부에 암호화 저장되며 외부로 전송되지 않음

## 아키텍처

Clean Architecture + Feature-First 폴더 구조를 따릅니다.

```
Presentation (Riverpod Providers + Flutter Widgets)
      ↓
Domain (Entities + Use Cases + Repository Interfaces)
      ↓
Data (Repository Impls + Drift Local DS + KIS Remote DS)
```

자세한 설계 문서: [`DESIGN.md`](./DESIGN.md)  
Claude Code 가이드: [`CLAUDE.md`](./CLAUDE.md)

## 브랜치 전략

| 브랜치 | 역할 |
|---|---|
| `main` | 배포 가능한 안정 버전 |
| `develop` | 통합 개발 브랜치 (PR 기준) |
| `feature/기능명` | 신규 기능 개발 |
| `fix/버그명` | 버그 수정 |
| `chore/작업명` | 설정·패키지·리팩토링 |

모든 작업은 `develop` 브랜치에서 분기하고, PR을 통해 `develop`으로 머지합니다.  
`develop` → `main` 머지는 버전 태그 릴리즈 시점에 수행합니다.

## 라이선스

MIT License
