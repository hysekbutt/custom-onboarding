//
//  StoryViewController.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 4/29/23.
//

import UIKit

class StoryViewController: BaseViewController {

    //MARK: - IBoutlets
    @IBOutlet weak var instructionsLabel: UILabel!
    
    //MARK: - Lifecycle 
    override func viewDidLoad() {
        super.viewDidLoad()

        instructionsLabel.attributedText = Utility.changeTextColor(fullText: StringLiterals.storyInstructions, changeText: "Discovery Feed", color: UIColor(red: 41/255, green: 171/255, blue: 226/255, alpha: 1))
    }
    
    //MARK: - IBActions
    @IBAction func nextButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let discoveryController = storyboard.instantiateViewController(withIdentifier: "discoveryViewController") as! DiscoveryViewController
        self.presentTutorialControllers(controller: discoveryController)
    }
}
