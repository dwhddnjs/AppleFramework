//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by 이종원 on 6/7/24.
//

import Foundation
import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                        //                            .onTapGesture {
                        //                                viewModel.selectedFramework = framework
                        //                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
            //            .sheet(isPresented: $viewModel.isShowingDetailView) {
            //                FrameworkDetailView(framework: viewModel.selectedFramework!,
            //                                    isShowingDetailView: $viewModel.isShowingDetailView)
            //            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


