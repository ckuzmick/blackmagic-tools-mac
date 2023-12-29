//
//  GifCaptureView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/26/23.
//

import SwiftUI

struct StillCaptureView: View {
    @State public var selectedDevice = "0";
    @State public var selectedFrames = "1";
    @State public var captureInterval = "1";
    @State public var prefix = "";
    
    var body: some View {
        Form {
            TextField(text: $selectedDevice, prompt: Text("Defaults to 0")) {
                Text("Device ID")
            }
            
            TextField(text: $selectedFrames, prompt: Text("Defaults to 1")) {
                Text("Number of Frames")
            }
            
            TextField(text: $captureInterval, prompt: Text("Defaults to 1")) {
                Text("Frame Capture Interval")
            }
            
            TextField(text: $prefix, prompt: Text("Defaults to timecode")) {
                Text("File Prefix")
            }
            
            Button("Capture Stills") {
                TaskRunner().runTask(command: "get_still_script", args: [])
            }
        }
        .frame(width: 400)
        .padding()
    }
}

struct StillCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        StillCaptureView()
    }
}
