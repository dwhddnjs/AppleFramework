//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by 이종원 on 6/7/24.
//

import Foundation
import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
            FrameworkTitleView(name: "App Clips", imageName: "appclips")
        }
    }
}

#Preview {
    FrameworkGridView()
}


struct FrameworkTitleView:View {
    let name:String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName:"appclip")
                .resizable()
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
        }
    }
}
