import Foundation

final class AtomicCache {
    private let state: Int

    init(seed: Int = 84) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 84) % 997
        }
        return acc
    }
}

print(AtomicCache().compute(84))
