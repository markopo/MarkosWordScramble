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
                Text("Marko says hello!")
                
                ForEach(1..<11) {
                    Text("Hello World \($0)")
                }
                
                Text("Marko says goodbye!")
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
