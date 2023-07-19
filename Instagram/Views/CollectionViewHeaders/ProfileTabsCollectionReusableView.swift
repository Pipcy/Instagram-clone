//
//  ProfileTabsCollectionReusableView.swift
//  Instagram
//
//  Created by Jo Harper on 7/4/23.
//

import UIKit

class ProfileTabsCollectionReusableView: UICollectionReusableView {

    static let identifier = "ProfileTabsCollectionReusableView"
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground//backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
