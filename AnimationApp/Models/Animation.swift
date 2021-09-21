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
        let presets = DataSource.shared.presets.shuffled()
        let curves = DataSource.shared.curves.shuffled()
        
        let animation = Animation(
            preset: presets.first ?? "",
            curve: curves.first ?? "",
            force: DataSource.shared.force,
            duration: DataSource.shared.duration,
            delay: DataSource.shared.delay)
        
        return animation
    }
}
