//
//  BeersTableViewController.swift
//  RM31894
//
//  Created by Luana on 26/11/17.
//  Copyright © 2017 fiap. All rights reserved.
//

import UIKit
import Kingfisher

class BeersTableViewController: UITableViewController {

    var beers: [Beer] = []
    
    var label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 22))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBeers()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.beer = beers[tableView.indexPathForSelectedRow!.row]
    }
    
    func loadBeers() {
        REST.loadBeer { (beers: [Beer]?) in
            if let beers = beers {
                DispatchQueue.main.async {
                    self.beers = beers
                    self.tableView.separatorStyle = .singleLine;
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeerCell", for: indexPath) as! BeerTableViewCell
        
        let beer = beers[indexPath.row]
        
        let url = URL(string: beer.imageURL!)
        cell.imageView?.kf.setImage(with: url)
        cell.lbName.text = beer.name
        cell.lbAbv.text = "Teor alcoólico: " + String(format: "%.1f", beer.abv!)
        cell.imageView?.contentMode = .scaleAspectFit
        //let processor = ResizingImageProcessor(referenceSize: CGSize(width: 60, height: 90))
        //cell.imageView?.kf.setImage(with: url,options: [.processor(DefaultImageProcessor.default)])
        
        return cell
    }
}

