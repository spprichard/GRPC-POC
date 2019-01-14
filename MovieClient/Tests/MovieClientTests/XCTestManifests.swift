import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MovieClientTests.allTests),
    ]
}
#endif