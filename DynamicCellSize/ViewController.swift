//
//  ViewController.swift
//  DynamicCellSize
//
//  Created by Satyam Saluja on 01/10/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var data = ["Name-Satyam Saluja","Branch-Computer Science Engineering 2015-1019 batch(presently in 4th year.)","Address-plot-no 89 Vishya ckb332 colony gurgarva Ujjain,BWWCC TTivart,India.Pin code-4433221(Near the MKB Yasvrtiu Pandrat skilltyi,Ahead of Adrim Ashram colony Block 10)"]
    
    @IBOutlet weak var mytableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytableView.dataSource=self
        mytableView.delegate=self
        mytableView.estimatedRowHeight=44
        mytableView.rowHeight=UITableViewAutomaticDimension
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text=data[indexPath.row]
        cell.textLabel?.numberOfLines=0
        return cell
    }

}

