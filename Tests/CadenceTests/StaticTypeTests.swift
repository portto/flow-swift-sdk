//
//  StaticTypeTests.swift
//
//  Created by Scott on 2022/6/22.
//  Copyright © 2022 portto. All rights reserved.
//

import XCTest
import Cadence

final class StaticTypeTests: XCTestCase {

    private var decoder: JSONDecoder!

    override func setUpWithError() throws {
        decoder = JSONDecoder()
    }

    override func tearDownWithError() throws {
        decoder = nil
    }

    func testId() throws {
        XCTAssertEqual(CType.any.id, "Any")
        XCTAssertEqual(CType.anyStruct.id, "AnyStruct")
        XCTAssertEqual(CType.anyResource.id, "AnyResource")
        XCTAssertEqual(CType.number.id, "Number")
        XCTAssertEqual(CType.signedNumber.id, "SignedNumber")
        XCTAssertEqual(CType.integer.id, "Integer")
        XCTAssertEqual(CType.signedInteger.id, "SignedInteger")
        XCTAssertEqual(CType.fixedPoint.id, "FixedPoint")
        XCTAssertEqual(CType.signedFixedPoint.id, "SignedFixedPoint")
        XCTAssertEqual(CType.uint.id, "UInt")
        XCTAssertEqual(CType.uint8.id, "UInt8")
        XCTAssertEqual(CType.uint16.id, "UInt16")
        XCTAssertEqual(CType.uint32.id, "UInt32")
        XCTAssertEqual(CType.uint64.id, "UInt64")
        XCTAssertEqual(CType.uint128.id, "UInt128")
        XCTAssertEqual(CType.uint256.id, "UInt256")
        XCTAssertEqual(CType.int.id, "Int")
        XCTAssertEqual(CType.int8.id, "Int8")
        XCTAssertEqual(CType.int16.id, "Int16")
        XCTAssertEqual(CType.int32.id, "Int32")
        XCTAssertEqual(CType.int64.id, "Int64")
        XCTAssertEqual(CType.int128.id, "Int128")
        XCTAssertEqual(CType.int256.id, "Int256")
        XCTAssertEqual(CType.word8.id, "Word8")
        XCTAssertEqual(CType.word16.id, "Word16")
        XCTAssertEqual(CType.word32.id, "Word32")
        XCTAssertEqual(CType.word64.id, "Word64")
        XCTAssertEqual(CType.ufix64.id, "UFix64")
        XCTAssertEqual(CType.fix64.id, "Fix64")
        XCTAssertEqual(CType.void.id, "Void")
        XCTAssertEqual(CType.bool.id, "Bool")
        XCTAssertEqual(CType.character.id, "Character")
        XCTAssertEqual(CType.never.id, "Never")
        XCTAssertEqual(CType.string.id, "String")
        XCTAssertEqual(CType.bytes.id, "Bytes")
        XCTAssertEqual(CType.address.id, "Address")
        XCTAssertEqual(CType.path.id, "Path")
        XCTAssertEqual(CType.storagePath.id, "StoragePath")
        XCTAssertEqual(CType.capabilityPath.id, "CapabilityPath")
        XCTAssertEqual(CType.publicPath.id, "PublicPath")
        XCTAssertEqual(CType.privatePath.id, "PrivatePath")
        XCTAssertEqual(CType.block.id, "Block")
        XCTAssertEqual(CType.type.id, "Type")
        XCTAssertEqual(
            CType.capability(borrowType: .int).id,
            "Capability<Int>")
        XCTAssertEqual(
            CType.optional(.string).id,
            "String?")
        XCTAssertEqual(
            CType.variableSizedArray(elementType: .string).id,
            "[String]")
        XCTAssertEqual(
            CType.constantSizedArray(elementType: .string, size: 2).id,
            "[String;2]")
        XCTAssertEqual(
            CType.dictionary(keyType: .string, elementType: .int).id,
            "{String:Int}")
        XCTAssertEqual(
            CType.function(.init(typeId: "S.test.Foo{S.test.FooI}")).id,
            "S.test.Foo{S.test.FooI}")
    }

