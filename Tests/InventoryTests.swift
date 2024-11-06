// Tests/InventoryMgmtTests/InventoryTests.swift

import XCTest
import Mockingbird
@testable import InventoryMgmt

final class InventoryTests: XCTestCase {

    var mockNotificationService: NotificationServiceProtocolMock!
    var mockDatabaseService: DatabaseServiceProtocolMock!
    var inventory: Inventory!

    override func setUp() {
        super.setUp()
        mockNotificationService = mock(NotificationServiceProtocol.self)
        mockDatabaseService = mock(DatabaseServiceProtocol.self)
        inventory = Inventory(notificationService: mockNotificationService,
                              databaseService: mockDatabaseService)
    }

    override func tearDown() {
        mockNotificationService = nil
        mockDatabaseService = nil
        inventory = nil
        super.tearDown()
    }

}
