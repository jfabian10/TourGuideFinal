import UIKit



class MunichAttractionViewController: UIViewController {
    
    
    
    /*
     
     Data object passed by the upstream view controller MunichViewController
     
     dataPassed[0] = navigation item title
     
     dataPassed[1] = attraction image name
     
     */
    
    var dataPassed = [String]()
    
    
    
    // Object reference (unique ID) of the UINavigationItem UI object
    
    @IBOutlet var attractionNavigationItem: UINavigationItem!
    
    
    
    // Object reference (unique ID) of the UIImageView UI object
    
    @IBOutlet var attractionImageView: UIImageView!
    
    
    
    /*
     
     -----------------------
     
     MARK: - View Life Cycle
     
     -----------------------
     
     */
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        // Set the attraction title
        
        attractionNavigationItem.title = dataPassed[0]
        
        
        
        // Set the attraction image to show
        
        attractionImageView.image = UIImage(named: dataPassed[1])
        
    }
    
    
    
}

