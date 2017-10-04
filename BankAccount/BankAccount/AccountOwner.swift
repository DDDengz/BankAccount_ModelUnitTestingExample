class AccountOwner {
    init?(firstName: String, lastName: String, email: String) {
        guard validate(name: firstName) && validate(name: lastName) else {
            return nil
        }
        if(!email.contains("@")) {
            return nil
        }
    }

    private func validate(name: String) -> Bool{
        if name.count < 2 || name.count > 10 || name.contains(" ") {
            return false
        }

        let numbers = Set("0123456789".characters)
        let filter = name.filter({numbers.contains($0)})
        if filter.count > 0 {
            return false
        }
        return true
    }
}
