import XCTest

class AccountOwnerTests: XCTestCase {

    private let validFirstName = "Andrew"
    private let validLastName = "Hill"
    private let validEmail = "a.hill@abcfinancial.com"

    private let invalidShortFirstName = "A"
    private let invalidLongFirstName = "ABCDEFGHIJK"
    private let invalidFirstNameWithSpaces = "A B"
    private let invalidFirstNameWithNumbers = "N00B"

    private let invalidShortLastName = "H"
    private let invalidLongLastName = "ABCDEFGHIJK"
    private let invalidLastNameWithSpaces = "A B"
    private let invalidLastNameWithNumbers = "W1LL"

    private let invalidNoAtEmail = "a.H"
    private let invalidMissingNameEmail = "@dog.com"
    private let invalidMissingHostEmail = "frank@.com"
    private let invalidMissingTargetEmail = "frank@dog."

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

    func testAccountOwner_InvalidFirstName_ContainsSpaces_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstNameWithSpaces, lastName: validLastName, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidFirstName_ContainsNumbers_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstNameWithNumbers, lastName: validLastName, email: validEmail)
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

    func testAccountOwner_InvalidLastName_ContainsSpaces_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLastNameWithSpaces, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidLastName_ContainsNumbers_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLastNameWithNumbers, email: validEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidEmail_NoAt_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: invalidNoAtEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidEmail_MissingName_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: invalidMissingNameEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidEmail_MissingHost_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: invalidMissingHostEmail)
        XCTAssertNil(accountOwner)
    }

    func testAccountOwner_InvalidEmail_MissingTarget_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, email: invalidMissingTargetEmail)
        XCTAssertNil(accountOwner)
    }
}

