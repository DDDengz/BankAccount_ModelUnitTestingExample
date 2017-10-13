import XCTest

class BankAccountTests: XCTestCase {

    let validAccountName = "valid"
    let validAccountNumber = 123456789
    let validSortingCode = "401234"
    let validSortingCode2 = "491234"
    let validAccountType = AccountType.currentAccount
    let validTransaction = [Transaction]()
    let validOwner = [AccountOwner](repeatElement(AccountOwnerTests.validAccount, count: 1))

    func testInit_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNotNil(r)
    }

    func testAccountName_empty_canNotBeInstantiated() {
        let r = BankAccount(accountName: "", accountNumber: validAccountNumber, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testAccountName_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: "12345681012345678101", accountNumber: validAccountNumber, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testAccountNumber_tooShort_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 1, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testAccountNumber_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: 12345678910, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testSortingCode_doesntStartWithCorrectNumber_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "391234", type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testSortingCode_tooShort_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "40", type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testSortingCode_tooLong_canNotBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: "4012345", type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNil(r)
    }

    func testSortingCode_valid2_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode2, type: validAccountType, transactions: validTransaction, owners: validOwner)
        XCTAssertNotNil(r)
    }

    func testAccountType_valid_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode2, type: AccountType.currentAccount, transactions: validTransaction, owners: validOwner)
        XCTAssertNotNil(r)
    }

    func testAccountType_valid2_canBeInstantiated() {
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode2, type: AccountType.savingsAccount, transactions: validTransaction, owners: validOwner)
        XCTAssertNotNil(r)
    }

    func testAccountOwner_tooFew_canNotBeInstantiated() {
        let owners = [AccountOwner]()
        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: owners)
        XCTAssertNil(r)
    }

    func testAccountOwner_tooMany_canNotBeInstantiated() {
        let owners = [AccountOwner](repeatElement(AccountOwnerTests.validAccount, count: 3))

        let r = BankAccount(accountName: validAccountName, accountNumber: validAccountNumber, sortingCode: validSortingCode, type: validAccountType, transactions: validTransaction, owners: owners)
        XCTAssertNil(r)
    }
}
