//
//  ViewController.swift
//  Quick&NimbleSampleProject
//
//  Created by HengVisal on 5/30/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
import SnapKit

class MovieViewController: UIViewController {
    
    let CellId = "myCell"
    var tableView : UITableView!
    var getMovie : [Movie] = MovieDataHelper.getMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        createComponent()
        addSupview()
        setupLayout()
        
    }
}
/* ============================================================================================= */
                                        /* UI SETUP */
/* ============================================================================================= */

// MARK: - Create UI Component
extension MovieViewController {
    func createComponent() -> Void {
        tableView = UITableView()
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: CellId)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - Add Supview
extension MovieViewController {
    func addSupview() -> Void {
        self.view.addSubview(self.tableView)
    }
}

// MARK: - Setup UI Layout
extension MovieViewController {
    func setupLayout() -> Void {
        tableView.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
        }
    }
}

/* ============================================================================================= */
                                    /* TableView Delegate */
/* ============================================================================================= */


// MARK: - TableView Delegate
extension MovieViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: CellId, for: indexPath as IndexPath)
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: CellId)
        cell.textLabel?.text = getMovie[indexPath.row].title
        cell.detailTextLabel?.text = getMovie[indexPath.row].genre.rawValue
        return cell
    }
   
}

