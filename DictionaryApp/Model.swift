//
//  Model.swift
//  DictionaryApp
//
//  Created by Buhle Radzilani on 2024/06/14.
//

import Foundation

struct DefinitionResponse: Decodable {
    let word:  String
    let definitions: [String]
}
