//
//  Card.swift
//  Xcode Development Cards
//
//  Created by Kadir Ince on 17.07.2020.
//  Copyright © 2020 Kadir Ince. All rights reserved.
//

import SwiftUI

struct Card: View {
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false
    var cardModel: CardProps
    var body: some View {
        ZStack {
            Image(cardModel.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack {
                Text(cardModel.title)
                    .font(.title)
                    .foregroundColor(.white)
                Text(cardModel.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: moveDownward ? -218 : -300)

            Button(action: { print("tapped") }) {
                Text(cardModel.callToAction.uppercased())
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(.white)
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: cardModel.gradientColors), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
            .offset(y: moveUpward ? 210 : 300)
            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: cardModel.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveUpward.toggle()
                self.moveDownward.toggle()
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardModel: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
