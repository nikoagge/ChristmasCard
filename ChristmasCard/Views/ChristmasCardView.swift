//
//  ChristmasCardView.swift
//  ChristmasCard
//
//  Created by Nikos Aggelidis on 26/12/23.
//

import SwiftUI

struct ChristmasCardView: View {
    var body: some View {
        ZStack {
            Image(ImageName.gradientBackground.rawValue)
                .edgesIgnoringSafeArea(.all)
            
            Image(ImageName.trees.rawValue)
                .resizable()
                .frame(
                    width: 1920,
                    height: 1000
                )
                .offset(
                    x: -270,
                    y: 30
                )
            
            Image(ImageName.santaClaus.rawValue)
                .resizable()
                .frame(
                    width: 400,
                    height: 400
                )
                .offset(
                    x: -100,
                    y: 180
                )
            
            Image(ImageName.wishes.rawValue)
                .resizable()
                .frame(
                    width: 500,
                    height: 500
                )
                .offset(
                    x: 10,
                    y: -170
                )
                .shadow(
                    color: Color.red,
                    radius: 2,
                    x: 1,
                    y: 1
                )
            
            ParticleSystem()
        }
    }
}

struct ChristmasCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChristmasCardView()
    }
}
