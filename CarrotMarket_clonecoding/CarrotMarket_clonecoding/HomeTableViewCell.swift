//
//  HomeTableViewCell.swift
//  CarrotMarket_clonecoding
//
//  Created by EUNJU on 2021/11/08.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    // MARK: - UI Component Part
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var heartCountLabel: UILabel!
    
    // MARK: - Life Cycle Part
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Custom Method Part
    
    func setData(homeData: HomeContentData) {
        postImageView.image = homeData.makePostImage()
        titleLabel.text = homeData.postTitle
        subTitleLabel.text = homeData.postSubTitle
        priceLabel.text = homeData.priceInfo
        heartCountLabel.text = homeData.heartInfo
    }
}

// MARK: - Extension Part

extension HomeTableViewCell {
    func setLabel() {
        titleLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        titleLabel.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        subTitleLabel.textColor = UIColor(red: 0.573, green: 0.588, blue: 0.616, alpha: 1)
        subTitleLabel.font = UIFont(name: "SFProDisplay-Regular", size: 11)
        priceLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        priceLabel.font = UIFont(name: "SFProDisplay-Semibold", size: 15)
        heartCountLabel.textColor = UIColor(red: 0.375, green: 0.375, blue: 0.375, alpha: 1)
        heartCountLabel.font = UIFont(name: "SFProDisplay-Regular", size: 11)
    }
    
}

extension UIView {
    static var className: String {
        NSStringFromClass(self.classForCoder()).components(separatedBy: ".").last!
    }
    
    var className: String {
        NSStringFromClass(self.classForCoder).components(separatedBy: ".").last!
    }
}


