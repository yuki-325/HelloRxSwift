import UIKit
import RxSwift



let disposeBag = DisposeBag()

//MARK: - PublishSubject

let subject = PublishSubject<String>()

subject.onNext("Issue 1") //ここは出力されない

subject.subscribe { event in
    print(event)
}

subject.onNext("Issue 2")
subject.onNext("Issue 3")

//subject.dispose()

subject.onCompleted()

subject.onNext("Issue 4") //ここは出力されない

//MARK: - BehaviorSubject

let subject2 = BehaviorSubject(value: "Initial Value")

subject2.onNext("last") //こうすることでInitial Valueが出力されなくなる

subject2.subscribe { event in
    print(event)
}

subject2.onNext("A")
