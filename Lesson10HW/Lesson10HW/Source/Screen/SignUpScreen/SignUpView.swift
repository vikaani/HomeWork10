//
//  SignUpView.swift
//  Lesson10HW
//

import UIKit

class SignUpView: UIView {
    
    // MARK: - User Info
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    // MARK: - Address Info
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    // MARK: - Bank Card Info
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var expDateTextField: UITextField!
    @IBOutlet weak var cvvTextField: UITextField!
    // MARK: - Buttons
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet private var contentViewStackView: UIStackView!
    
    // MARK: - Actions
    @IBAction func signUpButtonAction(_ sender: UIButton) {
       endEditing(true)
    }
    
    func setTextFieldDelegate(_ delegate: UITextFieldDelegate) {
        contentViewStackView.subviews.forEach { view in
            if let textField = view as? UITextField {
                textField.delegate = delegate
            } else {
                view.subviews.forEach { view in
                    if let textField = view as? UITextField {
                        textField.delegate = delegate
                    }
                }
            }
        }
    }
}
