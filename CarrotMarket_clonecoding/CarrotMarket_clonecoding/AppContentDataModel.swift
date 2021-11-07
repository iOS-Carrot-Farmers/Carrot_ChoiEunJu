//
//  AppContentDataModel.swift
//  CarrotMarket_clonecoding
//
//  Created by EUNJU on 2021/11/08.
//

import UIKit

struct HomeContentData {
    let postTitle: String
    let postSubTitle: String
    let priceInfo: String
    let heartInfo: String
    let postImageName: String
    
    func makePostImage() -> UIImage? {
        return UIImage(named: postImageName)
    }
}
