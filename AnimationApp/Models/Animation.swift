//
//  Animation.swift
//  AnimationApp
//
//  Created by Василий Пронин on 21.09.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
}

extension Animation {
    
    static func getAnimation() -> Animation {
        let animation = Animation(
            preset: DataSource.shared.presets.shuffled().first ?? "",
            curve: DataSource.shared.curves.shuffled().first ?? "",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 1...3),
            delay: Float.random(in: 0.5...1)
        )
        
        return animation
    }
}
