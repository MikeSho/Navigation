//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView: ProfileHeaderView = {
        let profileView = ProfileHeaderView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        return profileView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        setupBarLabelItem()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        setupConstraint()        
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            profileHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    
    func setupBarLabelItem() {
        self.navigationItem.title = "Profile"
        self.navigationController?.navigationBar.backgroundColor = .white
    }
}
