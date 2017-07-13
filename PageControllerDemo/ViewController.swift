//
//  ViewController.swift
//  PageControllerDemo
//
//  Created by mac on 13/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img_view: UIImageView!
    
    @IBOutlet weak var pge_control: UIPageControl!
    
    var timer: Timer!
    var updatecounter: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatecounter = 0
        timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }

    
    internal func updateTimer()
    {
        if (updatecounter <= 4)
        {
            pge_control.currentPage = updatecounter
            img_view.image = UIImage(named: String(updatecounter) + ".jpg")
            updatecounter = updatecounter + 1
            print(updatecounter)
        }
        else
        {
            updatecounter = 0
        }
    }
    
    @IBAction func btn_pageController(_ sender: Any) {
        updatedImage()
        print(updatecounter)
    }
    
    func updatedImage()
    {
        if updatecounter <= 4
        {
            img_view.image = UIImage(named: String(updatecounter) + ".jpg")
            updatecounter = updatecounter + 1
        }
        else
        {
            updatecounter = 0
        }
    }
    
}

