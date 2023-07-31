# Day02 정리 

## 델리게이트란
- 대리자라고도 하며 누군가 해야 할 일을 대신 해주는 역할
- ex. 특정 객체와 상호 작용할 때 메시지를 넘기면 그 메시지에 대한 책임은 델리게이트로 위임.

## 익명 함수란
```swift
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
                self.isLampOn = false
            })
```

- 효율적인 코드를 작성하기 위해 함수 이름을 선언하지 않고 바로 함수 몸체만 만들어 사용하는 일회용 함수를 익명 함수(Anoymous Functions) 혹은 클로저(Closure)라고 함.

- 익명 함수 사용의 예시 
```swift
func completeWork(finished: Bool) -> () {
    print("complete : \(finished)")
} // 리턴 타입 없고 Bool 타입의 매개변수를 받아 출력하는 함수
```

```swift
{
    (finished: Bool) -> () in 
    print("complete: \(finished)")
} // (매개변수) -> (반환 타입) in 실행구문

```

```swift
{
    (finished: Bool) in
    print("complete : \(finished)")
} // (매개변수) in 실행 구문
```

```swift
{
    (finished) in 
    print("complete : \(finished)")
} // 매개변수의 파라미터 타입을 알고 있다면 이를 생략 가능.
```

```swift
{
    finished in 
    print("complete : \(finished)")
} // 매개변수 in 실행구문
```