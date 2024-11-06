import Foundation

class Product {
    let id: String
    let name: String
    private(set) var quantity: Int
    
    init(id: String, name: String, quantity: Int) {
        self.id = id
        self.name = name
        self.quantity = quantity
    }
    
    func setQuantity(_ newQuantity: Int) {
        self.quantity = newQuantity
    }

    func getQuantity() -> Int {
        return quantity
    }
}
