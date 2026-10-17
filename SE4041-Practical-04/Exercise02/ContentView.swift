// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - Exercise02/ContentView.swift

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Welcome to SE4041")
                .font(.title).bold().foregroundStyle(.blue).padding()
            Text("SE4041").padding().background(.orange)
            Text("SE4041").background(.orange).padding()
        }
    }
}
#Preview { ContentView() }
