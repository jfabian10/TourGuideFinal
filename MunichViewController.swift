//
//  MunichViewController.swift
//  TourGuide
//
//  Created by CS3714 on 9/21/16.
//  Copyright © 2016 Jesus Fabian. All rights reserved.
//

import UIKit



class MunichViewController: UIViewController {
    
    
    
    /*
     
     Data object to pass to the downstream view controller MunichAttractionViewController
     
     dataToPass[0] = navigation item title
     
     dataToPass[1] = attraction image name
     
     */
    
    var dataToPass = [String]()
    
    
    
    // Object reference (unique ID) of the UISegmentedControl UI object
    
    @IBOutlet var attractionSegmentedControl: UISegmentedControl!
    
    
    
    /*
     
     -----------------------
     
     MARK: - View Life Cycle
     
     -----------------------
     
     */
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        // When the View loads, show no selection of a segment
        
        self.attractionSegmentedControl.selectedSegmentIndex = UISegmentedControlNoSegment
        
    }
    
    
    
    /*
     
     --------------------------
     
     MARK: - Show Button Tapped
     
     --------------------------
     
     */
    
    @IBAction func showButtonTapped(_ sender: UIButton) {
        
        
        
        if attractionSegmentedControl.selectedSegmentIndex == UISegmentedControlNoSegment {
            
            
            
            // If no attraction is selected, alert the user
            
            
            
            /*
             
             Create a UIAlertController object; dress it up with title, message, and preferred style;
             
             and store its object reference into local constant alertController
             
             */
            
            let alertController = UIAlertController(title: "No Selection!",
                                                    
                                                    message: "Please select an attraction first.",
                                                    
                                                    preferredStyle: UIAlertControllerStyle.alert)
            
            
            
            /*
             
             Create a UIAlertAction object representing the action to be taken when the user taps
             
             the OK button in the alert view displayed. Since the handler is nil, no action will
             
             be taken when the OK button is tapped.
             
             */
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            
            
            // Add the UIAlertAction object created above to the UIAlertController object
            
            alertController.addAction(okAction)
            
            
            
            // Present the UIAlertController object modally
            
            present(alertController, animated: true, completion: nil)
            
        }
        
        
        
        //--------------------------------
        
        // Prepare the data object to pass
        
        //--------------------------------
        
        
        
        switch self.attractionSegmentedControl.selectedSegmentIndex {
            
        case 0:
            
            self.dataToPass = ["Churches", "MunichChurches"]
            
            
            
        case 1:
            
            self.dataToPass = ["Marienplatz", "MunichMarienplatz"]
            
            
            
        case 2:
            
            self.dataToPass = ["Oktoberfest", "MunichOktoberfest"]
            
            
            
        default:
            
            print("Something went wrong!")
            
        }
        
        
        
        performSegue(withIdentifier: "Show Munich Attraction", sender: self)
        
        
        
    }
    
    
    
    /*
     
     -------------------------
     
     MARK: - Prepare For Segue
     
     -------------------------
     
     */
    
    
    
    // This method is called by the system whenever you invoke the method performSegue(WithIdentifier:sender:)
    
    // You never call this method. It is invoked by the system; therefore, you override the method.
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.identifier == "Show Munich Attraction" {
            
            
            
            // Obtain the object reference of the destination view controller
            
            let munichAttractionViewController: MunichAttractionViewController = segue.destination as! MunichAttractionViewController
            
            
            
            // Pass the data object to the destination view controller object
            
            munichAttractionViewController.dataPassed = self.dataToPass
            
            
            
        }
        
    }
    
    
    
}
