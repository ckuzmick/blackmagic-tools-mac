//
//  StillCaptureView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/26/23.
//

import Foundation
import SwiftUI

struct StillCaptureView: View {
    @State public var selectedTable = 0;
    @State public var selectedCam = 0;
    
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
            
            Button(action: {
                print("running script...")
                TaskRunner().runTask(command: "get_still_script", args: [String(selectedTable), String(selectedCam)])
            }) {
                Text("Capture Still")
            }
        }
    }
}

struct StillCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        StillCaptureView()
    }
}
