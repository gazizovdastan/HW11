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
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "gazizovdastan"
        textField.setLeftIcon(UIImage(named: "person")!)
        textField.setRightIcon(UIImage(named: "checkMark")!)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        return textField
    }()
    
    private lazy var passwordTextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.setLeftIcon(UIImage(named: "key")!)
        let padding: CGFloat = 10.0
        passwordField.setRightPadding(padding)
        passwordField.backgroundColor = .white
        passwordField.layer.cornerRadius = 20
        return passwordField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
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
        let button = UIButton()
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
    
    private lazy var firstLineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        lineView.layer.cornerRadius = 2
        return lineView
    }()
    
    private lazy var secondLineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        lineView.layer.cornerRadius = 2
        return lineView
    }()
    
    private lazy var facbookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
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
    
    private lazy var noAccauntLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have accaunt?"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.systemIndigo, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(backgroundImageView)
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
