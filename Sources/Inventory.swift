import Foundation

class Inventory {
    private var products: [String: Product] = [:]
    private let notificationService: NotificationServiceProtocol
    private let databaseService: DatabaseServiceProtocol
    private let lowStockThreshold = 5
    
    init(notificationService: NotificationServiceProtocol, databaseService: DatabaseServiceProtocol) {
        self.notificationService = notificationService
        self.databaseService = databaseService
    }
    
    func addProduct(_ product: Product) {
        let productId = product.id
        
        // Check if product already exists
        if databaseService.productExists(productId: productId) {
            notificationService.sendNotification("Product \(product.name) already exists in inventory.")
            return
        }
        
        // Add product to the inventory and save to the database
        products[productId] = product
        databaseService.saveProduct(product)
    }
    
    func updateQuantity(for productId: String, to newQuantity: Int) {
        guard let product = products[productId] else {
            notificationService.sendNotification("Product with ID \(productId) not found in inventory.")
            return
        }
        
        product.setQuantity(newQuantity)
        databaseService.saveProduct(product)
        
        if newQuantity < lowStockThreshold {
            notificationService.sendNotification("Stock for product \(product.name) is low: \(newQuantity)")
        }
    }
    
    func getProduct(_ productId: String) -> Product? {
        return products[productId]
    }
}
