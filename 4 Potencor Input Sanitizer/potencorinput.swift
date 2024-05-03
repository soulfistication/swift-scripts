#!/usr/bin/swift
import Foundation

let inputFileName = "TANIAFP2.TXT"
let outputFileName = "TANIAFP2-CORRECT.TXT"

let desktopPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).first!

let inputFilePath = desktopPath + "/" + inputFileName

let inputFileURL = URL(fileURLWithPath: inputFilePath)

do {
    let fullContentString = try String(contentsOf: inputFileURL, encoding: .utf8)
    let inputRows = fullContentString.components(separatedBy: ",")
    var outputRows = [String]()

    for i in 0 ..< inputRows.count {
        let row = inputRows[i].replacingOccurrences(of: " ", with: "")
        outputRows += [row + "\n"]
    }

    let result = outputRows.joined()

    let outputFilePath = desktopPath + "/" + outputFileName

    if FileManager.default.fileExists(atPath: outputFilePath) {
        try FileManager.default.removeItem(atPath: outputFilePath)
    }

    FileManager.default.createFile(atPath: outputFilePath, contents: result.data(using: .utf8), attributes: nil)

} catch (let error as NSError) {
    print(error.localizedDescription)
}
