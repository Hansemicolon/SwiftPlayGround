import UIKit
import PlaygroundSupport
//PlaygroundSupport모듈은 플레이그라운드 코드가 페이지와 서로 상호작용을 할 수 있도록 하는 PlaygorundPage라는 이름의 클래스를 가지고 있다.

let mylabel = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 50))

mylabel.backgroundColor=UIColor.red
mylabel.text="아직 문법 익히는 중"
mylabel.textAlignment = .center
mylabel.font = UIFont(name: "Geogia", size: 24)
mylabel


let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
container.backgroundColor=UIColor.white
let squar = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
squar.backgroundColor = UIColor.systemPink

container.addSubview(squar)

//퀵 뷰에서는 애니메이션을 볼 수 가 없음
UIView.animate(withDuration: 5.0, animations: {
    squar.backgroundColor = UIColor.white
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    squar.transform = rotation
})



let container_two = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

// 플레이그라운드페이지를 사용해 역동적인 뷰를 볼 수 있음
//current속성은 현재의 플레이그라운드 페이지에 접근할 수 있데 해준다
PlaygroundPage.current.liveView = container_two
container_two.backgroundColor = UIColor.blue
let quar_two = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
quar_two.backgroundColor = UIColor.white

container_two.addSubview(quar_two)

//라이브 뷰를 눌러서 확인할 수 있음
//5초동안 animations를 작동 시킴
UIView.animate(withDuration: 5.0, animations: {
    //흰색이 점점 파랑색으로 변해감
    quar_two.backgroundColor=UIColor.blue
    //360도 회전 함
    let ratation = CGAffineTransform(rotationAngle: 3.14)
    squar.transform = ratation
})
