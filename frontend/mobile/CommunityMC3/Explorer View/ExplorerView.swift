//
//  FirstViewController.swift
//  CommunityMC3
//
//  Created by Bryanza on 06/07/20.
//  Copyright © 2020 Apple Developer Academy. All rights reserved.
//

import UIKit

enum ExplorerSection:Int {
    case TrendingNow = 0
    case Count = 1
}

class ExplorerView: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTableView.register(UINib(nibName: "TrendingNowCell", bundle:nil), forCellReuseIdentifier: "trendingNowCell")
        mainTableView.register(UINib(nibName: "HeaderCell", bundle:nil), forCellReuseIdentifier: "headerCell")

    }


}

extension ExplorerView:UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if(section == ExplorerSection.TrendingNow.rawValue)
        {
            var cell = mainTableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderCell
            cell.HeaderName.text = "header"
            return cell
        }
        return mainTableView.dequeueReusableCell(withIdentifier: "headerCell")!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        44
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return ExplorerSection.Count.rawValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3 // temp
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == ExplorerSection.TrendingNow.rawValue)
        {
            var cell = mainTableView.dequeueReusableCell(withIdentifier: "trendingNowCell") as! TrendingNowCell
            return cell
        }
        return mainTableView.dequeueReusableCell(withIdentifier: "trendingNowCell")!
    }
    
    
}
