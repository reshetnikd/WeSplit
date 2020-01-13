//
//  ContentView.swift
//  WeSplit
//
//  Created by Dmitry Reshetnik on 13.01.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = 0
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, World!")
                }

                Section {
                    Button("Tap Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                
                VStack {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0..<students.count) {
                            Text(self.students[$0])
                        }
                    }
                }
                
                Section {
                    ForEach(0..<12) {
                        Text("Row \($0)")
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
