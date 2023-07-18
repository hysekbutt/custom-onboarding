//
//  ChatTableCell.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 5/2/23.
//

import UIKit

class ChatTableCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var interestsLabel: UILabel!
    
    //MARK: - Methods
    func configure(indexPath: IndexPath) {
        if indexPath.row % 2 != 0 {
            profileImageView.image = UIImage(named: "girl-1")
            nameLable.text = "Harriett Aguilar"
            bioLabel.text = "F | 30 | Traveler"
            interestsLabel.text = "Art/Museum, Party, Drinking"
        }
    }

}
