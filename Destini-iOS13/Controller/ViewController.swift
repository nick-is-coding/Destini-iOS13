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
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

   
//let myStoryBoard = [
//            [Story(
//                title: "You see a fork in the road.",
//                choice1: "Take a left",
//                choice2: "Take a right")],
//            [Story(
//                title: "You see a tiger",
//                choice1: "Shout for help.",
//                choice2: "Play dead.")],
//            [Story(
//                title: "You find a treasure chest.",
//                choice1: "Open it.",
//                choice2: "Check for traps.")]
//        ]
        
    
    let myStoryBoard = Story(
            title: "You see a fork in the road.",
            choice1: "Take a left",
            choice2: "Take a right"
    )

    let storyArray = [
        ["You see a fork in the road.", "Take a left.", "Take a right."],
        ["You see a tiger", "Shout for help.", "Play dead."],
        ["You find a treasure chest.", "Open it.", "Check for traps."]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = myStoryBoard.titlee
        choice1Button.setTitle(myStoryBoard.choicee1, for: .normal)
        choice2Button.setTitle(myStoryBoard.choicee2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if userAnswer == "Take a left" {
            storyLabel.text = storyArray[1][0]
            choice1Button.setTitle(storyArray[1][1], for: .normal)
            choice2Button.setTitle(storyArray[1][2], for: .normal)
        } else if userAnswer == "Take a right" {
            storyLabel.text = storyArray[2][0]
            choice1Button.setTitle(storyArray[2][1], for: .normal)
            choice2Button.setTitle(storyArray[2][2], for: .normal)
        }
        
    }
    

}

