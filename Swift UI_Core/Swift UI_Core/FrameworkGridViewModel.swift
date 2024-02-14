//
//  FrameworkGridViewModel.swift
//  Swift UI_Core
//
//  Created by Amit Raghuvanshi on 21/01/2024.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    var framework: FrameworkModel? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView:Bool = false
}
