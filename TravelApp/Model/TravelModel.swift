//
//  TravelModel.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import Foundation

final class TravelModel: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var rating: Int
    var reviewCounter: Int
    var details: String
    var isFavorite: Bool
    
    init(imageName: String, title: String, rating: Int, reviewCounter: Int, details: String, isFavorite: Bool) {
        self.imageName = imageName
        self.title = title
        self.rating = rating
        self.reviewCounter = reviewCounter
        self.details = details
        self.isFavorite = isFavorite
    }
}


final class MockupData {
    
    
    static let singleData: TravelModel =  TravelModel(imageName: "img2",
                                                      title: "Alley Palace",
                                                      rating: 3,
                                                      reviewCounter: 355,
                                                      details: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
                                                      isFavorite: true)
    
    static let multipleData: [TravelModel] = [
        TravelModel(imageName: "img1",
                    title: "Alley Palace",
                    rating: 3,
                    reviewCounter: 355,
                    details: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
                    isFavorite: true),
        TravelModel(imageName: "img2",
                    title: "Alley Palace",
                    rating: 3,
                    reviewCounter: 355,
                    details: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
                    isFavorite: true),
        TravelModel(imageName: "img3",
                    title: "Alley Palace",
                    rating: 3,
                    reviewCounter: 355,
                    details: "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
                    isFavorite: true),
    ]
}
