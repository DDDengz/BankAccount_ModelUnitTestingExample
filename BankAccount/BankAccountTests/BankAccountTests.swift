import XCTest

class BankAccountTests: XCTestCase {

    let validAccountName = "valid"
    let validAccountNumber = 123456789
    let validSortingCode = "401234"
    let validSortingCode2 = "491234"

    func testAccountName_empty_canNotBeInstantiated() {
        let r = BankAccount(accountName: "", accountNumber: validAccountNumber, sortingCode: validSortingCode)
        XCTAssertNil(r)
    }

    func testAccountName_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: "12345681012345678101", accountNumber: validAccountNumber, sortingCode: validSortingCode)
        XCTAssertNil(r)
    }

    func testAccountName_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode)
        XCTAssertNotNil(r)
    }

    func testAccountNumber_tooShort_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 1, sortingCode: validSortingCode)
        XCTAssertNil(r)
    }

    func testAccountNumber_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 12345678910, sortingCode: validSortingCode)
        XCTAssertNil(r)
    }

    func testAccountNumber_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode)
        XCTAssertNotNil(r)
    }

    func testSortingCode_doesntStartWithCorrectNumber_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "391234")
        XCTAssertNil(r)
    }

    func testSortingCode_tooShort_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "40")
        XCTAssertNil(r)
    }

    func testSortingCode_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "4012345")
        XCTAssertNil(r)
    }

    func testSortingCode_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode)
        XCTAssertNotNil(r)
    }

    func testSortingCode_valid2_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode2)
        XCTAssertNotNil(r)
    }
}
