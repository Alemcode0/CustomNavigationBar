//
//  ContentView.swift
//  CustomNavigationBar
//
//  Created by Alemayehu Hailye on 23.04.25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("flowerBG")
                .resizable()
                .ignoresSafeArea()
            LinearGradient(colors: [.green, .blue], startPoint: .top, endPoint: .bottom).opacity(0.6)
                .ignoresSafeArea()
            
            BottomNavBar()
        }
    }
}
#Preview {
    ContentView()
}
