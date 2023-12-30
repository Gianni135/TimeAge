//
//  ViewController.swift
//  TimeAge
//
//  Created by Gianni Casto on 22/06/2020.
//  Copyright © 2020 USBZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    var seconds = 0
    
    //Variables
   
    //Timer
    var timer = Timer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        
    }
    @IBAction func start(_ sender: UIButton) {
        timer.invalidate()
        seconds = 0
        secondLabel.text = "\(0)"

        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        
        
        
    }
    
    @objc fileprivate func count() {
        seconds += 1
        secondLabel.text = "\(seconds)"
    }
    
    
    
    @IBAction func pause(_ sender: UIButton) {
        
        timer.invalidate()
        
        let FloatHeight = Float(secondLabel.text!) ?? 0.0

        var height = Int(FloatHeight * FloatHeight/100*16.087/3.281)
        
        heightLabel.text = "\(height)"
        

    }
   
    @IBAction func reset(_ sender: UIButton) {
        var seconds = 0

        var FloatSecondLabel = Float(heightLabel.text!) ?? 0.0

        secondLabel.text = "\(0)"
        heightLabel.text = "\(0)"
        
        func resetTimes(){
            seconds = 0
            FloatSecondLabel = 0
            seconds = 0
            timer.invalidate()
            
            
           
            
        }

      
        
        
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
 

}
