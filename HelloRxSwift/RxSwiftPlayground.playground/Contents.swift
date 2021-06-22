import UIKit
import RxSwift

let observable = Observable.just(1)

// subscribeでeventをprint
//next(1)
//next(2)
//next(3)
//completed
let observable2 = Observable.of(1, 2, 3)

// subscribeでeventをprint
//next([1, 2, 3])
//completed
// 配列全体でオブザーバブルを作成している
let observable3 = Observable.of([1, 2, 3])

// subscribeでeventをprint
//next(1)
//next(2)
//next(3)
//next(4)
//next(5)
//completed
// 配列の中の個々の要素ごとにオブザーバブルを作成している
let observable4 = Observable.from([1, 2, 3, 4, 5])

observable4.subscribe { event in
    // 要素値のみを出力
    if let element = event.element {
        print(element)
    }
}

observable3.subscribe { event in
    if let element = event.element {
        print(element)
    }
}

// こうすると一々elementに変えなくてもよくなる
observable4.subscribe(onNext: { element in
    print(element)
})
