//
//  FeedViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

final class FeedViewController: UIViewController {
   
    var postStruct = Post(title: "Post #1", message: "Hello! This is my first post!")
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        addTargets()
        view.addSubview(postButton)
        view.backgroundColor = .white
        
    }
    
    private let postButton: UIButton = {
        let button = UIButton(frame: CGRect(x: screenSize.width / 2 - 120, y: screenSize.height / 1.2 - 30, width: 240, height: 60))
        button.setTitle("Show post", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = screenSize.height / 15 / 3
        button.backgroundColor = #colorLiteral(red: 0.09288740903, green: 0.5254676342, blue: 1, alpha: 1)
        return button
    }()
    
    func addTargets() {
        postButton.addTarget(self, action: #selector(showDetailController), for: .touchUpInside)
    }
    
    @objc func showDetailController() {
        let postViewController = PostViewController()
        navigationController?.pushViewController(postViewController, animated: true)
    }
}


