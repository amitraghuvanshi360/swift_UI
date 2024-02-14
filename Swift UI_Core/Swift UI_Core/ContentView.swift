//
//  ContentView.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 10/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        ZStack {
            if #available(iOS 15.0, *) {
                LinearGradient(gradient: Gradient(colors: [.blue , .blue, .mint]), startPoint: .zero, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            } else {
                // Fallback on earlier versions
            }
            
            VStack {
                Text("Mohali, SAS Nagar").foregroundColor(.white).fontWeight(.bold).font(.largeTitle)
                    .padding(30)
                
                VStack {
                    Image("storm").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 180,height: 180)
                    Text("79").font(.largeTitle).foregroundColor(.white)
                        .bold()
                }
                
                HStack() {
                    ExtractedView(day: "Sun", imageName: "weather", temperature: 20)
                    ExtractedView(day: "Mon", imageName: "weather", temperature: 50)

                    ExtractedView(day: "Tue", imageName: "weather", temperature: 30)

                    ExtractedView(day: "Wed", imageName: "weather", temperature: 40)
                    ExtractedView(day: "Thu", imageName: "weather", temperature: 40)


                }.padding(10)
                Spacer()
                
                Button (action:{
                    print("button tapped")
                } , label: {
                    if #available(iOS 15.0, *) {
                        Text("Move To Next")
                            .frame(width: 280, height: 50)
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .foregroundColor(.blue)
                            .background(Color.white)
                            .buttonBorderShape(.capsule)
                            .border(.white)
                    } else {
                        // Fallback on earlier versions
                    }
                        
                }).padding(20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var day:String
    var imageName:String
    var temperature:Int
    var body: some View {
        VStack() {
            Text("\(day)").foregroundColor(.white)
                .fontWeight(.bold)
                .font(.title)
            Image("\(imageName)").resizable()
                .renderingMode(.original)
                .frame(width: 100, height: 100)
            Text("\(temperature)").foregroundColor(.white)
                .fontWeight(.bold)
                .font(.title)
        }
    }
}
