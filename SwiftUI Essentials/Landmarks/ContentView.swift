//
//  ContentView.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/08.
//

import SwiftUI

struct ContentView: View {  // View protocol and describes the view’s content and layout
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)   // map content to extend to the top edge of the screen
                .frame(height: 300) // frame(width:height:): set the size
            CircleImage()
                // make room for the text by moving the image upwards.
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .center){
                Text("💩최영재= 노예💩")
                    .font(.title)
                    .bold()
                    .foregroundColor(.pink)
                HStack {
                    Spacer()
                    Text("똥쟁이")
                    Spacer()
                    Text("뿌득 뿍 뿌직")
                    Spacer()
                }
                .font(.subheadline).foregroundColor(.secondary)
                Divider()   //구분선

                Text("💩1000💩")
                    .font(.headline)
                Text("2019. 19. 18 ~ ㅗㅗㅗㅗㅗ")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {  // declares a preview for that view.
    static var previews: some View {
        ContentView()
    }
}
