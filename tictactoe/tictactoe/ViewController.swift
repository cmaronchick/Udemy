//
//  ViewController.swift
//  tictactoe
//
//  Created by Chris Aronchick on 6/26/16.
//  Copyright © 2016 Chris Aronchick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
      @IBOutlet weak var boardImage: UIImageView!

    
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topCenterButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var rightMiddleButton: UIButton!
    
    @IBOutlet weak var centerMiddleButton: UIButton!
    
    @IBOutlet weak var leftCenterButton: UIButton!
    
    @IBOutlet weak var leftBottomButton: UIButton!
    
    @IBOutlet weak var centerBottomButton: UIButton!
    
    @IBOutlet weak var rightBottomButton: UIButton!
    
    
    
    var turnInt = 0
    let imageArray = ["cross.png", "nought.png"]
    var totalTurns = 0
    
    
    
    func setTurn(this: UIButton) {
        if (this.currentImage == nil) {
            this.setImage(UIImage(named: imageArray[turnInt]), forState: .Normal)
        }
        totalTurns += 1
        if (turnInt == 0) {
            turnInt = 1
        } else {
            turnInt = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //boardImage.contentMode = UIViewContentMode.ScaleAspectFit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

