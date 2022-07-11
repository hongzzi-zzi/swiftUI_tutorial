//
//  MapView.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/08.
//

import SwiftUI
import MapKit

struct MapView: View {
    // 지도에 대한 지역 정보를 보유하는 private state 변수
    // @State:  to establish a source of truth for data in your app that you can modify from more than one view
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.55519, longitude: 126.92160),
            span: MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
        )
    
    var body: some View {
        Map(coordinateRegion: $region)  // Map view that takes a binding to the region
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
