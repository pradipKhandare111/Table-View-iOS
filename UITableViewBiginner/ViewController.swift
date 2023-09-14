//
//  ViewController.swift
//  UITableViewBiginner
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    var youtubeChannels = ["technical guruji", "punekar", "mumbaikar", "sharma technical",
                           "technical guruji", "punekar", "mumbaikar", "sharma technical",
                           "technical guruji", "punekar", "mumbaikar", "sharma technical",
                           "technical guruji", "punekar", "mumbaikar", "sharma technical"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubeChannels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = youtubeChannels[indexPath.row]
        return cell
    }
    
    
}

