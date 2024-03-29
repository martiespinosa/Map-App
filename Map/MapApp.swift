//
//  MapApp.swift
//  Map
//
//  Created by Martí Espinosa Farran on 16/3/24.
//

import SwiftUI

@main
struct MapApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
