//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Setting up the IBOutlet for label and 2 choices
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choice1Button.titleLabel?.adjustsFontSizeToFitWidth = true
        choice1Button.titleLabel?.numberOfLines = 2
        choice1Button.titleLabel?.minimumScaleFactor = 0.5
        
        choice2Button.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2Button.titleLabel?.numberOfLines = 2
        choice2Button.titleLabel?.minimumScaleFactor = 0.5
        
        updateUI()
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

