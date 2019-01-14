import XCTest
@testable import MovieServer

final class MovieServerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MovieServer().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
