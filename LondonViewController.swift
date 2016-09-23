//
//  LondonViewController.swift
//  TourGuide
//
//  Created by CS3714 on 9/21/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit

class LondonViewController: UIViewController {
    
    
    
    
    
    
    @IBOutlet var messageBox: UILabel!
    
    
    @IBAction func surveyButtonTapped(_ sender: AnyObject) {
        
        // Create an alert controller object.
        
        let alertController = UIAlertController(title: "Survey", message: "How much do you like London?", preferredStyle: .alert)
 
        /*
         
         A UIAlertAction object represents an action that can be taken when tapping a button in an alert.
         
         
         
         UIAlertAction(title: "Very Much", style: .default) creates such an action object and stores its
         
         object reference into veryMuchAction as a local constant.
         
         
         
         When the user taps the button "Very Much" in the alert, the specified Closure Expression is executed.
         
         
         
         Closure expression syntax: [read about it in Swift language reference]
         
         
         
         { (parameters) -> return type in
         
         statements
         
         }
         
         
         
         Only one parameter, action: UIAlertAction!, is passed into closure.
         
         The keyword "in" introduces the start of the clousure's body.
         
         The clousure's body consists of only one statement setting the messageBox.text value.
         
         */
        
        
        
        let veryMuchAction = UIAlertAction(title: "Very Much", style: .default) { (action: UIAlertAction!) in
            
            self.messageBox.text = "You like London Very Much!"
        
    }
    
    
        let somewhatAction = UIAlertAction(title: "Somewhat", style: .default) { (action: UIAlertAction!) in
            
            self.messageBox.text = "You like London Somewhat!"
            
        }
        
        
        
        // See documentation above
        
        let notSoMuchAction = UIAlertAction(title: "Not So Much", style: .default) { (action: UIAlertAction!) in
            
            self.messageBox.text = "You like London Not So Much!"
            
        }
        
        
        
        // See documentation above
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (action: UIAlertAction!) in
            
            // Take no action
            
        }
        
        
        
        alertController.addAction(veryMuchAction)
        
        alertController.addAction(somewhatAction)
        
        alertController.addAction(notSoMuchAction)
        
        alertController.addAction(cancelAction)
        
        
        
        
        
        // Show the alert controller object
        
        present(alertController, animated: true, completion: nil)
        
    }

}
