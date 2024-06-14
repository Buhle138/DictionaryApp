//
//  ContentView.swift
//  DictionaryApp
//
//  Created by Buhle Radzilani on 2024/06/13.
//

import SwiftUI

struct ContentView: View {
    @State var word: String = ""
    
    var body: some View {
        VStack {
            Text("Enter the name of word.")
            TextField("Enter the name of word", text: $word)
            Text("Definition")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
