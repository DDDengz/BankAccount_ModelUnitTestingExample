import XCTest

class BankAccountTests: XCTestCase {

    func testAccountName_empty_canNotBeInstantiated() {
        let r = BankAccount(accountName: "")
        XCTAssertNil(r)
    }

    func testAccountName_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: "12345681012345678101")
        XCTAssertNil(r)
    }

    func testAccountName_valid_canBeInstantiated() {
        let r = BankAccount(accountName: "valid")
        XCTAssertNotNil(r)
    }
}
