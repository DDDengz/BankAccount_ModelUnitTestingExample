import XCTest

class BankAccountTests: XCTestCase {

    func testAccountName_empty_canNotBeInstantiated() {
        let r = BankAccount(accountName: "")
        XCTAssertNil(r)
    }
}
