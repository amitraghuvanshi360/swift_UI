//
//  AFButton.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 21/01/2024.
//

import SwiftUI

struct AFButton: View {
    var body: some View {
       
        Button(action: {
            print("Custom Button")
        }, label: {
            Text("Learn More")
                .fontWeight(.black)
                .font(.title2)
                .foregroundColor(Color.white)
                .frame(width: 300, height: 50)
                .background(Color.black)
                .cornerRadius(15)
        })
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton()
    }
}
