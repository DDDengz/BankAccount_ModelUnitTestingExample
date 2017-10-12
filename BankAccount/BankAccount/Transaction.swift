class DescriptionValidator {
    func validate(_ description: String) -> Bool {
        if(description.isEmpty || description.count > 20) {
            return false
        }
        return true
    }
}
class Transaction {
    convenience init?(description: String) {
        self.init(description: description, descriptionValidator: DescriptionValidator())
    }

    init?(description: String, descriptionValidator: DescriptionValidator) {
        if !descriptionValidator.validate(description) {
            return nil
        }
    }
}
