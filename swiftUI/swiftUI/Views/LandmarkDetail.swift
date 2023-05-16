//
//  LandmarkDetail.swift
//  swiftUI
//
//  Created by i_cspeng on 2023/5/12.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
                .ignoresSafeArea(edges:.top)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("park’s state")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
        }
        .padding()
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
