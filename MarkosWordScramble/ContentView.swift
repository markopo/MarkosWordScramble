//
//  ContentView.swift
//  MarkosWordScramble
//
//  Created by Marko Poikkimäki on 2023-03-08.
//

import SwiftUI

struct ContentView: View {
    @State var sortAsc = true
    @State var people = [ "Jukka", "Pekka", "Marko", "Timo", "Kalle", "Pelle" ]
    
    func sortPeople() {
        if(sortAsc) {
          people = people.sorted()
        } else {
          people = people.sorted().reversed()
        }
        
        sortAsc = !sortAsc
    }
    
    var body: some View {
        VStack {
           
            List {
                Section("Start") {
                    Text("Marko says hello!")
                    Text("... yo?")
                    Button(action: sortPeople) {
                        Text("Sort")
                    }.buttonStyle(.borderedProminent)
                }
                .padding(.leading)
                
                Section("People") {
                    ForEach(people, id: \.self) {
                        Text($0)
                    }
                }
                .padding(.leading)
                
                Section("End") {
                    Text("Marko says goodbye!")
                    Text("Hasta la vista, baby!")
                }
                .padding(.leading)
            }
            .listStyle(.grouped)
            .onAppear(perform: sortPeople)
            .animation(.easeInOut(duration: 1.5), value: people)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
