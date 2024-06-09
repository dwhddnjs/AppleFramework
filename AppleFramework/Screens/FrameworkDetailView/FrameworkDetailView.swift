//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by 이종원 on 6/8/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
//    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
//            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundColor(.yellow)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.blue)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
//}
