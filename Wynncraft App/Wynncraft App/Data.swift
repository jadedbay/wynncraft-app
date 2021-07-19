//
//  Data.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

struct CheckAccount: Codable {
    var status: Bool
}

struct UUIDData: Codable {
    var data: UUID
}

struct UUID: Codable {
    var uuid: String
}
