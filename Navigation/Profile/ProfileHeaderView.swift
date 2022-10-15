//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Шорников Михаил on 24.09.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText = String()
    
    private let profileImage: UIImageView = {
        let uiImage = UIImageView()
        uiImage.translatesAutoresizingMaskIntoConstraints = false
        uiImage.image = UIImage(named: "myPhoto")
        uiImage.clipsToBounds = true
        uiImage.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        uiImage.layer.borderWidth = 3
        uiImage.layer.cornerRadius = 50
        uiImage.contentMode = .scaleAspectFill
        return uiImage
    }()
    
    private let profileName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mike Sho"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    private let statusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0, green: 0.4780646563, blue: 0.9985368848, alpha: 1)
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 14
        button.layer.shadowOffset = .init(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    private let currentStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Waiting for something..."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
    
    private let statusField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textField.textColor = .black
        textField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.cornerRadius = 12
        textField.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        textField.layer.borderWidth = 1
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        subviewInit()
        setupConstraint()
        addTargets()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func subviewInit() {
        let viewForSubview = [profileImage, profileName, statusButton, currentStatus, statusField]
        viewForSubview.forEach({self.addSubview($0)})
    }
    
    func setupConstraint() {
        
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            profileImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            
            profileName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            profileName.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
            statusButton.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 16),
            statusButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            statusButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            statusButton.heightAnchor.constraint(equalToConstant: 50),
  
            currentStatus.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -50),
            currentStatus.centerXAnchor.constraint(equalTo: statusButton.centerXAnchor),
            
            statusField.topAnchor.constraint(equalTo: currentStatus.bottomAnchor, constant: 5),
            statusField.heightAnchor.constraint(equalToConstant: 40),
            statusField.leftAnchor.constraint(equalTo: statusButton.leftAnchor, constant: 100),
            statusField.rightAnchor.constraint(equalTo: statusButton.rightAnchor)
        ])
    }
    func addTargets() {
        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        statusField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
    }
    
    @objc
    func buttonPressed() {
        currentStatus.text = statusText
    }
    
    @objc
    func statusTextChanged(_ textField: UITextField) {
        if let i = textField.text {
            statusText = i
        }
    }
}

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
