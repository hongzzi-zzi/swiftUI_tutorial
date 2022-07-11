//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/11.
//

import SwiftUI

struct RotatedBadgeSymbol: View {   // encapsulate the concept of a rotated symbol
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
