class AccountNameValidator {
    func validate(_ name: String) -> Bool {
        return !name.isEmpty  && name.count < 20
    }
}

enum AccountType {
    case currentAccount, savingsAccount
}

class BankAccount {

    let accountName: String
    let accountNumber: Int
    let sortingCode: String
    let type: AccountType
    let transactions: [Transaction]
    let owners: [AccountOwner]

    init?(accountName: String, accountNumber: Int, sortingCode: String, type: AccountType, transactions: [Transaction], owners: [AccountOwner], accountNameValidator: AccountNameValidator? = nil) {

        self.accountName = accountName
        self.accountNumber = accountNumber
        self.sortingCode = sortingCode
        self.type = type
        self.transactions = transactions
        self.owners = owners

        guard validate(accountName: accountName, accountNumber: accountNumber, sortingCode: sortingCode, type: type, transactions: transactions, owners: owners) else {
            return nil
        }
    }

    func validate(accountName: String, accountNumber: Int, sortingCode: String, type: AccountType, transactions: [Transaction], owners: [AccountOwner], accountNameValidator: AccountNameValidator? = nil) -> Bool{
        let accountNameValidator2 = accountNameValidator ?? AccountNameValidator()
        if !accountNameValidator2.validate(accountName) {
            return false
        }

        if String(accountNumber).count != 9 {
            return false
        }

        if sortingCode.count != 6 || !sortingCode.starts(with: "40") && !sortingCode.starts(with: "49"){
            return false
        }

        if owners.count < 1 || owners.count > 2 {
            return false
        }
        return true
    }
}

