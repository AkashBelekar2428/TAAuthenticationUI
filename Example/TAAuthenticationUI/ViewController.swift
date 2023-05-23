//
//  ViewController.swift
//  TAAuthenticationUI
//
//  Created by akashbelekar2428 on 05/19/2023.
//  Copyright (c) 2023 akashbelekar2428. All rights reserved.
//

import UIKit
import TAAuthenticationUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var authComp = AuthenticationLogIn()
        authComp.controller = self
        authComp.setDefaultThems()
        authComp.frame = self.view.bounds
        authComp.frame.origin.x = 10
        authComp.frame.size.width = authComp.frame.size.width - 10
        //self.view.addSubview(authComp)
        
        var authEmail = Email_Address()
        authEmail.controller = self
        authEmail.setEmailDefaultThemes()
        authEmail.frame = self.view.bounds
        self.view.addSubview(authEmail)
        
        var authMobile = Mobile_Number()
        authMobile.controller = self
        authMobile.setMobileDefaultThemes()
        authMobile.frame = self.view.bounds
       // self.view.addSubview(authMobile)
        
        var authPIN = PINView()
        authPIN.controller = self
        authPIN.setPINDefaultThemes()
        authPIN.frame = self.view.bounds
       // self.view.addSubview(authPIN)
    }


}

