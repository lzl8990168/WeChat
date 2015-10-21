//
//  FriendsCell.swift
//  WeChat
//
//  Created by apple on 10/5/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

import UIKit

let SCREENWIDTH = UIScreen.mainScreen().bounds.width

class FriendsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        var backgrondView = UIView(frame: CGRectMake(0, 0, SCREENWIDTH, 50))
        
        var iconimage = UIImage(named: "headicon.jpg")
        var icon = UIImageView(frame: CGRectMake(0, 0, 50, 50))
        icon.image = iconimage
        
        var friendLable = UILabel(frame: CGRectMake(50, 0, SCREENWIDTH - 50, 50))
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
