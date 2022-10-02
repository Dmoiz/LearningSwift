//
//  MyTableVC.swift
//  Nav
//
//  Created by Diego Moreno on 30/9/22.
//

import UIKit

class TableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var oTable: UITableView!
    
    
    let stringData =  ["Pepinillos", "Patatas", "Tomate", "Pollo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oTable.dataSource = self
        oTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: //"myCell", for: indexPath)
        let superCell : myCell = tableView.dequeueReusableCell(withIdentifier: "mySuperCell", for: indexPath) as! myCell
        superCell.lNameTwo.text = stringData[indexPath.row]
        return superCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
    
    
    
}
