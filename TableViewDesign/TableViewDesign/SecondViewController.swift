//
//  ViewController.swift
//  TableViewDesign
//
//  Created by Rabin on 04/01/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var segOut: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    var personArray = ["Aneesha", "Rabin", "Swathy", "Arun", "Jerin", "Amal", "Munitha", "Anil"]
    var emptyArray = [Int]()
    var sortedArray = [String]()
    var empty = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        empty = personArray
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empty.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        cell.labelPersonName.text = empty[indexPath.row]
        cell.viewInCell.layer.cornerRadius = 20
        cell.imageViewInCell.layer.cornerRadius = 40
        if emptyArray.contains(indexPath.row) {
            cell.viewInCell.backgroundColor = .red
        }
        else {
            cell.viewInCell.backgroundColor = .green
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if !emptyArray.contains(indexPath.row) {
            emptyArray.append(indexPath.row)
            sortedArray.append(personArray[indexPath.row])
        }
        
        else {
            let likeCell = emptyArray.lastIndex(of: indexPath.row)
            emptyArray.remove(at: likeCell ?? 0)
            sortedArray.remove(at: likeCell ?? 0)
        }
        
        tableView.reloadData()
    }
    @IBAction func segAct(_ sender: UISegmentedControl) {
        if segOut.selectedSegmentIndex == 0{
            empty = personArray
        }else{
            empty = sortedArray
        }
        tableView.reloadData()
    }
}
