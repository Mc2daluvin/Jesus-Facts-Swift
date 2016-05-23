//
//  ViewController.swift
//  FactsSwift
//
//  Created by Mc on 9/28/15.
//  Copyright © 2015 Good Rock Apps LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funfactLabel: UILabel!
    
    @IBOutlet var nextTipButton: UIButton!
    
    let factbook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
       

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         funfactLabel.text = factbook.randomFact()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeTheFact() {
        
        let bounds = self.nextTipButton.bounds
      
        UIView.animateWithDuration(1.3, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .CurveEaseOut  , animations: {
            self.nextTipButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
//            self.nextTipButton.enabled = false
            }, completion: nil)
        
        
        let randomColor = colorWheel.randomColor()
      
        view.backgroundColor = randomColor;        nextTipButton.tintColor = randomColor
        
        //print("Next Fact Coming Up")
        funfactLabel.text = factbook.randomFact()
                
    }
}

