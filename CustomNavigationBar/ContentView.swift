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
            
            BottomNavBar()
        }
    }
}
#Preview {
    ContentView()
}
