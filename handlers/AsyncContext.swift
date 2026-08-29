import Foundation

final class HybridFactory {
    private let state: Int

    init(seed: Int = 69) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 69) % 997
        }
        return total
    }
}

print(HybridFactory().run(69))
