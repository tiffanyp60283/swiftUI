//
//  MapView.swift
//  swiftUI
//
//  Created by i_cspeng on 2023/5/11.
//

import SwiftUI
import MapKit
struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private  var regoin = MKCoordinateRegion(center:  CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion:$regoin)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
