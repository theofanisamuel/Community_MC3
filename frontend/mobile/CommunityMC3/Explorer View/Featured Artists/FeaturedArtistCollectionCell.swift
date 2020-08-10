//
//  FeaturedArtistCollectionCell.swift
//  CommunityMC3
//
//  Created by Theofani on 21/07/20.
//  Copyright © 2020 Apple Developer Academy. All rights reserved.
//

import UIKit

class FeaturedArtistCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var artistImageView: UIImageView!
    var callBack: (() -> Void)? = nil
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateData(userData:UserDataStruct)
    {
        artistImageView.image = userData.profilePicture
        name.text = userData.name
    }
    
}
