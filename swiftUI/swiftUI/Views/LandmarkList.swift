//
//  LandmarkList.swift
//  swiftUI
//
//  Created by i_cspeng on 2023/5/12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks){landmark in
            NavigationLink {
                LandmarkDetail(landmark: landmark)
           } label: {
               LandmarkRow(landmark: landmark)
            }
        }.navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                 LandmarkList()
                     .previewDevice(PreviewDevice(rawValue: deviceName))
                     .previewDisplayName(deviceName)
             }
    }
}
