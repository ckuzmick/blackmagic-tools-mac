//
//  GifCaptureView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/26/23.
//

import SwiftUI
import CompactSlider

struct GifCaptureView: View {
    @State public var selectedTable = 0;
    @State public var selectedCam = 0;
    @State public var selectedTime = 1.5;
    @State public var selectedDimensions = [1080, 1920];
    
    var body: some View {
        VStack {
            Picker(selection: $selectedTable, label: Text("Which table?")) {
                Text("Main Table").tag(0)
                Text("Side Table").tag(1)
            }
            .frame(width: 400.0)
            
            Picker(selection: $selectedCam, label: Text("Which camera?")) {
                if (selectedTable == 0) {
                    Text("Overhead").tag(0)
                    Text("Front On").tag(1)
                    Text("Close Up").tag(2)
                } else if (selectedTable == 1) {
                    Text("Front On").tag(1)
                    Text("Close Up").tag(2)
                }
            }
            .frame(width: 400.0)
            
            CompactSlider(value: $selectedTime, in: 0.25...6, step: 0.1) {
                Text("Gif Time")
                Spacer()
                Text("\(String(format: "%.1f", selectedTime))")
            }
            .frame(width: 400.0)
        }
    }
}

struct GifCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        GifCaptureView()
    }
}
