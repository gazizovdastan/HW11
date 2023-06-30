//
//  ViewController.swift
//  hw11
//
//  Created by Dastan on 29.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "gazizovdastan"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.setLeftIcon(UIImage(named: "person")!)
        textField.setRightIcon(UIImage(named: "checkMark")!)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        return textField
    }()
    
    private lazy var passwordTextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.font = UIFont.systemFont(ofSize: 14)
        passwordField.setLeftIcon(UIImage(named: "key")!)
        let padding: CGFloat = 10.0
        passwordField.setRightPadding(padding)
        passwordField.backgroundColor = .white
        passwordField.layer.cornerRadius = 20
        return passwordField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.42, green: 0.45, blue: 0.81, alpha: 1.00)
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var passwordForgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    private lazy var connectLineLabel: UILabel = {
        let connectLabel = UILabel()
        connectLabel.text = "or connect with"
        connectLabel.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        connectLabel.font = UIFont.systemFont(ofSize: 12)
        return connectLabel
    }()
    
    private lazy var leftLineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .lightGray
        lineView.layer.cornerRadius = 2
        return lineView
    }()
    
    private lazy var rightLineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .lightGray
        lineView.layer.cornerRadius = 2
        return lineView
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.21, green: 0.65, blue: 0.94, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.31, green: 0.45, blue: 0.71, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    private lazy var dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have accaunt?"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.systemIndigo, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupViews()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(backgroundImageView)
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(passwordForgotButton)
        view.addSubview(connectLineLabel)
        view.addSubview(leftLineView)
        view.addSubview(rightLineView)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(signUpButton)
    }
    
    private func setupViews() {
        let heigt = UIScreen.main.bounds.height
        backgroundImageView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(heigt * 0.675)
        }

        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(105)
            make.centerX.equalToSuperview()
        }

        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(37)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(45)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(18)
            make.leading.trailing.height.equalTo(loginTextField)
        }

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(48)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalTo(loginTextField)
            make.height.equalTo(40)
        }

        passwordForgotButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        
        dontHaveAccountLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-90)
            make.left.equalToSuperview().offset(112)
        }

        signUpButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-90)
            make.left.equalTo(dontHaveAccountLabel.snp.right).offset(12)
            make.height.equalTo(14)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-55)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-205)
            make.width.equalTo(150)
        }

        twitterButton.snp.makeConstraints { make in
            make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-55)
            make.leading.equalToSuperview().offset(205)
            make.trailing.equalToSuperview().offset(-30)
            make.width.equalTo(150)
        }

        connectLineLabel.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.top).offset(-40)
            make.centerX.equalToSuperview()
        }

        leftLineView.snp.makeConstraints { make in
            make.centerY.equalTo(connectLineLabel.snp.centerY)
            make.right.equalTo(connectLineLabel.snp.left).offset(-15)
            make.height.equalTo(1)
            make.width.equalTo(70)
        }

        rightLineView.snp.makeConstraints { make in
            make.centerY.equalTo(connectLineLabel.snp.centerY)
            make.left.equalTo(connectLineLabel.snp.right).offset(15)
            make.height.equalTo(1)
            make.width.equalTo(70)
        }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 25, y: 6, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 30, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 5, y: 8, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 45, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
    
    func setPadding(left: CGFloat, right: CGFloat? = nil) {
            setLeftPadding(left)
            if let rightPadding = right {
                setRightPadding(rightPadding)
            }
    }

    func setLeftPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
            self.leftView = paddingView
            self.leftViewMode = .always
    }

    func setRightPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
            self.rightView = paddingView
            self.rightViewMode = .always
    }
}
