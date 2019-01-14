import XCTest
@testable import MovieClient

final class MovieClientTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MovieClient().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
