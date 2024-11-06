import Foundation

protocol DatabaseServiceProtocol {
    func productExists(productId: String) -> Bool
    func saveProduct(_ product: Product)
}
