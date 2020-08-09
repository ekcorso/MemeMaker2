//
//  ViewController.swift
//  MemeMaker2
//
//  Created by Emily Corso on 8/8/20.
//  Copyright © 2020 Emily Corso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func displayCaption() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].captionText
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].captionText
    }
    
    let topChoices = [
        CaptionOption(captionEmoji: "🕶", captionText: "You know what's cool?"),
        CaptionOption(captionEmoji: "👿", captionText: "You know what makes me mad?"),
        CaptionOption(captionEmoji: "❤️", captionText: "You know what I love?")
    ]
    
    let bottomChoices = [
        CaptionOption(captionEmoji: "🦩", captionText: "Birds being turds"),
        CaptionOption(captionEmoji: "🐒", captionText: "Monkeys being funky"),
        CaptionOption(captionEmoji: "🐝", captionText: "Bees with no knees")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayCaption()
        
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.captionEmoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 2
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.captionEmoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
    }
        
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        displayCaption()
    }
    


}

