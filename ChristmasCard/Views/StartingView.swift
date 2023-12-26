//
//  StartingView.swift
//  ChristmasCard
//
//  Created by Nikos Aggelidis on 26/12/23.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        ZStack {
            ChristmasCardView()
        }
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}

struct ParticleSystem: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let size = CGSize(
            width: 0.05,
            height: 0.05
        )
        let hostView = UIView(frame: CGRect(
            x: 0,
            y: 0,
            width: size.width,
            height: size.height
        ))
        
        let particlesLayer = CAEmitterLayer()
        particlesLayer.frame = CGRect(
            x: 2,
            y: 2,
            width: size.width,
            height: size.height
        )
        hostView.layer.addSublayer(particlesLayer)
        hostView.layer.masksToBounds = true
        particlesLayer.backgroundColor = UIColor.black.cgColor
        particlesLayer.emitterShape = .circle
        particlesLayer.emitterPosition = CGPoint(
            x: 509.4,
            y: 707.7
        )
        particlesLayer.emitterSize = CGSize(
            width: 1648,
            height: 1112
        )
        particlesLayer.emitterMode = .surface
        particlesLayer.renderMode = .oldestLast
        let imageParticle = UIImage(named: ImageName.snowflake.rawValue)?.cgImage
        let snowParticles = CAEmitterCell()
        snowParticles.contents = imageParticle
        snowParticles.name = "Snow"
        snowParticles.birthRate = 94.0
        snowParticles.lifetime = 31
        snowParticles.velocity = 60
        snowParticles.velocityRange = -13
        snowParticles.xAcceleration = 4
        snowParticles.yAcceleration = 40
        snowParticles.emissionRange = 180 * (.pi / 45)
        snowParticles.spin = -28.6 * (.pi / 180)
        snowParticles.spinRange = 58 * (.pi / 180)
        snowParticles.scale = 0.002
        snowParticles.scaleRange = 0.04
        snowParticles.color = UIColor.white.cgColor
        particlesLayer.emitterCells = [snowParticles]
        
        return hostView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    typealias UIViewType = UIView
}
