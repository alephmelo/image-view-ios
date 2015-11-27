//
//  ViewController.swift
//  albumView
//
//  Created by Aleph Melo on 7/7/15.
//  Copyright (c) 2015 Aleph Melo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var albumLabel: UILabel!
    
    var imageList:[String] = ["Radiohead1.jpg","Radiohead2.jpg", "LinkinPark.jpg", "Interpol.jpeg"]
    var nameList:[String] = ["OK Computer","The Bends","A Thousand Suns","Our Love to Admire"]
    
    let maxImgs = 3
    var imgIndex:NSInteger = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: "Radiohead1.jpg")
        albumLabel.text = nameList[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        if imgIndex > maxImgs {
            imgIndex = 0
        }
        imgIndexing(imgIndex)
    }
    
    func imgIndexing (imgInd:NSInteger) {
        imageView.image = UIImage(named: imageList[imgInd])
        albumLabel.text = nameList[imgInd]
        imgIndex++
    }
}

