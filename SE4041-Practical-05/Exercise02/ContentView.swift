// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise02/ContentView.swift

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "figure.walk").font(.largeTitle).foregroundStyle(.green)
            Text("Daily Activity").font(.headline)
            Text("5,240").font(.title).bold()
            Text("Steps").font(.caption).foregroundStyle(.secondary)
        }
    }
}
#Preview { ContentView() }
