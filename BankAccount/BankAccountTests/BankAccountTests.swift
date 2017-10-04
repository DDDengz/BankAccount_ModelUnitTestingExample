import XCTest

class BankAccountTests: XCTestCase {

    private let validFirstName = "Andrew"
    private let validLastName = "Hill"
    private let validEmail = "a.hill@abcfinancial.com"

    private let invalidShortFirstName = "A"
    private let invalidLongFirstName = "ABCDEFGHIJK"
    private let invalidShortLastName = "H"
    private let invalidLongLastName = "ABCDEFGHIJK"
    private let invalidEmail = "a.H"

    func testAccountOwner_ValidFirstName_ValidLastName_ValidEmail_CanBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNotNil(accountOwner)
    }

    func testAccountOwner_InvalidFirstName_ToShort_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidShortFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidFirstName_ToLong_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidLongFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidLastName_ToShort_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidShortLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidLastName_ToLong_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLongLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: invalidEmail)
        XCTAssertNil(accountOwner)
    }
}
