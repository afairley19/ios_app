//
//  Ash_Contact_ListTests.swift
//  Ash Contact ListTests
//
//  Created by Ashley Fairley on 11/9/20.
//

import XCTest

class Ash_Contact_ListTests: XCTestCase {
    
    var contactName: String? {
        didSet {
            addContactToList()
        }
    }
    
    var phoneNumber: String? {
        didSet {
            addContactToList()
        }
    }
    
    var emailAddress: String? {
        didSet {
            addContactToList()
        }
    }
    
    var contactAdded = false
    var errorMessage = "Contact missing fields."
    
    func addContactToList() {
        contactAdded.value = contactValid() && phoneValid() && emailValid()
    }
    
    func contactValid() -> Bool {
        let contactRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let contactTest = NSPredicate(format:"SELF MATCHES %@", contactRegEx)
        return contactTest.evaluate(with: contactName)
    }
    
    func phoneValid() -> Bool {
        let phoneRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let phoneTest = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
        return phoneTest.evaluate(with: phoneNumber)
    }
    func emailValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailAddress)
    }



    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
