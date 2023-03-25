# Swift-Collections

The `SwiftCollections` package provides a fluent, convenient extensions for working with collection of data.

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

These following methods (or properties) are all available on native Swift collection types: `Array`, `Set`, and `Dictionary`. See [Usage](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#usage) section below for detail.

- [`average`](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#average)
- [`chunk`](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#chunk)

## Usage

### `average`

The `average` method returns the average value of a given collection data:

#### Array

```swift
let numberArray: [Double] = [1, 1.5, 2.5, 4]

if let avg = numberArray.average {
    print("The average is \(avg)")
} else {
    print("The array is empty.")
}

// The average is 2.25
```

#### Set

```swift
let numberSet: Set<Double> = [1, 1.5, 2.5, 4]

if let avg = numberSet.average {
    print("The average is \(avg)")
} else {
    print("The set is empty.")
}

// The average is 2.25
```

#### Dictionary

```swift
let numberDict: [String: Double] = ["a": 1, "b": 1.5, "c": 2.5, "d": 4]

if let avg = numberDict.average {
    print("The average is \(avg)")
} else {
    print("The dictionary is empty.")
}

// The average is 2.25
```

```swift
let doubleDict: [String: [Double]] = [
    "foo": [10.5, 40.5],
    "bar": [10, 20]
]

if let avg = doubleDict.average(forKey: "foo") {
    print("The average for key 'foo' is \(avg)")
} else {
    print("No values found for the specified key.")
}

// The average for key 'foo' is 25.5
```

```swift
let doubleDict: [String: [Double]] = [
    "foo": [10.5, 40.5],
    "bar": [10, 20],
    "x": [5, 6, 7, 8],
    "y": [4.5, 3.25, 9]
]

let averages = doubleDict.averages()
print(averages)

// ["bar": 15.0, "y": 5.583333333333333, "foo": 25.5, "x": 6.5]
```

### `chunk`

The `chunked(by:)` method breaks the collection into multiple, smaller collections of a given size.

#### Array

```swift
let numberArray = [1, 2, 3, 4, 5, 6, 7]
let numberArrayChunks = numberArray.chunked(by: 4)
print(numberArrayChunks) 

// [[1, 2, 3, 4], [5, 6, 7]]
```

```swift
let stringArray = ["A", "B", "C", "D", "E", "F", "G"]
let stringArrayChunks = stringArray.chunked(by: 3)
print(stringArrayChunks) 

//[["A", "B", "C"], ["D", "E", "F"], ["G"]]
```

#### Set

```swift
let numberSet: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
let numberSetChunks = numberSet.chunked(by: 3)
print(numberSetChunks)

// [[7, 4, 1], [3, 5, 6], [2]]
```

```swift
let stringSet: Set<String> = ["A", "B", "C", "D", "E", "F", "G"]
let stringSetChunks = stringSet.chunked(by: 3)
print(stringSetChunks)

// [["F", "E", "B"], ["G", "A", "C"], ["D"]]
```

#### Dictionary

```swift
let numberDict: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7]
let numberDictChunks = numberDict.chunked(by: 3)
print(numberDictChunks)

// [[("b", 2), ("c", 3), ("d", 4)], [("e", 5), ("a", 1), ("g", 7)], [("f", 6)]]
```
