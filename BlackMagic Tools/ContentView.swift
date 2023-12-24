//
//  ContentView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/24/23.
//

import SwiftUI

struct ContentView: View {
    @State public var selectedTable = 1;
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Blackmagic Tools")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            
            Picker(selection: $selectedTable, label: Text("Which table?")) {
                Text("Main Table").tag(1)
                Text("Side Table").tag(2)
            }
                .frame(width: 400.0)
                .pickerStyle(SegmentedPickerStyle())
            
            Button(action: {
                print("Hello, World!")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
