# copyable-macro
Inspired by the blog https://shopify.engineering/kotlin-style-copy-function-swift-structs by Scott Birksted, Copyable is a Swift Macro used to bring Kotlin's `copy` functionality on data classes to Swift's structs. 
 

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
1. Add the Copyable package as your dependency in the project file 


2. ```swift
import Copyable

@Copyable
struct Student {
    let name: String
    let grade: Int
}

let student1 = Student(name: "Matthew", grade: 100)

print("name: \(student1.name) grade: \(student1.grade))

// should print: "name: Matthew grade: 100" 

let student 2 = student1.copy { student in  
    student.name = "Henry"
}

print("name: \(student2.name) grade: \(student2.grade))

// should print: "name: Henry grade: 100"
```
