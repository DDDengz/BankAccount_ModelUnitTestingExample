class AccountNameValidator {
    func validate(_ name: String) -> Bool {
        return !name.isEmpty
    }
}

class BankAccount {

    init?(accountName: String, accountNameValidator: AccountNameValidator? = nil) {

        if let accountNameValidator = accountNameValidator {
            if(!accountNameValidator.validate(accountName)) {
                    return nil
            }
        } else {
            if(!AccountNameValidator().validate(accountName)) {
                return nil
            }
        }
    }
}

