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
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            mapLayer
            
            VStack(spacing: 0) {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation) { location in
            LocationDetailView(location: location)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}


extension LocationsView {
    
    private var header: some View {
        VStack {
            Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                .font(.title2)
                .fontWeight(.black)
                .foregroundStyle(.primary)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .animation(.none, value: vm.mapLocation)
                .overlay(alignment: .leading) {
                    Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundStyle(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                }
                .onTapGesture {
                    vm.toggleLocationsList()
                }
            
            if vm.showLocationsList {
                LocationsListView()

            }
        }
        .background(.thinMaterial) // this is awesome
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View {
        Map(position: $vm.mapRegion) {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    Marker(location.name, coordinate: location.coordinates)
                }
            }
        }
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            //TabView {
                ForEach(vm.locations) { location in
                    if vm.mapLocation == location {
                        LocationPreviewView(location: location)
                            .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
                            .padding()
                            .frame(maxWidth: maxWidthForIpad)
                            .frame(maxWidth: .infinity)
                            .transition(.asymmetric(
                                insertion: .move(edge: vm.rightDirection ? .trailing : .leading),
                                removal: .move(edge: vm.rightDirection ? .leading : .trailing))
                            )
                    }
                }
            //}
            //.tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
    
}
