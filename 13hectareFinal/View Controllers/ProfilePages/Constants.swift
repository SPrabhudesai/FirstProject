//
//  Constants.swift
//  Profile_Page
//
//  Created by Deeva Infotech LLP on 22/12/17.
//  Copyright © 2017 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Constants: NSObject {
    struct CustomeCellIdentifiers {
        static let loginIdentifier = "Login_ProfileViewController"
        static let forgotIdentifier = "Forgot_PasswordViewController"
        static let registerIdentifier = "Register_PageViewController"
        static let popUpIdentifier = "password_policyViewController"
        static let TermConditionIdentifier = "Term_ConditionViewController"
        
    }
    struct alertMessage {
        static let ok = "Ok"
        static let alert = "Alert"
        static let cancel = "Cancel"
        static let requried = "ALL field Requried"
        static let password = "Password Not Match"
        static let emptymail = "Please enter Email"
        static let vaildEmail = "Email address is not valid"
    }
    
    struct storyBordId {
        static let main = "Main"
    }
    
    struct print {
        static let empty = "Empty"
        static let match = "Not Match"
        static let register = "Register"
        static let login = "Login"
        static let valid = "Email address is valid"
        static let notvalid = "Email address is not valid"
    }
    
    
}
