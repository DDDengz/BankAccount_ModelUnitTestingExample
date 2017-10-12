import Foundation

class DescriptionValidator {
    func validate(_ description: String) -> Bool {
        if(description.isEmpty || description.count > 20) {
            return false
        }
        return true
    }
}
class Transaction {

    let description:String
    let date:Date

    convenience init?(description: String, date: Date) {
        self.init(description: description, descriptionValidator: DescriptionValidator(), date: date)
    }

    init?(description: String, descriptionValidator: DescriptionValidator, date: Date) {
        if !descriptionValidator.validate(description) {
            return nil
        }
        self.description = description
        self.date = Date()
    }
}
