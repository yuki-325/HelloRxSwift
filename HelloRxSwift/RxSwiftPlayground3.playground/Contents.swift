import UIKit
import RxSwift

//MARK: - PublishSubject

let disposeBag = DisposeBag()

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


