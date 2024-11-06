import XCTest
@testable import InventoryMgmt

class ProductTests: XCTestCase {
    
    func testProductInitialization() {
        let product = Product(id: "123", name: "Widget", quantity: 10)
        
        XCTAssertEqual(product.id, "123")
        XCTAssertEqual(product.name, "Widget")
        XCTAssertEqual(product.quantity, 10)
    }

    func testSetQuantity() {
        let product = Product(id: "123", name: "Widget", quantity: 10)
        
        product.setQuantity(20)
        
        XCTAssertEqual(product.getQuantity(), 20)
    }

}
