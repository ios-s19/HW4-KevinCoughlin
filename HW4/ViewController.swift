//
//  ViewController.swift
//  HW4
//
//  Created by Coughlin, Kevin P (cough003) on 4/5/19.
//  Copyright © 2019 Kevin Coughlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cells: [Cell] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cells = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Cell]{
        var tempCells: [Cell] = []
        let cell1 = Cell(image: #imageLiteral(resourceName: "palace"), title:"Buckinghame Palace")
        let cell2 = Cell(image: #imageLiteral(resourceName: "tower"), title:"The Eiffel Tower")
        let cell3 = Cell(image: #imageLiteral(resourceName: "canyon"), title:"The Grand Canyon")
        let cell4 = Cell(image: #imageLiteral(resourceName: "castle"), title:"Windsor Castle")
        let cell5 = Cell(image: #imageLiteral(resourceName: "building"), title:"Empire State Building")
        
        tempCells.append(cell1)
        tempCells.append(cell2)
        tempCells.append(cell3)
        tempCells.append(cell4)
        tempCells.append(cell5)
        
        return tempCells
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = cells[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.setCell(cell: item)
        return cell
    }
}
