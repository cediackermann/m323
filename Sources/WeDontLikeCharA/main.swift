struct ScoreWord {
  let word: String

  var score: Int {
    return word.lowercased().filter { $0 != "a" }.count
  }
}

let inputs: [String] = ["Apple", "Banana", "Cherry", "Date"]

let scoredWords = inputs.map(ScoreWord.init)
let sortedWords = scoredWords.sorted { $0.score > $1.score }

for entry in sortedWords {
  print("\(entry.word): \(entry.score) points")
}
