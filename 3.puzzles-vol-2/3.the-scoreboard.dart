/// Puzzle 3
///
/// It's time to display the high scores. You need to loop through a Map!
/// Looping through a Map is slightly different than a List because every 
/// item has BOTH a key and a value.
///
/// 1. Use a `for-in` loop on `scoreBoard.entries`.
/// 2. For each entry, print a string that looks like this:
///    "[PlayerName] scored [Score] points!"
///
/// Hint: Inside the loop, if your variable is called `entry`, you can get the 
/// key using `entry.key` and the value using `entry.value`.

void main() {
  var scoreBoard = {
    "Alice": 1250,
    "Bob": 980,
    "Charlie": 1500,
    "Diana": 1120
  };

  // Your code here
}
