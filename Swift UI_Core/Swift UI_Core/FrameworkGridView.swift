//
//  FrameworkGridView.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 25/12/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    var column:[GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(FrameworkData.frameworkModel, id: \.id){ framework in
                        FrameworkDataSetup(appName: framework.name, content: FrameworkData.frameworkModel[0].descritpion, imageName: framework.imageName)
                            .onTapGesture {
                                print("on tapped")
                                self.viewModel.framework = framework
                            }
                    }
                    .navigationBarHidden(false)
                    .navigationTitle("Applications")
                    .sheet(isPresented: $viewModel.isShowingDetailView){
                        FrameworkGridView()
                    }
                }
             
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.light)
    }
}

struct FrameworkDataSetup : View {
    var appName: String
    var content: String
    var imageName: String
    
    
    var body : some View {
        
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(25)
            
            Text(appName)
                .fontWeight(.bold)
                .font(.title3)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
    
}
