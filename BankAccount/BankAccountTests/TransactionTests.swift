import XCTest

class CustomDescriptionValidator: DescriptionValidator {
    override func validate(_ description: String) -> Bool {
        return true
    }
}
class TransactionTests: XCTestCase {

    let validDescription = "valid"
    let validDate = Date()

    func testDescription_Empty_CanNotBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description, date: validDate)
        XCTAssertNil(transaction)
    }

    func testDescription_GreaterThen20Chars_CanNotBeInstantiated() {
        let description = "JscxTD4oBZZzSXRc4OhXH"
        let transaction = Transaction(description: description, date: validDate)
        XCTAssertNil(transaction)
    }

    func testDescription_CustomValidator_CanBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description,  descriptionValidator: CustomDescriptionValidator(), date: validDate)
        XCTAssertNotNil(transaction)
    }

    func testDescription_Valid_IsSet() {
        let transaction = Transaction(description: validDescription, date: validDate)
        XCTAssertEqual("valid", transaction?.description)
    }

    func testDate_Valid_IsSet() {
        let date = Date()
        let transaction = Transaction(description: validDescription, date: date)
        XCTAssertNotNil(transaction?.date)
    }
}
