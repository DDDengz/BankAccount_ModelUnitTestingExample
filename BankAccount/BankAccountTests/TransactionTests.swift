import XCTest

class CustomDescriptionValidator: DescriptionValidator {
    override func validate(_ description: String) -> Bool {
        return true
    }
}
class TransactionTests: XCTestCase {

    let validDescription = "valid"
    let validDate = Date()
    let validAmount = "1.00"

    func testDescription_Empty_CanNotBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description, date: validDate, isIncoming: true, amount: validAmount)
        XCTAssertNil(transaction)
    }

    func testDescription_GreaterThen20Chars_CanNotBeInstantiated() {
        let description = "JscxTD4oBZZzSXRc4OhXH"
        let transaction = Transaction(description: description, date: validDate, isIncoming: true, amount: validAmount)
        XCTAssertNil(transaction)
    }

    func testDescription_CustomValidator_CanBeInstantiated() {
        let description = ""
        let transaction = Transaction(description: description,  descriptionValidator: CustomDescriptionValidator(), date: validDate, isIncoming: true, amount: validAmount)
        XCTAssertNotNil(transaction)
    }

    func testDescription_Valid_IsSet() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: true, amount: validAmount)
        XCTAssertEqual("valid", transaction?.description)
    }

    func testDate_Valid_IsSet() {
        let date = Date()
        let transaction = Transaction(description: validDescription, date: date, isIncoming: true, amount: validAmount)
        XCTAssertNotNil(transaction?.date)
    }

    func testIsIncoming_Valid_IsSet() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: false, amount: validAmount)
        XCTAssertFalse((transaction?.isIncoming)!)
    }

    func testAmount_NotANumber_CanNotBeInstantiated() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: false, amount: "abc")
        XCTAssertNil(transaction)
    }

    func testAmount_MixOfValidAndInvalid_CanNotBeInstantiated() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: false, amount: "5a5")
        XCTAssertNil(transaction)
    }

    func testAmount_NoDecimal_CanBeInstantiated() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: false, amount: "5")
        XCTAssertNotNil(transaction)
    }

    func testAmount_Valid_IsSet() {
        let transaction = Transaction(description: validDescription, date: validDate, isIncoming: false, amount: validAmount)
        XCTAssertEqual("1.00", transaction?.amount)
    }
}
