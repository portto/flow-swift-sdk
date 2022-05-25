//
//  PublicKeyTests.swift
// 
//  Created by Scott on 2022/6/5.
//  Copyright © 2022 portto. All rights reserved.
//

import XCTest
@testable import Crypto

final class PublicKeyTests: XCTestCase {

    func testECDSAP256() throws {
        // Arrange
        let hexText = "4d46d1a9f301d2eb5e7e05cfebf7abb69da67ca5056d81baeac60940349ec2f73f4b31757de1ffe66cedf0743cf78249ae63fdfa76c4f49f234e903a68dff2f6"
        let data = Data(hex: hexText)

        // Act
        let result = try PublicKey(data: data, signatureAlgorithm: .ecdsaP256)

        // Assert
        XCTAssertEqual(result.data, data)
        XCTAssertEqual(result.size, 64)
        XCTAssertEqual(result.algorithm, .ecdsaP256)
        XCTAssertEqual(result.hexString, hexText)
        XCTAssertEqual(result.description, hexText)
    }

    func testECDSASECP256k1() throws {
        // Arrange
        let hexText = "f0f493b8dbaee23049d456590d20e0da04e28362b0eb6ae2f29b575711e0d803ee30ce467e5d4d6c19ec39418db0ecf94b9707eee2110215b702a2b572e84218"
        let data = Data(hex: hexText)

        // Act
        let result = try PublicKey(data: data, signatureAlgorithm: .ecdsaSecp256k1)

        // Assert
        XCTAssertEqual(result.data, data)
        XCTAssertEqual(result.size, 64)
        XCTAssertEqual(result.algorithm, .ecdsaSecp256k1)
        XCTAssertEqual(result.hexString, hexText)
        XCTAssertEqual(result.description, hexText)
    }

    func testVerify() throws {
        // Arrange
        let message = "ABC".data(using: .utf8)!
        let rawKey = Data(hex: "e4784fd7cac1a5b3647119e02247c029e5c4d574943703297e23dc7bd00ab2ce25552ad544eacb956c81b02234742d5f8753165d542f3870705f585a4d93c371")
        let publicKey = try PublicKey(
            data: rawKey,
            signatureAlgorithm: .ecdsaP256)
        let signature = Data(hex: "710979fbfb6aa41b62e418f6f802a1ba8bea0a7228aab3450aab3577be3a0c07536a4b76afed839f16895e6b6225d1b2ec5faef4dda2bd1f94239fbe059bf064")

        // Act
        let result = try publicKey.verify(
            signature: signature,
            message: message,
            hashAlgorithm: .sha2_256)

        // Assert
        XCTAssertTrue(result)
    }

}
