//
//  ViewController.swift
//  Three Word Story
//
//  Created by George Ashton on 30/08/2015.
//  Copyright © 2015 George Ashton. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController, EasyGameCenterDelegate {
    
    
    @IBOutlet weak var findGame: UIButton!  // Search for a game.
    
    func findGameButton(sender: UIButton) {   // Run the following code when Find Game is hit.
    
        let r = GKMatchRequest()
        
        r.minPlayers = 2; r.maxPlayers = 2
        r.defaultNumberOfPlayers = 2
        
        let vc = GKTurnBasedMatchmakerViewController(
            matchRequest: r
        )
        
//        vc.turnBasedMatchmakerDelegate = self
        
        presentViewController(vc, animated: true, completion: nil)

    }
    
    


  override func viewDidLoad() {
        super.viewDidLoad()

    


    
}
    

  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
 
}

