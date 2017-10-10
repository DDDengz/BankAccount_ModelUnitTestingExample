class Transaction {
    init?(description: String) {
        if(description.isEmpty || description.count > 20) {
            return nil
        }
    }
}
