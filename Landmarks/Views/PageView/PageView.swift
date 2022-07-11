//
//  PageView.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/11.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0  // Declare the @State variable in PageView
//    @State private var currentPage = 1  // test


    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage) //pass a binding to the property when creating the child PageViewController
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                            .frame(width: CGFloat(pages.count * 18))
                            .padding(.trailing)
                }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) }) // Update the preview provider to pass the required array of views
                    .aspectRatio(3 / 2, contentMode: .fit)
    }
}
