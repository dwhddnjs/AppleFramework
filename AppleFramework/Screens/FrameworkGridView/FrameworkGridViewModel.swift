//
//  FrameworkGridViewModel.swift
//  AppleFramework
//
//  Created by 이종원 on 6/8/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
//    var selectedFramework: Framework? {
//        didSet { isShowingDetailView = true }
//    }
//    
//    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}

