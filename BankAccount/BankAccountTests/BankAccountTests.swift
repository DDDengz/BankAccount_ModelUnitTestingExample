import XCTest

class BankAccountTests: XCTestCase {

    private let validFirstName = "Andrew"
    private let validLastName = "Hill"
    private let validEmail = "a.hill@abcfinancial.com"

    private let invalidFirstName = "A"

    func testAccountOwner_ValidFirstName_ValidLastName_ValidEmail_CanBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNotNil(accountOwner)
    }

    func testAccountOwner_InvalidFirstName_ValidFirstName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstName, lastName: validLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }
}
