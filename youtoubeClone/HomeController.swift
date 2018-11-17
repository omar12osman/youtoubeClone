//
//  ViewController.swift
//  youtoubeClone
//
//  Created by Majid Osman on 2018-11-17.
//  Copyright © 2018 Majid Osman. All rights reserved.
//

import UIKit



class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

   let CellId = "CellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: CellId)
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellId, for: indexPath)
        
      
        
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        setviews()
    }
    
    let ThumbnilImageView : UIImageView = {
    let thumbnilImageView = UIImageView()
//    thumbnilImageView.image = UIImage(named: <#T##String#>)
    thumbnilImageView.backgroundColor = .green
    thumbnilImageView.translatesAutoresizingMaskIntoConstraints = false
    return thumbnilImageView
    }()
    
    let channelUserPic : UIImageView = {
        let channel = UIImageView()
        //    channel.image = UIImage(named: <#T##String#>)
        channel.backgroundColor = .green
        channel.translatesAutoresizingMaskIntoConstraints = false
        return channel
    }()
    
    func setviews(){
    addSubview(ThumbnilImageView)
   ThumbnilImageView.topAnchor.constraint(equalTo: topAnchor, constant: 32).isActive = true
   ThumbnilImageView.heightAnchor.constraint(equalTo: heightAnchor, constant: 10)
   ThumbnilImageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
   ThumbnilImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 30).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

