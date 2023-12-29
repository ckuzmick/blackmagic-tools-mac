//
//  ContentView.swift
//  BlackMagic Tools
//
//  Created by ck on 12/24/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        TabView {
            StillCaptureView()
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("Still Capture")
                }
            GifCaptureView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Gif Capture")
                }
            VideoCaptureView()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Video Capture")
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
