//
//  FeedViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

class FeedViewController: UIViewController {
   
    var postStruct = Post(title: "First post")
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        addTargets()
        view.addSubview(button)
        view.backgroundColor = .white
        
    }
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 30, width: 120, height: 120))
        button.setTitle("Show post", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    func addTargets() {
        button.addTarget(self, action: #selector(showDetailController), for: .touchUpInside)
    }
    
    @objc func showDetailController() {
        let postViewController = PostViewController()
        navigationController?.pushViewController(postViewController, animated: true)
    }
}


