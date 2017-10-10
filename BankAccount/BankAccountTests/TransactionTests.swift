import XCTest

class TransactionTests: XCTestCase {

    func testDescription_Empty_CanNotBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description)
        XCTAssertNil(transaction)
    }

    func testDescription_GreaterThen20Chars_CanNotBeInstantiated() {
        let description = "JscxTD4oBZZzSXRc4OhXH"
        let transaction = Transaction(description: description)
        XCTAssertNil(transaction)
    }
}
