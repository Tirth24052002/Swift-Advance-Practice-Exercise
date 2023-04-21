import UIKit
/*1.) Create following string manipulation functions using string extensions:
 Add a character in a string at 5th position
 Replace one character with other in a string
 Remove white spaces from string
 Get number of words in a string */
extension String {
    // Add a character in a string at 5th position
    func addcharacter(at index: Int, character: Character) -> String {
        guard index > 0 && index <= self.count else { return self }
        var newIndex = self.index(self.startIndex, offsetBy: index - 1)
        return self.prefix(upTo: newIndex) + String(character) + self.suffix(from: newIndex)
    }
    // Replace one character with other in a string
    func replaceCharacter(at index: Int, with character: Character) -> String {
        guard index > 0 && index <= self.count else { return self }
        var chars = Array(self)
        chars[index - 1] = character
        return String(chars)
    }
    //Remove white spaces from string
    func removeWhiteSpaces() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    //Get number of words in a string
    var wordCount: Int {
        return self.count
    }
}
var helloWorld = "Hello world!"
var addStg = helloWorld.addcharacter(at: 5, character: "!")
var replaceChar = helloWorld.replaceCharacter(at: 5, with: "l")
var removeSpaces = helloWorld.removeWhiteSpaces()
var wrdCount = helloWorld.wordCount
