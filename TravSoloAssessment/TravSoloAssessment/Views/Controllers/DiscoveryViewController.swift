//
//  DiscoveryViewController.swift
//  TravSoloAssessment
//
//  Created by Hazz Butt on 4/29/23.
//

import UIKit

class DiscoveryViewController: BaseViewController {

    //MARK: - IBoutlets
    @IBOutlet weak var videosDropDownView: UIView!
    @IBOutlet weak var featureDropDownView: UIView!
    @IBOutlet weak var storyVideoscollectionView: UICollectionView!
    @IBOutlet weak var groupImageView: UIView!
    @IBOutlet weak var userProfileTabBarView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    
    //MARK: - Lifecycle 
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    //MARK: - IBActions
    @IBAction func nextButtonAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let chatController = storyboard.instantiateViewController(withIdentifier: "chatViewController") as! ChatViewController
        self.presentTutorialControllers(controller: chatController)
        
    }
    
    //MARK: - Helping Methods
    func setup() {
        
        videosDropDownView.addBorder(width: 0.5, color: UIColor.gray.cgColor)
        featureDropDownView.addBorder(width: 0.5, color: UIColor.gray.cgColor)
        userProfileTabBarView.addBorder(width: 2, color: UIColor(red: 41/255, green: 171/255, blue: 226/255, alpha: 1).cgColor)
        
        groupImageView.addShadow(opacity: 0.5, radius: 3)
        tabBarView.addShadow(opacity: 0.2, radius: 1)
    }
}

//MARK: - CollectionView Delegates
extension DiscoveryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! DiscoveryVideoCollectionCell
        cell.configure(indexPath: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize.init(width: 165, height: 260)
    }
}
