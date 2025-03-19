https://img.shields.io/badge/platforms-macOS|iOS|tvOS|watchOS|macCatalyst|-blue
https://img.shields.io/badge/swift-syntax|510.0.3-red

# copyable-macro
Inspired by the [blog](https://shopify.engineering/kotlin-style-copy-function-swift-structs) by Scott Birksted, Copyable is a Swift Macro used to bring Kotlin's `copy` functionality on data classes to Swift's structs. 
 

## Functionality
Creates a new instance of the struct with all properties copied from the original, allowing selective modification of specific properties while keeping others unchanged 

## Swift Package Manager
In `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/hootsuite/copyable-macro.git", from: "1.0.0")
]
```

## Usage
```swift
import Copyable

@Copyable
struct Student {
    let name: String
    let grade: Int
}

let student1 = Student(name: "Matthew", grade: 100)

print("name: \(student1.name) grade: \(student1.grade))
```
This should print: "name: Matthew grade: 100" 

```swift
let student 2 = student1.copy { student in  
    student.name = "Henry"
}

print("name: \(student2.name) grade: \(student2.grade))
```
This should print: "name: Henry grade: 100"

## Reference
[A Kotlin Style .copy Function for Swift Structs](https://shopify.engineering/kotlin-style-copy-function-swift-structs)
