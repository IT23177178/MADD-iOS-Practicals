// Name: W P R Senara
// Student ID: IT23177178
// Module: SE4041 - Mobile Application Design and Development
// Practical_04 - Exercise03/ContentView.swift

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "graduationcap.fill").font(.system(size: 60)).foregroundStyle(.blue)
            Text("SE4041").font(.largeTitle).bold()
            Text("Mobile Application Design & Development")
            HStack { Text("Practical 04"); Spacer(); Text("SwiftUI") }.padding()
        }.padding()
    }
}
#Preview { ContentView() }
