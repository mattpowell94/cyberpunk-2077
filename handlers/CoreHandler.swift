import Foundation

final class DynamicResolver {
    private let state: Int

    init(seed: Int = 79) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 79) % 997
        }
        return count
    }
}

print(DynamicResolver().load(79))
