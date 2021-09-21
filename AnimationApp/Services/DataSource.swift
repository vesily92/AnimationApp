//
//  DataSource.swift
//  AnimationApp
//
//  Created by Василий Пронин on 21.09.2021.
//

import Foundation

class DataSource {
    static let shared = DataSource()
    
    let presets = ["slideLeft", "slideRight", "slideDown", "slideUp", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp", "fadeIn", "fadeOut", "fadeOutIn", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn", "zoomOut", "fall", "shake", "pop", "flipX", "flipY", "morph", "squeeze", "flash", "wobble", "swing"]
    let curves = ["easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine", "easeOutSine", "easeInOutSine", "easeInQuad", "easeOutQuad", "easeInOutQuad", "easeInCubic", "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart", "easeInOutQuart", "easeInQuint", "easeOutQuint", "easeInOutQuint", "easeInExpo", "easeOutExpo", "easeInOutExpo", "easeInCirc", "easeOutCirc", "easeInOutCirc", "easeInBack", "easeOutBack", "easeInOutBack"]
    let force = Float.random(in: 0.5...1)
    let duration = Float.random(in: 1...3)
    let delay = Float.random(in: 0.5...2)
    
    private init() {}
}
