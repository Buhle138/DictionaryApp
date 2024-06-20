//
//  Model.swift
//  DictionaryApp
//
//  Created by Buhle Radzilani on 2024/06/14.
//

import Foundation

struct DefinitionsResponse: Decodable {
    let definitions: [WordObject]
}

struct WordObject: Decodable {
    let definition: String
}
