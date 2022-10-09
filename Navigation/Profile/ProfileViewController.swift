//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView: ProfileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        setupBarLabelItem()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        viewWillLayoutSubviews()
        
    }
    
    override func viewWillLayoutSubviews() {
        profileHeaderView.frame = view.frame
    }
    
    func setupBarLabelItem() {
        self.navigationItem.title = "Profile"
        self.navigationController?.navigationBar.backgroundColor = .white
    }
}
