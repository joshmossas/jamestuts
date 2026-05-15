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

Functions are reusable blocks of code. They take in zero or more inputs and optionally return a value.


### Function With One Input

This is a function named `greet` that returns a `String` and accepts a `String` called `name` as its input.

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

This is a function named `greet` that returns a `String` and accepts a `String` called `firstName` as its first input and a `String` called `lastName` as its second input.

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

### Anatomy of a Function

A Dart function consists of several key parts:

```dart
ReturnType functionName(ParameterType parameterName) {
  // Function Body
  return value; // Optional, depends on ReturnType
}
```

- **Return Type**: Specifies what kind of data the function sends back (e.g., `int`, `String`, `double`, `bool`, or `void` if it returns nothing).
- **Function Name**: A descriptive name used to "call" or execute the function.
- **Parameters (Inputs)**: Variables inside parentheses that receive values when the function is called.
- **Function Body**: The block of code `{ ... }` that runs when the function is executed.
- **Return Statement**: Sends a value back to where the function was called.

### Examples

#### No Inputs, No Output (`void`)
```dart
void sayHello() {
  print("Hello!");
}
```

#### Multiple Inputs, Integer Output
```dart
int add(int a, int b) {
  return a + b;
}
```

#### Single Input, Boolean Output
```dart
bool isEven(int number) {
  return number % 2 == 0;
}
```


## 7. Lists

Lists hold a collection of items in a specific order.

```Dart
var fruits = ["Apple", "Banana"];

fruits.add("Cherry");   // Add an item to the end
print(fruits[0]);       // Access the first item (Apple)
print(fruits.length);   // Get the size of the list
```

## 8. String Interpolation

Use the `$` symbol to inject variables directly into text.

```Dart
String user = "Admin";
print("Welcome back, $user!"); // "Welcome back, Admin!"
```

## 9. Maps

Maps are collections of key-value pairs. They are useful for storing data that can be retrieved using a unique key.

```dart
var scores = {
  "Alice": 100,
  "Bob": 85,
  "Charlie": 92
};

// Accessing a value
print(scores["Alice"]); // 100

// Adding or updating an item
scores["David"] = 78;

// Removing an item
scores.remove("Bob");

// Checking if a key exists
print(scores.containsKey("Charlie")); // true
```

### Map Type Declarations

The type for maps are annotated like so `Map<[keyType], [valueType]>`. Examples:

```dart
// string keys with string values
Map<String, String> favoriteFoods = {
  "Alice": "pizza",
  "Bob": "steak",
  "Avery": "spaghetti"
};

// string keys with double values
Map<String, double> subscriptionPrices = {
  "standard": 5.99,
  "premium": 15.99,
  "ultimate": 39.99, 
};

// int keys with string values
Map<int, String> employeeRoles = {
  101: "Manager",
  102: "Developer",
  103: "Designer",
  104: "Sales Associate"
};
```

### Usage with For Loops

The `.entries()` function will return a list of all the key value pairs for a map. There are other useful helpers like `.keys()` and `.values()`.

```dart
var scores = {
  "Alice": 100,
  "Bob": 85,
  "Charlie": 92,
};

// loop over all the entries
for entry in scores.entries() {
  print("Player ${entry.key} has ${entry.value} point(s)!")
}

// other helpers
var allKeys = scores.keys() // ["Alice", "Bob", "Charlie"]
var allValues = scores.values() // [100, 85, 92]
```

