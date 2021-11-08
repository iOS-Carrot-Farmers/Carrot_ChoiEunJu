//
//  HomeVC.swift
//  CarrotMarket_clonecoding
//
//  Created by EUNJU on 2021/11/08.
//

import UIKit
import JJFloatingActionButton

class HomeVC: UIViewController {
    
    // MARK: - Vars & Lets Part
    
    var homeContentList: [HomeContentData] = []

    // MARK: - UI Component Part
    
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - Life Cycle Part
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDataList()
        setTableView()
        setFloatingButton()
    }
    
    // MARK: - Custom Method Part
    
    func setFloatingButton() {
        let actionButton = JJFloatingActionButton()
        actionButton.buttonColor = UIColor(red: 238/255, green: 133/255, blue: 72/255, alpha: 1)
        
        homeTableView.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
    }
    
    func setTableView() {
        homeTableView.dataSource = self
        homeTableView.delegate = self
        
        let homeXib = UINib(nibName: HomeTableViewCell.className, bundle: nil)
        homeTableView.register(homeXib, forCellReuseIdentifier: HomeTableViewCell.className)
    }
    
    func initDataList() {
        homeContentList.append(contentsOf: [
            HomeContentData(postTitle: "킹받는 당근 한 박스 판매합니다", postSubTitle: "화양동 ∙ 끌올 53초 전", priceInfo: "10,000원", heartInfo: "2", postImageName: "carrotImg"),
            HomeContentData(postTitle: "잔망 루피 인형", postSubTitle: "자양동 ∙ 끌올 1일 전", priceInfo: "5,000원", heartInfo: "5", postImageName: "dollImg"),
            HomeContentData(postTitle: "킹받는 인생네컷 팝니다", postSubTitle: "성수동", priceInfo: "8,000원", heartInfo: "10", postImageName: "pictureImg"),
            HomeContentData(postTitle: "루희선배가 준 햄버거 젤리", postSubTitle: "화양동 ∙ 끌올 2일 전", priceInfo: "2,000원", heartInfo: "1", postImageName: "jellyImg"),
            HomeContentData(postTitle: "애플워치 SE 저번주에 샀습니다", postSubTitle: "군자동 ∙ 끌올 3일 전", priceInfo: "359,000원", heartInfo: "23", postImageName: "appleWatch")
        ])
    }
}

// MARK: - Extension Part

extension HomeVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeContentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.className) as? HomeTableViewCell else {return UITableViewCell()}
        
        cell.setData(homeData: homeContentList[indexPath.row])
        return cell
    }
}

