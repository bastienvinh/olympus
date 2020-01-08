//
//  GodsListViewController.swift
//  Olympus
//
//  Created by Bastien VINH on 06/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class GodsListViewController: UIViewController {

    
    @IBOutlet weak var tableview: UITableView!
    
    var gods = GodsDomain().getGods()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetail", let vc = segue.destination as? DetailViewController {
            let god = sender as! God
            vc.god = god
        }
    }
    

}

extension GodsListViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableview.dequeueReusableCell(withIdentifier: "reusecell") as? PresentationTableViewCell {
            
            cell.setupCell(gods[indexPath.row])
            
            return cell
        }
        
        let newCell = UITableViewCell()
        
        return newCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goDetail", sender: gods[indexPath.row])
    }
    
    
    
    
}
