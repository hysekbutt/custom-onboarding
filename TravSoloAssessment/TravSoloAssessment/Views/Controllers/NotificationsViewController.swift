//
//  NotificationsViewController.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 4/29/23.
//

import UIKit

class NotificationsViewController: BaseViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var tableContainerView: UIView!
    @IBOutlet weak var tabBarContainerView: UIView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        tableContainerView.addShadow(opacity: 0.3, radius: 2)
        tabBarContainerView.addShadow(opacity: 0.2, radius: 1)
    }
}

//MARK: - Table View Delegates
extension NotificationsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationTableCell") as! NotificationTableCell
        cell.configure(indexPath: indexPath)
        return cell
    }
}
