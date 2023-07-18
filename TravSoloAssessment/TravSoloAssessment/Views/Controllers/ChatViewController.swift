//
//  ChatViewController.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 4/29/23.
//

import UIKit

class ChatViewController: BaseViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var chatsTableView: UITableView!
    @IBOutlet weak var tabBarContainerView: UIView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarContainerView.addShadow(opacity: 0.2, radius: 1)
    }
    
    //MARK: - IBOutlets
    @IBAction func nextButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let notificationController = storyboard.instantiateViewController(withIdentifier: "notificationsViewController") as! NotificationsViewController
        self.presentTutorialControllers(controller: notificationController)
    }
}

//MARK: - Table View Delegates
extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatTableCell") as! ChatTableCell
        cell.configure(indexPath: indexPath)
        return cell
    }
}
