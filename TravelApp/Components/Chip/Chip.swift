//
//  Chip.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct Chip : View {
    
    let title : String
    var isSelected: Bool
    
    var body: some View {
        Text(title.uppercased())
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(isSelected ?  Color.blueAccent.opacity(0.5): .white)
            .foregroundColor(isSelected ? .blue : .gray)
            .font(.system(size: 14, weight: .semibold))
            .cornerRadius(20)
    }
}

#Preview {
    Chip(title: "Location", isSelected: true)
}
