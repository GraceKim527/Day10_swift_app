# Day01 정리
## 아우렛 변수를 추가하는 소스

```swift
@IBOutlet var lblHello: UILabel!
```

- IB로 시작하는 변수나 함수는 인터페이스 빌더와 관련된 변수나 함수라는 것을 의미
- strong/weak : 메모리 회수 정책을 나타내는 키워드. 일반적으로 객체를 참조하기 위한 아웃렛 변수는 strong이 기본값으로 선택되어 있으며, weak로 아웃렛 변수를 선언하면 weak이라고 추가
- strong으로 선언된 변수는 다른 곳에서 참고하고 있을 경우, 메모리에서 제거 X, weak로 선언된 변수는 시스템이 임의적으로 메모리에서 제거함.

## 액션 함수를 추가하는 소스 분석
```swift
@IBAction func btnSend(_ sender: UIButton)
```
- `(_ sender: UIButton)` : 액션 함수가 실행되도록 이벤트를 보내는 객체.
