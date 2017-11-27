//
//  ViewController.swift
//  RM31894
//
//  Created by Luana on 25/11/17.
//  Copyright © 2017 fiap. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbTag: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    @IBOutlet weak var lbAbv: UILabel!
    @IBOutlet weak var lbIbu: UILabel!
    @IBOutlet weak var imgURL: UIImageView!
    
    var beer: Beer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if beer != nil {
            lbName.text = beer?.name
            lbTag.text = beer?.tagline
            lbDescription.text = beer?.description
            lbAbv.text = String(format: "%.1f", beer.abv!)
            lbIbu.text = String(format: "%.1f", beer.ibu!)
            let url = beer?.imageURL
            if url != nil{
                imgURL.kf.setImage(with: URL(string: url!))
            }
        }
        
        //lbDescription.sizeToFit()
    }
}

