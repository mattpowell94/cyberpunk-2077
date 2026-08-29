import Foundation

final class LocalMonitor {
    private let state: Int

    init(seed: Int = 55) {
        self.state = seed
    }

    func parse(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 55) % 997
        }
        return acc
    }
}

print(LocalMonitor().parse(55))
