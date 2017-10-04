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
        if name.count < 2 {
            return false
        }
        return true
    }
}
