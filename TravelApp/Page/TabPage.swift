//
//  TabView.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct TabPage: View {
    var body: some View {
        TabView {
            Home().tabItem { TabItemView(imageName: "house") }
            Home().tabItem { TabItemView(imageName: "ticket") }
            Home().tabItem { TabItemView(imageName: "heart") }
            Home().tabItem { TabItemView(imageName: "person") }
        }.accentColor(.blue)
    }
}

#Preview {
    TabPage()
}

struct TabItemView: View {
    
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
    }
}
