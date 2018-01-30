import Foundation

extension MutableCollection {
    mutating func shuffle() {
        let c = count
        guard c > 1 else {
            return
        }

        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

extension Array {
    func takeRandom() -> Element? {
        guard count != 0 else { return nil }
        let index = Int(arc4random()) % Int(count)
        return self[index]
    }
}

let buzzwords = [
    "Model", "View", "Controller", "Entity",
    "Router", "Clean", "Reactive", "Presenter",
    "Interactor", "Megatron", "Coordinator",
    "Flow", "Manager"
]

var first, second, third: String

repeat {
    first = buzzwords.shuffled().takeRandom()!
    second = buzzwords.shuffled().takeRandom()!
    third = buzzwords.shuffled().takeRandom()!

} while ( first == second || second == third )

let acronym = first + " " + second + " " +  third

print(acronym)
