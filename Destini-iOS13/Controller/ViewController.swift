//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.ourStory[storyBrain.currentStory].title
        choiceOneButton.setTitle(storyBrain.ourStory[storyBrain.currentStory].choice1, for: .normal)
        choiceTwoButton.setTitle(storyBrain.ourStory[storyBrain.currentStory].choice2, for: .normal)
    }
    
}

