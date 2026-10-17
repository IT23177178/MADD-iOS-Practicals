// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise03/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var glasses = 0
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "drop.fill").font(.largeTitle).foregroundStyle(.blue)
            Text("Water").font(.headline)
            Text("\(glasses)").font(.largeTitle).bold()
            Text("Glasses").font(.caption)
            Button("Add") { glasses += 1 }
            Button("Reset") { glasses = 0 }
        }
    }
}
#Preview { ContentView() }
