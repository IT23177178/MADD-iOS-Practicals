// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise01/ContentView.swift

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "applewatch").font(.title)
            Text("SE4041").font(.headline).bold()
            Text("watchOS").font(.caption)
        }
    }
}
#Preview { ContentView() }
