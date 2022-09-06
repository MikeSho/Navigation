//
//  InfoViewController.swift
//  Navigation
//
//  Created by Шорников Михаил on 06.09.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .white
        addTargets()
        setupAlertConfiguration()
        view.addSubview(button)
    }
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 30, width: 120, height: 120))
        button.setTitle("Show post info", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    func addTargets() {
        button.addTarget(self, action: #selector(addTarget), for: .touchUpInside)
    }
    
    let alertController = UIAlertController(title: "This is title", message: "And this is a message", preferredStyle: .alert)
    
    func setupAlertConfiguration() {
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("You pushed OK")
        }))
        alertController.addAction(UIAlertAction(title: "Get info", style: .default, handler: { _ in
            print("Some information")
        }))
    }
    
    @objc func addTarget() {
        self.present(alertController, animated: true, completion: nil)
    }
    
}
