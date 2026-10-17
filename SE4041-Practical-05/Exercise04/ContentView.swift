// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_05 - Exercise04/ContentView.swift

import SwiftUI
struct ContentView: View {
    @State private var glasses = 0
    var body: some View {
        VStack(spacing: 8) {
            Text("Water: \(glasses)").font(.headline)
            Button { glasses += 1 } label: {
                Label("Add Water", systemImage: "plus.circle.fill")
            }
            Button { glasses = 0 } label: {
                Label("Reset", systemImage: "arrow.counterclockwise")
            }
        }
    }
}
#Preview { ContentView() }
