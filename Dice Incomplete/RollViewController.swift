//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates an Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        make a reference to the dice view controller to be able to add values to it that can then be passed the the next view
        let controller = segue.destinationViewController as! DiceViewController
        
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
        
    }

    @IBAction func rollTheDice() {
        
//        1. Set the segue programaticaly and add values to it
        
//        var controller: DiceViewController
        
//        set the controller to a component in the storyboard - make sure the DiceViewController is named
        
//        controller = storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
//        
//        controller.firstValue = randomDiceValue()
//        controller.secondValue = randomDiceValue()
//        
//        presentViewController(controller, animated: true, completion: nil)
//        ----------------------------------------------------------------------
//        2.performSegueWithIdentifier("rollDice", sender: self)
//        ------------------------------------------------------------------------------------
//        3. has no code here it is all done in the storyboard (add segue and add the id of it)
    }
    
    
}

