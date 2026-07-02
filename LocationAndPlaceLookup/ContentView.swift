//
//  ContentView.swift
//  LocationAndPlaceLookup
//
//  Created by JIM WALEJKO on 7/1/26.
//

import SwiftUI
internal import _LocationEssentials

struct ContentView: View {
    @State var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("\(locationManager.location?.coordinate.latitude ?? 0.0), \(locationManager.location?.coordinate.longitude ?? 0.0)")
            let _ = print("\(locationManager.location?.coordinate.latitude ?? 0.0), \(locationManager.location?.coordinate.longitude ?? 0.0)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
