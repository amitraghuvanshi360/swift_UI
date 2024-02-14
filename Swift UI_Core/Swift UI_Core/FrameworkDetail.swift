//
//  FrameworkDetail.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 21/01/2024.
//

import SwiftUI

struct FrameworkDetail: View {
    var framework: FrameworkGridView
    
    var body: some View {
        
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Spacer()
                Button {
                    print("Click Cancel Button Tapped")
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                .onTapGesture {}
            }.padding()
            
            Spacer()
            FrameworkDataSetup(appName: "ML Core", content: "appclick", imageName: "mlcore")
            Text(FrameworkData.frameworkModel.first?.descritpion ?? "")
                .padding()
            
            AFButton()
            Spacer()
        }
    }
}

struct FrameworkDetail_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetail(framework: FrameworkGridView())
    }
}
