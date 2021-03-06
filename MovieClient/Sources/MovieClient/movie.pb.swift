// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: movie.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Movie {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var title: String = String()

  var genre: Movie.Genre = .comedy

  var year: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Genre: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case comedy // = 0
    case action // = 1
    case horror // = 2
    case romance // = 3
    case drama // = 4
    case UNRECOGNIZED(Int)

    init() {
      self = .comedy
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .comedy
      case 1: self = .action
      case 2: self = .horror
      case 3: self = .romance
      case 4: self = .drama
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .comedy: return 0
      case .action: return 1
      case .horror: return 2
      case .romance: return 3
      case .drama: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Movie.Genre: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Movie.Genre] = [
    .comedy,
    .action,
    .horror,
    .romance,
    .drama,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Movie: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    func _protobuf_generated_isEqualTo(other: Movie) -> Bool {
        //some code here?
        return false
    }
    
  static let protoMessageName: String = "Movie"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "genre"),
    3: .same(proto: "year"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      case 2: try decoder.decodeSingularEnumField(value: &self.genre)
      case 3: try decoder.decodeSingularInt32Field(value: &self.year)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if self.genre != .comedy {
      try visitor.visitSingularEnumField(value: self.genre, fieldNumber: 2)
    }
    if self.year != 0 {
      try visitor.visitSingularInt32Field(value: self.year, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Movie, rhs: Movie) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.genre != rhs.genre {return false}
    if lhs.year != rhs.year {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Movie.Genre: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "COMEDY"),
    1: .same(proto: "ACTION"),
    2: .same(proto: "HORROR"),
    3: .same(proto: "ROMANCE"),
    4: .same(proto: "DRAMA"),
  ]
}