    func testDecodeSimpleTypeAny() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Any"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .any)
        XCTAssertEqual(value.kind, .any)
    }

    func testDecodeSimpleTypeAnyStruct() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AnyStruct"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .anyStruct)
        XCTAssertEqual(value.kind, .anyStruct)
    }

    func testDecodeSimpleTypeAnyResource() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AnyResource"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .anyResource)
        XCTAssertEqual(value.kind, .anyResource)
    }

    func testDecodeSimpleTypeType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Type"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .type)
        XCTAssertEqual(value.kind, .type)
    }

    func testDecodeSimpleTypeVoid() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Void"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .void)
        XCTAssertEqual(value.kind, .void)
    }

    func testDecodeSimpleTypeNever() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Never"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .never)
        XCTAssertEqual(value.kind, .never)
    }

    func testDecodeSimpleTypeBool() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Bool"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .bool)
        XCTAssertEqual(value.kind, .bool)
    }

    func testDecodeSimpleTypeString() throws {
        // Given:
        let jsonData = """
        {
          "kind": "String"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .string)
        XCTAssertEqual(value.kind, .string)
    }

    func testDecodeSimpleTypeCharacter() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Character"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .character)
        XCTAssertEqual(value.kind, .character)
    }

    func testDecodeSimpleTypeBytes() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Bytes"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .bytes)
        XCTAssertEqual(value.kind, .bytes)
    }

    func testDecodeSimpleTypeAddress() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Address"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .address)
        XCTAssertEqual(value.kind, .address)
    }

    func testDecodeSimpleTypeNumber() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Number"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .number)
        XCTAssertEqual(value.kind, .number)
    }

    func testDecodeSimpleTypeSignedNumber() throws {
        // Given:
        let jsonData = """
        {
          "kind": "SignedNumber"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .signedNumber)
        XCTAssertEqual(value.kind, .signedNumber)
    }

    func testDecodeSimpleTypeInteger() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Integer"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .integer)
        XCTAssertEqual(value.kind, .integer)
    }

    func testDecodeSimpleTypeSignedInteger() throws {
        // Given:
        let jsonData = """
        {
          "kind": "SignedInteger"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .signedInteger)
        XCTAssertEqual(value.kind, .signedInteger)
    }

    func testDecodeSimpleTypeFixedPoint() throws {
        // Given:
        let jsonData = """
        {
          "kind": "FixedPoint"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .fixedPoint)
        XCTAssertEqual(value.kind, .fixedPoint)
    }

    func testDecodeSimpleTypeSignedFixedPoint() throws {
        // Given:
        let jsonData = """
        {
          "kind": "SignedFixedPoint"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .signedFixedPoint)
        XCTAssertEqual(value.kind, .signedFixedPoint)
    }

    func testDecodeSimpleTypeInt() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int)
        XCTAssertEqual(value.kind, .int)
    }

    func testDecodeSimpleTypeInt8() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int8"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int8)
        XCTAssertEqual(value.kind, .int8)
    }

    func testDecodeSimpleTypeInt16() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int16"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int16)
        XCTAssertEqual(value.kind, .int16)
    }

    func testDecodeSimpleTypeInt32() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int32"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int32)
        XCTAssertEqual(value.kind, .int32)
    }

    func testDecodeSimpleTypeInt64() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int64"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int64)
        XCTAssertEqual(value.kind, .int64)
    }

    func testDecodeSimpleTypeInt128() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int128"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int128)
        XCTAssertEqual(value.kind, .int128)
    }

    func testDecodeSimpleTypeInt256() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Int256"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .int256)
        XCTAssertEqual(value.kind, .int256)
    }

    func testDecodeSimpleTypeUInt() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint)
        XCTAssertEqual(value.kind, .uint)
    }

    func testDecodeSimpleTypeUInt8() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt8"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint8)
        XCTAssertEqual(value.kind, .uint8)
    }

    func testDecodeSimpleTypeUInt16() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt16"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint16)
        XCTAssertEqual(value.kind, .uint16)
    }

    func testDecodeSimpleTypeUInt32() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt32"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint32)
        XCTAssertEqual(value.kind, .uint32)
    }

    func testDecodeSimpleTypeUInt64() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt64"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint64)
        XCTAssertEqual(value.kind, .uint64)
    }

    func testDecodeSimpleTypeUInt128() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt128"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint128)
        XCTAssertEqual(value.kind, .uint128)
    }

    func testDecodeSimpleTypeUInt256() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UInt256"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .uint256)
        XCTAssertEqual(value.kind, .uint256)
    }

    func testDecodeSimpleTypeWord8() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Word8"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .word8)
        XCTAssertEqual(value.kind, .word8)
    }

    func testDecodeSimpleTypeWord16() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Word16"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .word16)
        XCTAssertEqual(value.kind, .word16)
    }

    func testDecodeSimpleTypeWord32() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Word32"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .word32)
        XCTAssertEqual(value.kind, .word32)
    }

    func testDecodeSimpleTypeWord64() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Word64"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .word64)
        XCTAssertEqual(value.kind, .word64)
    }

    func testDecodeSimpleTypeFix64() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Fix64"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .fix64)
        XCTAssertEqual(value.kind, .fix64)
    }

    func testDecodeSimpleTypeUFix64() throws {
        // Given:
        let jsonData = """
        {
          "kind": "UFix64"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .ufix64)
        XCTAssertEqual(value.kind, .ufix64)
    }

    func testDecodeSimpleTypePath() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Path"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .path)
        XCTAssertEqual(value.kind, .path)
    }

    func testDecodeSimpleTypeCapabilityPath() throws {
        // Given:
        let jsonData = """
        {
          "kind": "CapabilityPath"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .capabilityPath)
        XCTAssertEqual(value.kind, .capabilityPath)
    }

    func testDecodeSimpleTypeStoragePath() throws {
        // Given:
        let jsonData = """
        {
          "kind": "StoragePath"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .storagePath)
        XCTAssertEqual(value.kind, .storagePath)
    }

    func testDecodeSimpleTypePublicPath() throws {
        // Given:
        let jsonData = """
        {
          "kind": "PublicPath"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .publicPath)
        XCTAssertEqual(value.kind, .publicPath)
    }

    func testDecodeSimpleTypePrivatePath() throws {
        // Given:
        let jsonData = """
        {
          "kind": "PrivatePath"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .privatePath)
        XCTAssertEqual(value.kind, .privatePath)
    }

    func testDecodeSimpleTypeAuthAccount() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AuthAccount"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .authAccount)
        XCTAssertEqual(value.kind, .authAccount)
    }

    func testDecodeSimpleTypePublicAccount() throws {
        // Given:
        let jsonData = """
        {
          "kind": "PublicAccount"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .publicAccount)
        XCTAssertEqual(value.kind, .publicAccount)
    }

    func testDecodeSimpleTypeAuthAccountKeys() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AuthAccount.Keys"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .authAccountKeys)
        XCTAssertEqual(value.kind, .authAccountKeys)
    }

    func testDecodeSimpleTypePublicAccountKeys() throws {
        // Given:
        let jsonData = """
        {
          "kind": "PublicAccount.Keys"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .publicAccountKeys)
        XCTAssertEqual(value.kind, .publicAccountKeys)
    }

    func testDecodeSimpleTypeAuthAccountContracts() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AuthAccount.Contracts"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .authAccountContracts)
        XCTAssertEqual(value.kind, .authAccountContracts)
    }

    func testDecodeSimpleTypePublicAccountContracts() throws {
        // Given:
        let jsonData = """
        {
          "kind": "PublicAccount.Contracts"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .publicAccountContracts)
        XCTAssertEqual(value.kind, .publicAccountContracts)
    }

    func testDecodeSimpleTypeDeployedContract() throws {
        // Given:
        let jsonData = """
        {
          "kind": "DeployedContract"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .deployedContract)
        XCTAssertEqual(value.kind, .deployedContract)
    }

    func testDecodeSimpleTypeAccountKey() throws {
        // Given:
        let jsonData = """
        {
          "kind": "AccountKey"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .accountKey)
        XCTAssertEqual(value.kind, .accountKey)
    }

    func testDecodeSimpleTypeBlock() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Block"
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .block)
        XCTAssertEqual(value.kind, .block)
    }

    func testDecodeOptionalType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Optional",
          "type": {
            "kind": "String"
          }
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .optional(.string))
        XCTAssertEqual(value.kind, .optional)
    }

    func testDecodeVariableSizedArrayType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "VariableSizedArray",
          "type": {
            "kind": "String"
          }
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .variableSizedArray(elementType: .string))
        XCTAssertEqual(value.kind, .variableSizedArray)
    }

    func testDecodeConstantSizedArrayType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "ConstantSizedArray",
          "type": {
            "kind": "String"
          },
          "size":3
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .constantSizedArray(elementType: .string, size: 3))
        XCTAssertEqual(value.kind, .constantSizedArray)
    }

    func testDecodeDictionaryType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Dictionary",
          "key": {
            "kind": "String"
          },
          "value": {
            "kind": "UInt16"
          },
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .dictionary(keyType: .string, elementType: .uint16))
        XCTAssertEqual(value.kind, .dictionary)
    }

    func testDecodeCompositeTypeStruct() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Struct",
          "typeID": "s.1c210a7ed71ef9dfa74471d2a78c2151999fd247a5d07dbb148cf55de8c7ba50.Fruit",
          "fields": [
            {
              "id": "name",
              "type": {
                "kind": "String"
              }
            }
          ],
          "initializers": [],
          "type": ""
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .struct(
            .init(
                type: "",
                typeId: "s.1c210a7ed71ef9dfa74471d2a78c2151999fd247a5d07dbb148cf55de8c7ba50.Fruit",
                initializers: [],
                fields: [
                    .init(id: "name", type: .string)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .struct)
    }

    func testDecodeCompositeTypeResource() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Resource",
          "type": "",
          "typeID": "0x3.GreatContract.GreatNFT",
          "initializers":[
            [
              {
                "label": "foo",
                "id": "bar",
                "type": {
                  "kind": "String"
                }
              }
            ]
          ],
          "fields": [
            {
              "id": "foo",
              "type": {
                "kind": "String"
              }
            }
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .resource(
            .init(
                type: "",
                typeId: "0x3.GreatContract.GreatNFT",
                initializers: [
                    [.init(label: "foo", id: "bar", type: .string)]
                ],
                fields: [
                    .init(id: "foo", type: .string)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .resource)
    }

    func testDecodeCompositeTypeEvent() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Event",
          "typeID": "A.7e60df042a9c0868.FlowToken.TokensWithdrawn",
          "fields": [
            {
              "id": "amount",
              "type": {
                "kind": "UFix64"
              }
            },
            {
              "id": "from",
              "type": {
                "kind": "Optional",
                "type": {
                  "kind": "Address"
                }
              }
            }
          ],
          "initializers": [
            []
          ],
          "type": ""
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .event(
            .init(
                type: "",
                typeId: "A.7e60df042a9c0868.FlowToken.TokensWithdrawn",
                initializers: [[]],
                fields: [
                    .init(id: "amount", type: .ufix64),
                    .init(id: "from", type: .optional(.address))
                ]
            )
        ))
        XCTAssertEqual(value.kind, .event)
    }

    func testDecodeCompositeTypeContract() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Contract",
          "typeID": "A.7e60df042a9c0868.FlowToken",
          "fields": [
            {
              "id": "totalSupply",
              "type": {
                "kind": "UFix64"
              }
            }
          ],
          "initializers": [],
          "type": ""
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .contract(
            .init(
                type: "",
                typeId: "A.7e60df042a9c0868.FlowToken",
                initializers: [],
                fields: [
                    .init(id: "totalSupply", type: .ufix64)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .contract)
    }

    func testDecodeCompositeTypeStructInterface() throws {
        // Given:
        let jsonData = """
        {
          "kind": "StructInterface",
          "type": "",
          "typeID": "S.test.S",
          "fields": [
            {
              "id": "foo",
              "type": {
                "kind": "Int"
              }
            }
          ],
          "initializers": [
            [
              {
                "label": "foo",
                "id": "bar",
                "type": {
                  "kind": "Int"
                }
              }
            ],
            [
              {
                "label": "qux",
                "id": "baz",
                "type": {
                  "kind": "String"
                }
              }
            ]
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .structInterface(
            .init(
                type: "",
                typeId: "S.test.S",
                initializers: [
                    [
                        .init(label: "foo", id: "bar", type: .int)
                    ],
                    [
                        .init(label: "qux", id: "baz", type: .string)
                    ]
                ],
                fields: [
                    .init(id: "foo", type: .int)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .structInterface)
    }

    func testDecodeCompositeTypeResourceInterface() throws {
        // Given:
        let jsonData = """
        {
          "kind": "ResourceInterface",
          "type": "",
          "typeID": "S.test.R",
          "fields": [
            {
              "id": "foo",
              "type": {
                "kind": "Int"
              }
            }
          ],
          "initializers": [
            [
              {
                "label": "foo",
                "id": "bar",
                "type": {
                  "kind": "Int"
                }
              }
            ],
            [
              {
                "label": "qux",
                "id": "baz",
                "type": {
                  "kind": "String"
                }
              }
            ]
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .resourceInterface(
            .init(
                type: "",
                typeId: "S.test.R",
                initializers: [
                    [
                        .init(label: "foo", id: "bar", type: .int)
                    ],
                    [
                        .init(label: "qux", id: "baz", type: .string)
                    ]
                ],
                fields: [
                    .init(id: "foo", type: .int)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .resourceInterface)
    }

    func testDecodeCompositeTypeContractInterface() throws {
        // Given:
        let jsonData = """
        {
          "kind": "ContractInterface",
          "type": "",
          "typeID": "S.test.C",
          "fields": [
            {
              "id": "foo",
              "type": {
                "kind": "Int"
              }
            }
          ],
          "initializers": [
            [
              {
                "label": "foo",
                "id": "bar",
                "type": {
                  "kind": "Int"
                }
              }
            ],
            [
              {
                "label": "qux",
                "id": "baz",
                "type": {
                  "kind": "String"
                }
              }
            ]
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .contractInterface(
            .init(
                type: "",
                typeId: "S.test.C",
                initializers: [
                    [
                        .init(label: "foo", id: "bar", type: .int)
                    ],
                    [
                        .init(label: "qux", id: "baz", type: .string)
                    ]
                ],
                fields: [
                    .init(id: "foo", type: .int)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .contractInterface)
    }

    func testDecodeFunctionType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Function",
          "typeID": "foo",
          "parameters": [
            {
              "label": "foo",
              "id": "bar",
              "type": {
                "kind": "String"
              }
            }
          ],
          "return": {
            "kind": "String"
          }
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .function(
            .init(
                typeId: "foo",
                parameters: [
                    .init(label: "foo", id: "bar", type: .string)
                ],
                return: .string
            )
        ))
        XCTAssertEqual(value.kind, .function)
    }

    func testDecodeReferenceType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Reference",
          "authorized": true,
          "type": {
            "kind": "String"
          }
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .reference(.init(authorized: true, type: .string)))
        XCTAssertEqual(value.kind, .reference)
    }

    func testDecodeRestrictedType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Restriction",
          "typeID": "0x3.GreatContract.GreatNFT",
          "type": {
            "kind": "AnyResource",
          },
          "restrictions": [
            {
                "kind": "ResourceInterface",
                "typeID": "0x1.FungibleToken.Receiver",
                "fields": [
                    {
                        "id": "uuid",
                        "type": {
                            "kind": "UInt64"
                        }
                    }
                ],
                "initializers": [],
                "type": ""
            }
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .restriction(
            .init(
                typeId: "0x3.GreatContract.GreatNFT",
                type: .anyResource,
                restrictions: [
                    .resourceInterface(
                        .init(
                            type: "",
                            typeId: "0x1.FungibleToken.Receiver",
                            initializers: [],
                            fields: [
                                .init(id: "uuid", type: .uint64)
                            ]
                        )
                    )
                ])
        ))
        XCTAssertEqual(value.kind, .restriction)
    }

    func testDecodeCapabilityType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Capability",
          "type": {
            "kind": "Reference",
            "authorized": true,
            "type": {
              "kind": "String"
            }
          }
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .capability(
            borrowType: .reference(.init(authorized: true, type: .string))
        ))
        XCTAssertEqual(value.kind, .capability)
    }

    func testDecodeEnumType() throws {
        // Given:
        let jsonData = """
        {
          "kind": "Enum",
          "type": {
            "kind": "String"
          },
          "typeID": "0x3.GreatContract.GreatEnum",
          "initializers":[],
          "fields": [
            {
              "id": "rawValue",
              "type": {
                "kind": "String"
              }
            }
          ]
        }
        """.data(using: .utf8)!

        // When:
        let value = try decoder.decode(CType.self, from: jsonData)

        // Then
        XCTAssertEqual(value, .enum(
            .init(
                type: .string,
                typeId: "0x3.GreatContract.GreatEnum",
                fields: [
                    .init(id: "rawValue", type: .string)
                ]
            )
        ))
        XCTAssertEqual(value.kind, .enum)
    }

}
