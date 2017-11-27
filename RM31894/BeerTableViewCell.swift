//
//  BeerTableViewCell.swift
//  RM31894
//
//  Created by Luana on 26/11/17.
//  Copyright © 2017 fiap. All rights reserved.
//

import UIKit

class BeerTableViewCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAbv: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
