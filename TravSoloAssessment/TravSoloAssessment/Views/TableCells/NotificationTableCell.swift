//
//  NotificationTableCell.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 5/2/23.
//

import UIKit

class NotificationTableCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var notificationTypeLabel: UILabel!
    @IBOutlet weak var storyCompletedView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    
    //MARK: - Methods
    func configure(indexPath: IndexPath) {
        
        nameLabel.attributedText = Utility.changeTextColor(fullText: "Marvin Chavez Sent you chat", changeText: "Sent you chat", color: UIColor.lightGray)
        if indexPath.row == 0 || indexPath.row == 1 {
            
            self.contentView.backgroundColor = UIColor(red: 248/255, green: 252/255, blue: 255/255, alpha: 1)
        }
        if indexPath.row == 2 || indexPath.row == 5 {
            
            profileImageView.isHidden = true
            notificationTypeLabel.isHidden = true
            nameLabel.text = "Your Story has just ended"
            timeLabel.text = "07:47 am"
        }
        if indexPath.row == 1 || indexPath.row == 4 {
            
            profileImageView.image = UIImage(named: "girl-1")
            nameLabel.attributedText = Utility.changeTextColor(fullText: "Hunter Mullins Sent you chat", changeText: "Sent you chat", color: UIColor.lightGray)
        }
    }
}
