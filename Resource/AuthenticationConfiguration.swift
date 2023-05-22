//
//  AuthenticationConfiguration.swift
//  MFAuthAccess
//
//  Created by Akash Belekar on 09/05/23.
//

import Foundation

//MARK: AuthenticationConfiguration
 

public class AuthenticationConfiguration{
    
    public var textAlignment : NSTextAlignment = .left
    public var font: UIFont = UIFont.systemFont(ofSize: 16)
    public var firstPlaceholderFont: UIFont = UIFont.systemFont(ofSize: 8)
    public var secondPlaceholderFont: UIFont = UIFont.systemFont(ofSize: 8)
    public var lblFirstFiledFont: UIFont =  UIFont.systemFont(ofSize: 18)
    public var lblSecondFiledFont: UIFont = UIFont.systemFont(ofSize: 18)
    public var textColor: UIColor = UIColor.brown
    public var numberOfLines: Int = 0
    public var text: String = "Login"
    public var logo: UIImage = UIImage()
    public var btnFont: UIFont = UIFont.systemFont(ofSize: 18)
    public var backgroundColor: UIColor = UIColor.yellow
    public var btnBackgroundColor: UIColor = UIColor.brown
    public var firstLblText: String = "User"
    public var secondLblText: String = "Passwords"
    public var firstPlaceHolderText: String = "Enter Email"
    public var secondplaceHolderText: String = "Enter Password"
    public var placeHolderTextColor: UIColor =  UIColor.brown
    public var imgIconColor: UIColor =  UIColor.brown
    public var pinText: String = "Please Enter Numbers"
    public var btnTitle: String = "DONE"
    public var containerViewBorderColor: UIColor = UIColor.gray
    public var containerViewBorderWidth: Int = 1
    public var spaceViewBorderColor: UIColor = UIColor.gray
    public var viewTintColor: UIColor = UIColor.black
    public var resendPinBtnTitleText: String = "Forgot Password?"
    public var resendPinBtnTextColor: UIColor = UIColor.black
    public var resendPinBtnBackgroundColor: UIColor = UIColor.gray
    public var bntTitleColor: UIColor = UIColor.red
    public var resendPinBtnFont: UIFont = UIFont.systemFont(ofSize: 16)


    public var viewType: AuthType = .none
    
    public init() {}
}

//MARK: Enum
public enum AuthType{
    case pinView, email, mobile, authLog, none
    
}

