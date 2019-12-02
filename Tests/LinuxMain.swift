import XCTest

import strlenTests

var tests = [XCTestCaseEntry]()
tests += strlenTests.allTests()
XCTMain(tests)
