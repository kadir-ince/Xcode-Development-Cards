//
//  ContentView.swift
//  Xcode Development Cards
//
//  Created by Kadir Ince on 17.07.2020.
//  Copyright © 2020 Kadir Ince. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cardsProps: [CardProps] = cardData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(cardsProps) {eachCard in
                    Card(cardModel: eachCard)
                }
            }
        }
    .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
