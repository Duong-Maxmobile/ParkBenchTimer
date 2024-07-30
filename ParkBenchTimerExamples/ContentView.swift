//
//  ContentView.swift
//  ParkBenchTimerExamples
//
//  Created by duongnk@maxmobile-software.com on 30/7/24.
//

import SwiftUI
import ParkBenchTimer

struct ContentView: View {
    @State private var parkBenchTimer: ParkBenchTimer = ParkBenchTimer()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("\(parkBenchTimer.add(a: 1, b: 1))")
        }
        .padding()
        .onAppear {
            self.parkBenchTimer.measure {
                self.printALoop()
            }
        }
    }
    
    private func printALoop() {
        for i in 0..<1000 {
            print("Hello \(i)")
        }
    }
}
