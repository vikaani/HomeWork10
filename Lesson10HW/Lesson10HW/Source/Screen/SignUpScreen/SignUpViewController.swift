//
//  SignUpViewController.swift
//  Lesson10HW
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var contentView: SignUpView!

    private let maxCharactersCount = 16
    private let minCharactersCount = 3
    
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

        guard let textFieldText = textField.text else { return false }
        let updatedText = (textFieldText as NSString).replacingCharacters(in: range, with: string)
        
        if textField == cardNumberTextField {
            return updatedText.count <= maxCharactersCount
        } else if textField == cvvTextField {
            return updatedText.count <= minCharactersCount
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
