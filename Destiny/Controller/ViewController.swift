//
//  ViewController.swift
//  Destini-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        
        story.nextStory(userChoice: choice)
        updateUI()
    }
    @objc func updateUI(){
        storyLabel.text = story.getStory()
        choice1Button.setTitle(story.getChoice1(), for: .normal)
        choice2Button.setTitle(story.getChoice2(), for: .normal)
    }


}

