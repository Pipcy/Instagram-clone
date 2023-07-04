//
//  IGFeedPostTableViewCell.swift
//  Instagram
//
//  Created by Jo Harper on 7/4/23.
//

import UIKit

final class IGFeedPostTableViewCell: UITableViewCell {
    
    static let identifier = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        //coonfigure the cell
    }
}
