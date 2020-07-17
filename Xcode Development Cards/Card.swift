//
//  Card.swift
//  Xcode Development Cards
//
//  Created by Kadir Ince on 17.07.2020.
//  Copyright © 2020 Kadir Ince. All rights reserved.
//

import SwiftUI

struct Card: View {
    var cardModel: CardProps
    var body: some View {
        ZStack {
            Image("developer-no1")

            VStack {
                Text("title")
                    .font(.title)
                    .foregroundColor(.white)
                Text("description")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: -218)

            Button(action: { print("tapped") }) {
                Text("button")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(.white)
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: cardModel.gradientColors), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .offset(y: 210)
            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: cardModel.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardModel: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
