# BankAccount Swift Example

This repository contains a simple implementation of an Inventory Management System in Swift. This repo is used for practicing simple mocking.

This repo uses [XCTests](https://developer.apple.com/documentation/xctest/) for unit testing, and llvm-cov for tracking coverage. It uses [mockingbird](https://mockingbirdswift.com) for mocking although the set up was not successful.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- **Swift**: You can download the latest version of Swift from the [official Swift website](https://swift.org/download/).
- **Xcode**: You need to download and install Xcode as some of the testing frameworks don't come with the xcode command line tools. You can download it from the [Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12).

## Building the code and Running the Unit tests

1. **Clone the Repository**: Clone the project to your local machine.
    ```bash
    git clone <repository-url>
    cd <your-project-directory>
    ```

2. **Build the Project**: 
    ```bash
    swift build
    ```

3. Run the unit tests

```bash
swift test --enable-code-coverage
```

4. Get a coverage report summary

```
xcrun llvm-cov report \
    --instr-profile=.build/debug/codecov/default.profdata  \
    --object .build/arm64-apple-macosx/debug/BankAccount.build/BankAccount.swift.o
```

This gives you a very ugly coverage summary on the terminal and for some reason doesn't detect the branches in the code. If you develop directly in xcode, there are probably better code coverage tools that have better visuals. Note that the started repo only has tests fro Product.

## Your Task

You want to add tests for the Inventory.swift class, but notice how neither DatabaseServiceProtocol nor NotificationServiceProtocol have any concrete implementations. Your goal is to test that the Inventory class does what it's supposed to do, even though these services are not yet implemented. Accordingly, you will use mocks and stubs to implement your tests.

You should be able to get 100% coverage for the Inventory class. You should think about the behavior you want to make sure happens when testing (e.g., when we add inventory, we want to make sure the Inventory class actually save things in the Database or that it sent notifications when it's supposed to send them but not in other times.)

Go about the task systematically:

1. first explore the code and understand what each class is doing and how the classes interact with each other
2. run the current tests and observe the current coverage
3. take each function in the Inventory class and write tests for it to ensure its coverage 

Read the [mockingbird](https://mockingbirdswift.com) for successful setup.

