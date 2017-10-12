import XCTest

class CustomDescriptionValidator: DescriptionValidator {
    override func validate(_ description: String) -> Bool {
        return true
    }
}
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

    func testDescription_CustomValidator_CanBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description, descriptionValidator: CustomDescriptionValidator())
        XCTAssertNotNil(transaction)
    }

    func testDescription_Valid_IsSet() {
        let description = "valid"
        let transaction = Transaction(description: description)
        XCTAssertEqual("valid", transaction?.description)
    }
}
