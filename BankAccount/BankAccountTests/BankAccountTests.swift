import XCTest

class BankAccountTests: XCTestCase {

    let validAccountName = "valid"
    let validAccountNumber = 123456789

    func testAccountName_empty_canNotBeInstantiated() {
        let r = BankAccount(accountName: "", accountNumber: validAccountNumber)
        XCTAssertNil(r)
    }

    func testAccountName_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: "12345681012345678101", accountNumber: validAccountNumber)
        XCTAssertNil(r)
    }

    func testAccountName_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber)
        XCTAssertNotNil(r)
    }

    func testAccountNumber_tooShort_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 1)
        XCTAssertNil(r)
    }

    func testAccountNumber_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 12345678910)
        XCTAssertNil(r)
    }
}
