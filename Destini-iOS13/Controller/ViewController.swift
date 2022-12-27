//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var story = StoryBrain()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!

    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceSelected(_ sender: UIButton) {
        if sender == choice1Button {
            story.chooseOne()
        } else {
            story.chooseTwo()
        }
        updateUI()
    }
    
    func updateUI() {
        titleLabel.text = story.getTitle()
        choice1Button.setTitle(story.getChoice1Text(), for: .normal)
        choice2Button.setTitle(story.getChoice2Text(), for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}

