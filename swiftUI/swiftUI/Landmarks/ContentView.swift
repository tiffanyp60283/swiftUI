//
//  ContentView.swift
//  swiftUI
//
//  Created by i_cspeng on 2023/5/11.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
