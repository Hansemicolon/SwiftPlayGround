import UIKit

// 문자 타입의 변수에 서로 다른 문자들을 할당
var myChar1 = "f"
var myChar2 = ":"
var myChar3 = "X"

//유니코드로 할당가능
var myChar4 = "\u{0057}"

//string inmterpolation 문자열 보간

var name = "Stomi"
var inboxCount = 25
var maxCount = 100
var message = "\(name) has \(inboxCount) messages. Message capacity remaining is \(maxCount-inboxCount) message"

// 파이썬 처럼 삼중 따옴표 가능
var multiline = """

The console glowed with flashing warnings.
Clealy time was running out.

"I thought you said you knew how to fly this !

"""

/*  변수는 var 키워드를 사용하여 선언
    상수는 let 키워드를 사용하여 선언
 변수를 생성할 때 값으로 초기화 할 수 있다.
 변수가 초기값 없이 선언되었다면 옵셔널(optional)로 선언된 것으로 간주한다
 */

var UserCount = 10 // 이 경우 애플은 let을 사용하라고 권장하고 있다.

//타입 선언과 타입 추론
/* 스위프트는 변수의 탑이 한번 정해지면 그 변수는 다른 타입의 데이터를 저장하는데 사용할 수 없다 -> 컴파일 에러
 상수 또는 변수의 타입을 지정하는 방법은 두 가지
 */
//첫번째 타입 선언
var userCount: Int = 10 //var로 선언했어도 Int로 지정되어서 정수형으로 할당됨
//두번째 타입 추론
var signalStrength = 2.231 // var로 선언했어도 타입 추론에 의해 Double로 할당됨
let companyName = "My Company"


//스위프트 튜플
let MyTuple = (10, 234.235, "this is a String")
//var MyString = MyTuple.2
//let MyInt = MyTuple.0

let (MyInt, Myfloat, MyString) = MyTuple
//var (MyInt, _, MyString) = MyTuple
print(MyInt)
//변수 할당도 가능
let mytuple = (count: 10, length:234.234, message: "this is a string")
print(mytuple.message)


//스위프트 옵셔널 타입
var index: Int?
//변수로 할당 될 수도 있고 안될 수도 있다.
//할당이 안되면 기본적으로 nil
index = 45
if index != nil{
    
    print("인덱스가 할당되었다.")
}
else {
    print("인덱스가 할당되지 않았다.")
}

