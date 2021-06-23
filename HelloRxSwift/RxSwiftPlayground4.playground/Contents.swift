import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

//MARK: - BehaviorRelay

let relay = BehaviorRelay(value: ["item 1"])

//relay.accept("aaa")
//relay.accept(relay.value + ["item 2"])
var value = relay.value
value.append("item 2")
value.append("item 3")
value.append("item 4")

relay.accept(value)

relay.asObservable().subscribe {
    print($0)
}
