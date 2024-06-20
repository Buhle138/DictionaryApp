//
//  DictionaryModels.swift
//  DictionaryApp
//
//  Created by Buhle Radzilani on 2024/06/14.
//

import Foundation



@MainActor
class DictionaryModels: ObservableObject {
    
    @Published var wordResponse: [WordObject]? = [WordObject]()
    
    func getAll(word: String) async throws {
        
        
        let url = URL(string: "https://api.dictionaryapi.dev/api/v2/entries/en/\(word)")!
        
        let(data, response) = try await URLSession.shared.data(from: url)
       
        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            fatalError("Invalid Response")
        }
        
        //decoding the data from JSON format to array of WordObject.
        let decodedData = try JSONDecoder().decode(DefinitionsResponse.self, from: data)
        
        self.wordResponse = decodedData.definitions
        
        
    }
    
    
    
}
