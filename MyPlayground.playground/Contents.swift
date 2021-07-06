import Foundation
// import UIKit
// Shift - CMD - Enter to run
var greeting = "Hello, playground"
var name = "Nick"

print(name)

let nums = [1,3,5,7,11]

for i in 0..<nums.count {
    print("cursor: ", i, " value: ", nums[i])
}

var numbers = [6895,1078,4920,410,5058,8167,2797,4742,6091,774,2666,1297,7560,132,9213,3776,3768,6179,8132,2689,4132,3697,579,5014,3347,8341,5880,3804,6154,7309,5292,136,952,690,619,7392,4672,7461,4247,5637,8485,7137,2632,8063,2493,1491,5166,1020,6499,2987,7137,1382,5985,8581,8602,4450,6977,4329,5525,7921,7433,675,7385,7445,4702,6385,6967,249,8782,8856,7025,2074,433,9994,2548,4909,6360,2620,3573,7910,2514,1287,3547,1421,184,5165,1205,1873,5248,7636,2562,6281,7000,7841,2362,8050,9075,3100,5106,1438,]


let splitPoint = 5000
func checkSplits(numArray : Array<Int>, split : Int) -> Array<Int> {
    var _splits = [0,0]
    for x in numArray {
        if x < split {
            _splits[0] += 1
        } else {
            _splits[1] += 1
        }
    }
    print("[inside] Below \(split): \(_splits[0]) At or Above \(split): \(_splits[1])")
    return _splits
}

var splits = checkSplits(numArray: numbers, split: splitPoint)
print("[outside] Below \(splitPoint): \(splits[0]) At or Above \(splitPoint): \(splits[1])")

var age : Int? = nil

print(age)

class Monitor {
    var power = false
    var connected = false
    var displayMode : Array = ["HDMI", "4K"]
    
    func capture () -> Array<Int> {
        var displayContents : Array<Int> = []
        // get display contents
        return(displayContents)
    }
}


enum glass {
    case fullOfAir
    case fullOfCoffee
    case halfFullOfBourbon
    case usedToHaveBeer
}

var myGlass : glass = .usedToHaveBeer

print(myGlass)


class wordCount {
    var word = ""
    var count = 0
}
//func tokenizeString( incoming : String) -> Array<wordCount> {
func tokenizeString( incoming : String) {
    var modString = ""
    var wordDict: [String: Int] = [:]
    if let regex = try? NSRegularExpression(pattern: "([^A-Za-z0-9 ])", options: .caseInsensitive) {
        modString = regex.stringByReplacingMatches(in: incoming, options: [], range: NSRange(location: 0, length:  incoming.count), withTemplate: "").lowercased()
    }
    var words = modString.components(separatedBy: " ")
    var wordSet : Set<String> = Set(words)
    for word in wordSet {
        print("word in wordSet: \(word)")
        wordDict[String(word)] = 0
    }
 
    for word in words {
        print("word in modString: \(word)")
        var val = Int(wordDict[String(word)]!)
        print("val = \(val)")
        val += 1
        wordDict[String(word)] = val
    }
    var wordArray : Array<wordCount> = []
    for word in wordSet {
        var newWord = wordCount()
        newWord.word = String(word)
        newWord.count = Int(wordDict[String(word)]!)
        print(newWord)
        wordArray.append(newWord)
    }
    wordArray.sort {$0.count > $1.count}
    print("\(wordArray.count) unique words in list with \(words.count) total words provided")
    for item in wordArray {
        print("\(item.word) \toccurred \(item.count) times")
    }
    
}

tokenizeString(incoming : "This is one new sentence. This is, yet again, a new sentence, sentence, this sentence.")

