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
            force: Float.random(in: 0.5...2), //DataSource.shared.force,
            duration: Float.random(in: 1...3), //DataSource.shared.duration,
            delay: Float.random(in: 0.5...1) //DataSource.shared.delay
        )
        /*
         Не знаю что случилось, но изначально всё работало (хотя теперь я не уверен) с сервисным слоем
         как надо (значения каждый раз обновлялись). После обновления икскода,
         пришлось перенести вычисления сюда. Хотя скорее всего, я просто не вижу
         чего-то очевидного - глаза замылились)
         */
        
        return animation
    }
}
