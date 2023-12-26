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
                    Label("Still Capture", systemImage: "photo.fill")
                }
            GifCaptureView()
                .tabItem {
                    Label("GIF Capture", systemImage: "video.fill")
                }
            VideoCaptureView()
                .tabItem {
                    Label("Video Capture", systemImage: "film.fill")
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
