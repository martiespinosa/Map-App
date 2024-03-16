//
//  LocationsView.swift
//  Map
//
//  Created by Martí Espinosa Farran on 16/3/24.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(position: $vm.mapRegion)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
