//
//  FrameworkTitleView.swift
//  AppleFramework
//
//  Created by 이종원 on 6/8/24.
//

import Foundation
import SwiftUI

struct FrameworkTitleView:View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
