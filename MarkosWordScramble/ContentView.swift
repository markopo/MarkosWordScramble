//
//  ContentView.swift
//  MarkosWordScramble
//
//  Created by Marko Poikkimäki on 2023-03-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            List {
                Section("Section 1") {
                    Text("Marko says hello!")
                    Text("... yo?")
                }
                
                Section("Section 2") {
                    ForEach(1..<5) {
                        Text("Hello World \($0)")
                    }
                }
                
                Section("Section 3") {
                    Text("Marko says goodbye!")
                    Text("Hasta la vista, baby!")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
