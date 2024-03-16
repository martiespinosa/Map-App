//
//  LocationPreviewView.swift
//  Map
//
//  Created by Martí Espinosa Farran on 16/3/24.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 20) {
                learnMoreButton
                HStack(spacing: 16) {
                    previousButton
                    nextButton
                }
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(.ultraThinMaterial)
                .offset(y: 45)
        )
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
    
#Preview {
    LocationPreviewView(location: LocationsDataService.locations.first!)
        .padding()
}

extension LocationPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
        }
        .padding(2)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .bold()
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 120, height: 40)
        }
        .buttonStyle(.borderedProminent)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Image(systemName: "arrow.right")
                .font(.headline)
                .frame(width: 40, height: 40)
        }
        .buttonStyle(.bordered)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
    private var previousButton: some View {
        Button {
            vm.previousButtonPressed()
        } label: {
            Image(systemName: "arrow.left")
                .font(.headline)
                .frame(width: 40, height: 40)
        }
        .buttonStyle(.bordered)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
    
}
