//
//  RandomAnimationViewController.swift
//  AnimationApp
//
//  Created by Василий Пронин on 21.09.2021.
//

import Spring

class RandomAnimationViewController: UIViewController {

    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animatedView: SpringView!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabels()
    }

    @IBAction func runButtonTapped(_ sender: SpringButton) {
        displayLabels()
        
        animatedView.animation = animation.preset
        animatedView.curve = animation.curve
        animatedView.force = CGFloat(animation.force)
        animatedView.duration = CGFloat(animation.duration)
        animatedView.delay = CGFloat(animation.delay)
        animatedView.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension RandomAnimationViewController {
    private func getString(from value: Float) -> String {
        String(format: "%.2f", value)
    }
    
    private func displayLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = getString(from: animation.force)
        durationLabel.text = getString(from: animation.duration)
        delayLabel.text = getString(from: animation.delay)
    }
}

