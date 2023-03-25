# Swift Collections

The `Swift Collections` provides a fluent, convenient extensions for working with collection of data.

## Available Methods

- [`average`](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#average)
- [`chunk`](https://github.com/rkukuh/Swift-Collections/edit/main/README.md#chunk)

## Usage

### `average`

The `average` method returns the average value of a given collection data:

#### Array

```swift
let numberArray: [Double] = [1, 1.5, 2.5, 4]

if let avg = numberArray.average {
    print("The average is \(avg)") // The average is 2.0
} else {
    print("The array is empty.")
}

// The average is 2.25
```

#### Set

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

### `chunk`

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
