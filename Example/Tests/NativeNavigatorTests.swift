//
//  NativeNavigatorTests.swift
//  ADCoordinator_Tests
//
//  Created by Pierre Felgines on 17/02/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
@testable import ADCoordinator

class NativeNavigatorTests: XCTestCase {

    func testDeallocNativeNavigator() {
        // Given
        var viewController = UIViewController()

        let expectation = self.expectation(description: "view controller is deallocated")
        viewController.registerCallbackForDealloc {
            expectation.fulfill()
        }

        // When
        viewController = UIViewController() // dealloc previous instance

        // Then
        waitForExpectations(timeout: 0.1)
    }
}