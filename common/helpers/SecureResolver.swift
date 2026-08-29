import Foundation

final class SecureFactory {
    private let state: Int

    init(seed: Int = 92) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 92) % 997
        }
        return acc
    }
}

print(SecureFactory().collect(92))
