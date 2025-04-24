//
//  CustomNavigationBar.swift
//  CustomNavigationBar
//
//  Created by Alemayehu Hailye on 23.04.25.
//
import SwiftUI

struct BottomNavBar: View {
    @State private var selectedTab: Tab = .home
    @Namespace private var animation
    @State private var animateIcon: Bool = false
    
    enum Tab: String, CaseIterable {
        case home = "house"
        case email = "envelope"
        case folder = "folder"
        case settings = "gearshape"
        
        var label: String {
            switch self {
            case .home: return "Home"
            case .email: return "Email"
            case .folder: return "Folder"
            case .settings: return "Settings"
            }
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(Tab.allCases, id: \.self) { tab in
                    Spacer()
                    Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5)) {
                            selectedTab = tab
                            animateIcon.toggle()
                        }
                    }) {
                        VStack(spacing: 4) {
                            Image(systemName: selectedTab == tab ? "\(tab.rawValue).circle.fill" : "\(tab.rawValue)")
                                .symbolVariant(.fill)
                                .font(.system(size: 24, weight: .bold))
                                .scaleEffect(selectedTab == tab && animateIcon ? 1.4 : 1.0)
                                .foregroundColor(selectedTab == tab ? .yellow : .gray)
                                .animation(.easeOut(duration: 0.2), value: animateIcon)
                                .shadow(color: .black.opacity(0.4), radius: 1, x: 0, y: 1)
                            
                            Text(tab.label)
                                .font(.caption2)
                                .foregroundColor(selectedTab == tab ? .black : .gray)
                                .opacity(0.8)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                    }
                    Spacer()
                }
            }
            .padding(.horizontal, 20)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: -5)
            .padding(.horizontal)
            .padding(.bottom, 10)
        }
    }
}
#Preview {
    BottomNavBar()
}
