//
//  PostViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .blue
        view.addSubview(label)
        setupBarButtonItem()
    }
    
    private let label: UILabel = {
        let label = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 30, width: 70, height: 12))
        label.text = "Post #1"
        return(label)
    }()
    
    func setupBarButtonItem() {
        let baritem = UIBarButtonItem(image: UIImage(systemName: "bubble.right"), style: .plain, target: self, action: #selector(addTarget))
        self.navigationItem.rightBarButtonItem = baritem
    }
    
    @objc func addTarget(){
        let infoViewController = InfoViewController()
        navigationController?.pushViewController(infoViewController, animated: true)
    }
}
