//
//  CircleImage.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/08.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("aa")
            .clipShape(Circle())    // 원형 자르기
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)   // 테두리
            }
            .shadow(radius: 7)  // 그림자
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
