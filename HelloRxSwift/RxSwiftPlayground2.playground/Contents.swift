import UIKit
import RxSwift

//MARK: - subscriptionの破棄

let disposeBag = DisposeBag()

Observable.of("A", "B", "C")
    .subscribe {
        print($0)
    }.disposed(by: disposeBag)

Observable<String>.create { observar in
    observar.onNext("A")
    observar.onCompleted()
    observar.onNext("?") //onCompletedした後はonNextできない
    return Disposables.create()
}.subscribe(onNext: { print($0) }, onError: { print($0) }, onCompleted: { print("Completed") }, onDisposed: { print("Disposed") })
