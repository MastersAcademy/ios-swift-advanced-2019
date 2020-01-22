//
//  FetchDefaultsStorageTests.swift
//  TestStorageUnitTests
//
//  Created by Maksym Savisko on 21.01.2020.
//  Copyright © 2020 Maksym Savisko. All rights reserved.
//

import XCTest
@testable import TestStorage

class FetchDefaultsStorageTests: XCTestCase {
    private var storage: DefaultsStorageImpl!
    private var defaultsMock: UserDefaultsDescribingMock!
    
    override func setUp() {
        super.setUp()
        
        defaultsMock = UserDefaultsDescribingMock()
        storage = DefaultsStorageImpl(storage: defaultsMock)
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testSaveBoolValueForKey() {
        //Given
        let expectedValue = true
        let expectedKey = "some_key"
        
        // When
        storage.saveBool(expectedValue, forKey: expectedKey)
        
        // Then
        XCTAssertEqual(defaultsMock.setForKeyCallsCount, 1)
        XCTAssertNotNil(defaultsMock.setForKeyReceivedArguments, "Expect value and some_key")
        XCTAssertEqual(defaultsMock.setForKeyReceivedArguments!.defaultName,
                       expectedKey)
        guard let actualValue = defaultsMock
            .setForKeyReceivedArguments!.value as? Bool
        else {
            XCTFail("Excpect value as Bool")
            return
        }
        XCTAssertEqual(actualValue, expectedValue)
    }
    
    func testExpectation() {
        
        func somefunction(_ completion: @escaping (Bool) -> Void) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                completion(true)
            }
        }
        
        // Given
        let exp = expectation(description: "somefunction invoked")
        
        // Then
        somefunction { isComplete in
            XCTAssertTrue(isComplete)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 0.5)
    }
}
