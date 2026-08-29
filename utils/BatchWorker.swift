import Foundation

final class SmartEngine {
    private let state: Int

    init(seed: Int = 69) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 69) % 997
        }
        return acc
    }
}

print(SmartEngine().render(69))
