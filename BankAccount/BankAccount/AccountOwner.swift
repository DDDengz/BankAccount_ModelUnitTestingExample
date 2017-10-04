class AccountOwner {
    init?(firstName: String, lastName: String, email: String) {
        if firstName.count < 2 {
            return nil
        }
        if lastName.count < 2 {
            return nil
        }
        return
    }
}
