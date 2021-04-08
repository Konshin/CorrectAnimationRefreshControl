//
//  ViewController.swift
//  CorrectAnimationRefreshControl
//
//  Created by konshin on 04/08/2021.
//  Copyright (c) 2021 konshin. All rights reserved.
//

import UIKit
import CorrectAnimationRefreshControl

final class ViewController: UITableViewController {
    
    init(title: String) {
        super.init(style: .plain)
        
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        tableView.refreshControl = CorrectAnimationRefreshControl()
        tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
        tableView.tableFooterView = UIView()
    }
    
    @objc private func refresh() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [weak tableView] in
            tableView?.refreshControl?.endRefreshing()
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
    }

}

// MARK: - Table datasource
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        let cellId = "cell"
        if let current = tableView.dequeueReusableCell(withIdentifier: cellId) {
            cell = current
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        
        cell.textLabel?.text = "Cell #\(indexPath.row + 1)"
        cell.selectionStyle = .none
        
        return cell
    }
    
}

