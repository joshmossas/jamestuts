# Dart Programming Cheatsheet

## 1. Variables & Data Types

Variables store information. In Dart, you specify the type of data or let Dart figure it out with var.

| Type | Description | Example |
|---- | ----- | ----- | 
| String | Textual data | `String name = "Alice";` |
| int | Whole numbers | `int age = 25;` |
| double | Decimal numbers |`double price = 19.99;` |
| bool | True or False | `bool isReady = true;` |
| var | Automatic type | `var city = "Tokyo";` |

### Examples

```dart
// String - textual data
String name = "Alice";

// int - whole numbers
int age = 25;

// double - decimal numbers
double price = 19.99;

// bool - true or false
bool isReady = true;

// var - automatic typing (Dart will assign the type based on the value)
var city = "Tokio"; // string
var population = 4491401; // int
var latitude = 35.6764; // double
var isCapital = true;
```


### Updating Variables (Reassignment)

You can change the value of a variable after creating it using the `=` operator.
```dart
int score = 10;    // Creation
score = 20;        // Reassignment
score = score + 5; // Adds 5 to the current value (Total: 25)
```

## 2. Comparing Values

Comparison operators check relationships and return a bool (true or false).

- `==` : Equal to
- `!=` : Not equal to
- `>` : Greater than
- `<` : Less than
- `>=` : Greater than or equal to
- `<=`: Less than or equal to

## 3. Basic Math Operators

- `+`: Addition
- `-`: Subtraction
- `*`: Multiplication
- `/`: Division
- `%`: Remainder (Modulo)

## 4. If Statements (Logic)

```Dart
int speed = 75;

if (speed > 70) {
  print("Slow down!");
} else if (speed == 70) {
  print("Perfect speed.");
} else {
  print("Safe to go faster.");
}
```

## 5. Loops

### For-In Loop (Best for Lists)
The easiest way to process every item in a collection.

```Dart
var colors = ["Red", "Green", "Blue"];

for (var color in colors) {
  print("The current color is $color");
}
```


### Standard For Loop (Best for Counting)

```dart
for (int i = 0; i < 3; i++) {
  print("Counting: $i");
}
```
### While Loop
Repeats as long as a condition is true.

```Dart
int energy = 3;
while (energy > 0) {
  print("Working...");
  energy--; 
}
```
## 6. Functions

Functions are reusable blocks of code. That take in one or more inputs

### Function With One Input

```Dart
// Defining the function
String greet(String name) {
  return "Hello, $name!";
}

// Calling the function
void main() {
  String message = greet("Bob");
  print(message); 
}
```

### Function With Two Inputs

```dart
// Defining the function
String greet(String firstName, String lastName) {
  return "Hello, $firstName $lastName!";
}

// Calling the function
void main() {
  String message = greet("Bob", "Jones");
  print(message); 
}
```

## 6. Lists

Lists hold a collection of items in a specific order.

```Dart
var fruits = ["Apple", "Banana"];

fruits.add("Cherry");   // Add an item to the end
print(fruits[0]);       // Access the first item (Apple)
print(fruits.length);   // Get the size of the list
```

## 7. String Interpolation

Use the `$` symbol to inject variables directly into text.

```Dart
String user = "Admin";
print("Welcome back, $user!"); // "Welcome back, Admin!"
```