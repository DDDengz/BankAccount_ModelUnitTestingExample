class AccountNameValidator {
    func validate(_ name: String) -> Bool {
        return !name.isEmpty  && name.count < 20
    }
}

class BankAccount {

    init?(accountName: String, accountNumber: Int, sortingCode: String, accountNameValidator: AccountNameValidator? = nil) {

        let accountNameValidator2 = accountNameValidator ?? AccountNameValidator()
        if !accountNameValidator2.validate(accountName) {
            return nil
        }

        if String(accountNumber).count != 9 {
            return nil
        }
    }
}

