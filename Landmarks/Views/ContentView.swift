//
//  ContentView.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/08.
//

import SwiftUI

struct ContentView: View {  // View protocol and describes the view’s content and layout
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {  // declares a preview for that view.
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
