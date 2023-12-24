//
//  ContentView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/24/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State public var selectedTable = 0;
    @State public var selectedCam = 0;
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Blackmagic Tools")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            
            Picker(selection: $selectedTable, label: Text("Which table?")) {
                Text("Main Table").tag(0)
                Text("Side Table").tag(1)
            }
                .frame(width: 400.0)
                .pickerStyle(SegmentedPickerStyle())
            
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
                .pickerStyle(SegmentedPickerStyle())
            
            Button(action: {
                print("running script...")
                runTask(command: "/Users/ck/Downloads/get_still_script")
            }) {
                Text("Capture Still")
            }
            .onHover { isHovered in
                NSCursor.pointingHand.set()
            }
            .onExitCommand {
                NSCursor.arrow.set()
            }
        }
        .padding()
    }
    
    private func runTask(command: String) {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/Users/ck/Downloads/get_still_script")
        do {
            try process.run()
        } catch {
            print("ERROR")
        }
        process.waitUntilExit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
