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
    let isIncoming:Bool
    let amount:String

    convenience init?(description: String, date: Date, isIncoming: Bool, amount: String) {
        self.init(description: description, descriptionValidator: DescriptionValidator(), date: date, isIncoming: isIncoming, amount: amount)
    }

    init?(description: String, descriptionValidator: DescriptionValidator, date: Date, isIncoming: Bool, amount: String) {
        if !descriptionValidator.validate(description) {
            return nil
        }
        self.description = description
        self.date = Date()
        self.isIncoming = isIncoming
        let numbers = Set("0123456789.".characters)
        let filter = amount.filter({numbers.contains($0)})
        if(amount != filter) {
            return nil
        }
        self.amount = amount
    }
}
