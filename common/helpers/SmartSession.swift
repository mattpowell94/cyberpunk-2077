import Foundation

final class LocalWorker {
    private let state: Int

    init(seed: Int = 47) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 47) % 997
        }
        return count
    }
}

print(LocalWorker().compute(47))
