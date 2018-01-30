let asciiTable = zip(65..., "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

for (code, character) in asciiTable {
    print(code, character, separator: ": ")
}

// Using String as a Collection

extension Unicode.Scalar {
    var isRegionalIndicator: Bool {
        return (("🇦"..."🇿")).contains(self)
    }
}

extension Character {
    var isFlag: Bool {
        let scalars = self.unicodeScalars
        return scalars.count == 2
        && scalars.first!.isRegionalIndicator
        && scalars.last!.isRegionalIndicator
    }
}

let usFlag: Character = "🇺🇸"
let otherUsFlag: Character = "\u{1F1FA}\u{1f1f8}"

if usFlag.isFlag {
    print("It is a flag")
} else {
    print("It isn't a flag")
}

if otherUsFlag.isFlag {
    print("It's another flag")
} else {
    print("It isn't another flag")
}

