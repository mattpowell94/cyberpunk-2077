import Foundation

final class AtomicContext {
    private let state: Int

    init(seed: Int = 12) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 12) % 997
        }
        return acc
    }
}

print(AtomicContext().flush(12))
