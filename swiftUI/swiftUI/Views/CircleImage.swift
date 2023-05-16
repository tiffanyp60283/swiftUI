//
//  CircleImage.swift
//  swiftUI
//
//  Created by i_cspeng on 2023/5/11.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 4)
            }.shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
