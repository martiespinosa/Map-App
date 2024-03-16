//
//  LocationsViewModel.swift
//  Map
//
//  Created by Martí Espinosa Farran on 16/3/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
