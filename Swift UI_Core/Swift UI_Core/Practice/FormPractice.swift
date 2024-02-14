//
//  FormPractice.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 03/02/2024.
//

import SwiftUI

struct FormPractice: View {
    
    @State private var counter = 0
    @State private var demo = "Swift"
    let language = ["C", "Cpp", "Java", "Python","Swift"]
    var body: some View {
        NavigationView {
            Form {
                Text("C Programming")
                Text("C++ Programming")
                
                Section("Web Language") {
                    Text("React JS")
                    Text("PHP")
                    
                    Button("Add Language") {
                        print("hello wordl" , counter)
                        counter += 1
                    }.textCase(.uppercase)
                    
                }
                
                Picker("Select Languages", selection: $demo){
                    ForEach(language,id: \.self) { data in
                        Text(data)

                    }
                }
            }
            .navigationTitle("Programming Languages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FormPractice()
}
