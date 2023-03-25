# Swift Collections

## Introduction

The `Swift Collections` provides a fluent, convenient extensions for working with collection of data.

## Available Methods

- [`average`](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#average)

## Usage

### `average`

The `average` method returns the average value of a given collection data:

#### Arrays

```swift
let numberArray: [Double] = [1, 1.5, 2.5, 4]

if let avg = numberArray.average {
    print("The average is \(avg)") // The average is 2.0
} else {
    print("The array is empty.")
}

// The average is 2.25
```

#### Sets

```swift
let numberSet: Set<Double> = [1, 1.5, 2.5, 4]

if let avg = numberSet.average {
    print("The average is \(avg)") // The average is 2.3333333333333335
} else {
    print("The set is empty.")
}

The average is 2.25
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
