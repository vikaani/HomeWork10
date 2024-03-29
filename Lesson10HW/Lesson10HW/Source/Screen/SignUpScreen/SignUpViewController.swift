//
//  SignUpViewController.swift
//  Lesson10HW
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var contentView: SignUpView!

    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()

        contentView.setTextFieldDelegate(self)
    }
    
    private var cardNumberTextField: UITextField {
        contentView.cardNumberTextField
    }
    
    private var cvvTextField: UITextField {
        contentView.cvvTextField
    }
}

// MARK: - UITextFieldDelegate
extension SignUpViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == cardNumberTextField {
            return cardNumberTextField.text!.count <= 16
        } else if textField == cvvTextField {
            return cvvTextField.text!.count <= 3
        }
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.returnKeyType = .done
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
