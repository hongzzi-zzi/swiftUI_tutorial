//
//  CategoryRow.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/11.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String    // category name
    var items: [Landmark]   // list of items
    
    var body: some View {
        VStack(alignment: .leading) {   // group that with the category name-> in VStack.
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)  // Give the content some space
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {   // wrapping the HStack in a scroll view ->Give the content some space
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185) // frame(width:height:): Give the content some space
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(3))
        )
    }
}

