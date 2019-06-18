//
//  ViewController.swift
//  CodeableDecodeable
//
//  Created by Jai Nijhawan on 17/06/19.
//  Copyright © 2019 Jai Nijhawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var customTableview: UITableView!
    
    var pincodeOffices = [pincodeOffice]()
    
    let urlString = "http://www.postalpincode.in/api/pincode/122001"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customTableview.delegate = self
        customTableview.dataSource = self
        
        
        if let url = URL(string: urlString){
            if let data = try? Data(contentsOf: url){
                print(data)
                parse(json: data)
                
            }
        }
        
    }

    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonData = try? decoder.decode(pincodeOfficeses.self, from: json)
        {
            pincodeOffices = jsonData.PostOffice
            
            for index in 0..<pincodeOffices.count
            {
            let p = pincodeOffices[index]
                print(p.Name)
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pincodeOffices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        
        cell.nameLabel.text = pincodeOffices[indexPath.row].Name
        return cell
    }

   
}

