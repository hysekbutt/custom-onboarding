//
//  CollectionViewCell.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 5/1/23.
//

import UIKit

class DiscoveryVideoCollectionCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var videoTimeElapsedLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var videoThumbnailImageView: UIImageView!
    
    //MARK: - Methods
    func configure(indexPath: IndexPath) {
        
        if indexPath.item == 1 {
            videoThumbnailImageView.image = UIImage(named: "tea-2-")
            userProfileImageView.image = UIImage(named: "girl-1")
            userNameLabel.text = "Ruthy Egan"
            videoTimeElapsedLabel.text = "3 weeks ago"
        }
    }
}
