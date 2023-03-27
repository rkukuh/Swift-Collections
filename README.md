# Swift Collections

This is a **Swift package** that provides a fluent, convenient extensions for working with collection of data in a more elegant and expressive manner.

![Platform](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-333333.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/rkukuh/Swift-Collections)
![GitHub](https://img.shields.io/github/license/rkukuh/Swift-Collections)

## Installation

1. Open your existing Xcode project or create a new one.
2. In the Xcode menu, go to `File > Add Packages....`
3. In the Search or Enter Package URL field, enter: `https://github.com/rkukuh/Swift-Collections.git`.  
Press <kbd>Return</kbd> to load the package.
4. After the package is loaded, you will see the package details, including its name, the repository URL, and available versions.  
By default, Xcode selects the most recent version. You can choose a specific version, a branch, or a commit using the provided options.
5. Click `Add Package` to confirm the addition of the package to your project.
6. Xcode will download the package and add it to your project's Swift Package Dependencies.  
You can check this by going to your project settings and selecting the `Package Dependencies` tab.
7. To use the package in your project, simply import the package module at the top of any Swift file where you want to use it:

```swift
import SwiftCollections

//...
```

## Available Methods

These following methods (or properties) are all available on native Swift collection data types: `Array`, `Set`, and `Dictionary`.

- [`average`](https://github.com/rkukuh/Swift-Collections#average)
- [`chunk`](https://github.com/rkukuh/Swift-Collections#average)
- [`collapse`](https://github.com/rkukuh/Swift-Collections#collapse)
- [`sum`](https://github.com/rkukuh/Swift-Collections#sum)

## Usage

### `average`

The `average` method returns the average value of a given collection data.

#### Array

```swift
let numberArray: [Double] = [1, 1.5, 2.5, 4]

if let avg = numberArray.average {
    print("The average is \(avg)") // The average is 2.25
} else {
    print("The array is empty.")
}
```

#### Set

```swift
let numberSet: Set<Double> = [1, 1.5, 2.5, 4]

if let avg = numberSet.average {
    print("The average is \(avg)") // The average is 2.25
} else {
    print("The set is empty.")
}
```

#### Dictionary

```swift
let numberDict: [String: Double] = ["a": 1, "b": 1.5, "c": 2.5, "d": 4]

if let avg = numberDict.average {
    print("The average is \(avg)") // The average is 2.25
} else {
    print("The dictionary is empty.")
}
```

```swift
let doubleDict: [String: [Double]] = [
    "foo": [10.5, 40.5],
    "bar": [10, 20]
]

if let avg = doubleDict.average(forKey: "foo") {
    print("The average for key 'foo' is \(avg)") // The average for key 'foo' is 25.5
} else {
    print("No values found for the specified key.")
}
```

```swift
let doubleDict: [String: [Double]] = [
    "foo": [10.5, 40.5],
    "bar": [10, 20],
    "x": [5, 6, 7, 8],
    "y": [4.5, 3.25, 9]
]

let averages = doubleDict.averages()

print(averages) // ["bar": 15.0, "y": 5.583333333333333, "foo": 25.5, "x": 6.5]
```

### `chunk`

The `chunked(by:)` method breaks the collection into multiple, smaller collections of a given size.

#### Array

```swift
let numberArray = [1, 2, 3, 4, 5, 6, 7]
let numberArrayChunks = numberArray.chunked(by: 4)

print(numberArrayChunks) // [[1, 2, 3, 4], [5, 6, 7]]
```

```swift
let stringArray = ["A", "B", "C", "D", "E", "F", "G"]
let stringArrayChunks = stringArray.chunked(by: 3)

print(stringArrayChunks) //[["A", "B", "C"], ["D", "E", "F"], ["G"]]
```

```swift
struct Person {
    let name: String
}

let people = [
    Person(name: "Alice"),
    Person(name: "Bob"),
    Person(name: "Carol"),
]

let peopleChunks = people.chunked(by: 2)

print(peopleChunks) // [[Person(name: "Alice"), Person(name: "Bob")], [Person(name: "Carol")]]
```

#### Set

```swift
let numberSet: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
let numberSetChunks = numberSet.chunked(by: 3)

print(numberSetChunks) // [[7, 4, 1], [3, 5, 6], [2]]
```

```swift
let stringSet: Set<String> = ["A", "B", "C", "D", "E", "F", "G"]
let stringSetChunks = stringSet.chunked(by: 3)

print(stringSetChunks) // [["F", "E", "B"], ["G", "A", "C"], ["D"]]
```

#### Dictionary

```swift
let numberDict: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7]
let numberDictChunks = numberDict.chunked(by: 3)

print(numberDictChunks)
// [[("b", 2), ("c", 3), ("d", 4)], [("e", 5), ("a", 1), ("g", 7)], [("f", 6)]]
```

### `collapse`

The `collapse` method collapses a collection of data into a single, flat collection.

#### Array

```swift
let nestedArray: [[Int]] = [[1, 2], [3, 4, 5], [6]]
let collapsedArray = nestedArray.collapse()

print(collapsedArray) // [1, 2, 3, 4, 5, 6]
```

```swift
let mixedNestedArray: [[Any]] = [["A", "B"], [1, 2, 3], [true, false]]
let mixedCollapsedArray = mixedNestedArray.collapse()

print(mixedCollapsedArray) ["A", "B", 1, 2, 3, true, false]
```

#### Set

```swift
let nestedSetOfInts: Set<Set<Int>> = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8, 9]
]

let collapsedSetOfInts = nestedSetOfInts.collapse()

print(collapsedSetOfInts) // [3, 1, 7, 4, 8, 6, 9, 5, 2]
```

```swift
let nestedSetOfStrings: Set<Set<String>> = [
    ["apple", "banana", "cherry"],
    ["orange", "grape"],
    ["pineapple", "mango"]
]

let collapsedSetOfStrings = nestedSetOfStrings.collapse()

print(collapsedSetOfStrings) // ["cherry", "pineapple", "banana", "mango", "grape", "apple", "orange"]
```


#### Dictionary

```swift
//
```

### `sum`

The `sum` method returns the sum of all items in the collection.

#### Array

```swift
let intArray = [1, 2, 3, 4, 5]

print(intArray.sum()) // 15
```

```swift
let doubleArray = [1, 2.5, 3.75, 4.5, 5]

print(doubleArray.sum()) // 16.75
```

#### Set

```swift
let intSet: Set<Int> = [10, 20, 30, 40, 50]

print(intSet.sum()) // 150
```

```swift
let doubleSet: Set<Double> = [10, 20, 30.75, 40.5, 50]

print(doubleSet.sum()) // 151.25
```

#### Dictionary

```swift
let stringIntDict: [String: Int] = [
    "a": 1, "b": 2, "c": 3, "d": 4, "e": 5
]

print(stringIntDict.sum()) // 15
```

```swift
let stringDoubleDict: [String: Double] = [
    "a": 1.25, "b": 2, "c": 3.5, "d": 4, "e": 5
]

print(stringDoubleDict.sum()) // 15.75
```

```swift
let stringIntArrayDict: [String: [Int]] = [
    "foo": [10, 40],
    "bar": [10, 20]
]

if let sum = stringIntArrayDict.sum(forKey: "foo") {
    print("The sum for key 'foo' is \(sum)") // The sum for key 'foo' is 50
} else {
    print("No values found for the specified key.")
}
```

```swift
let stringDoubleArrayDict: [String: [Double]] = [
    "foo": [10.5, 40.5],
    "bar": [10, 20]
]

if let sum = stringDoubleArrayDict.sum(forKey: "foo") {
    print("The sum for key 'foo' is \(sum)") // The sum for key 'foo' is 51.0
} else {
    print("No values found for the specified key.")
}
```

```swift
let intDictSumAll: [String: [Int]] = [
    "foo": [10, 40],
    "bar": [10, 20],
    "x": [5, 6, 7, 8],
    "y": [4, 3, 9]
]

let intSumAll = intDictSumAll.sumAll()

print(intSumAll) // ["bar": 30, "y": 16, "foo": 50, "x": 26]
```

```swift
let doubleDictSumAll: [String: [Double]] = [
    "foo": [10, 40],
    "bar": [10.25, 20.5],
    "x": [5.5, 6.25, 7, 8],
    "y": [4, 3, 9.25]
]

let doubleSumAll = doubleDictSumAll.sumAll()

print(doubleSumAll) // ["bar": 30.75, "y": 16.25, "x": 26.75, "foo": 50.0]
```

