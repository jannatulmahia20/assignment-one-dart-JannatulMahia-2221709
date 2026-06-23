// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
/// EXPECTED OUTPUT:
/// Student Scores: {Alice: <random>, Bob: <random>, ...}
/// Highest Score: <Name> with <Score>
/// Lowest Score: <Name> with <Score>
/// Average Score: <Value>
/// Alice: <Score> (Category)
/// ...
library;


import 'dart:math';

void main() {
  // 1. Student names
  var studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Scores map
  Map<String, int> studentScores = {};

  var random = Random();

  // 3. Assign random scores
  for (var student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41); // 60–100
  }

  // 4. Find highest, lowest, average
  String highestStudent = '';
  String lowestStudent = '';
  int highestScore = 0;
  int lowestScore = 100;
  int total = 0;

  for (var entry in studentScores.entries) {
    var name = entry.key;
    var score = entry.value;

    total += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = name;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = name;
    }
  }

  double averageScore = total / studentNames.length;

  print('Student Scores: $studentScores');
  print('Highest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: $averageScore');

  // 5. Categorization using switch
  for (var student in studentNames) {
    var score = studentScores[student] ?? 0;
    String category = '';

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }

    print('$student: $score ($category)');
  }
}