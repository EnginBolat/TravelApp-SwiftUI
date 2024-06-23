//
//  SearchBar.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct SearchBar : View {
    
    @Binding var search:String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Find things the do", text: $search)
                .foregroundColor(.gray)
                .cornerRadius(8)
        }
        .padding()
        .background(Color.blueAccent.opacity(0.2))
        .cornerRadius(100)
    }
}


#Preview {
    SearchBar(search: .constant("Selam"))
}
