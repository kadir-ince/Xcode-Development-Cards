//
//  CardModel.swift
//  Xcode Development Cards
//
//  Created by Kadir Ince on 17.07.2020.
//  Copyright © 2020 Kadir Ince. All rights reserved.
//


import SwiftUI

// MARK: - CARD MODEL

struct CardProps: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
