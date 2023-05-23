//
//  AuthenticationConfiguration.swift
//  MFAuthAccess
//
//  Created by Akash Belekar on 09/05/23.
//

import Foundation

//MARK: AuthenticationConfiguration
 

public class AuthenticationConfiguration{
//    public var logo: UIImage = UIImage()
    
//    public var label = Lable_Extension()
//    public var button = Button_Extension()
//    public var textFiled = TextFiled_Extesion()
//    public var image = ImageView_Extension()
//    public var views = UIView_Extension()
    
    public var headerLbl = TALable()
    public var firstLbl = TALable()
    public var secondLbl = TALable()
    public var firstTextfiled = TATextFiled()
    public var secondTextfiled = TATextFiled()
    public var valideBtn = TAButton()
    public var resendPINBtn = TAButton()
    public var headerView = TAUIView()
    public var logoImage = TAImage()

    
    
//    public var headerViewText: String = "Login"
//    public var headerViewTextColor: UIColor = UIColor.brown
//    public var headerViewTextFont: UIFont = UIFont.systemFont(ofSize: 16)
//    public var hearderViewTextNumberOfLines: Int = 1
//    public var headerViewTextSize: CGSize = CGSize(width: 150, height: CGFloat.greatestFiniteMagnitude)
//    public var headerViewTextAlignment: NSTextAlignment = .left
//
//    public var firstLblText: String = "User"
//    public var textAlignment : NSTextAlignment = .left
//    public var firstLblTextFont: UIFont =  UIFont.systemFont(ofSize: 18)
//    public var firstLblTextColor: UIColor = UIColor.black
//
//    public var secondLblText: String = "Passwords"
//    public var secondLblTextFont: UIFont =  UIFont.systemFont(ofSize: 18)
//    public var secondLblTextColor: UIColor = UIColor.black
//
//    public var firstPlaceHolderText: String = "Enter Email"
//    public var firstPlaceHolderTexttColor: UIColor =  UIColor.brown
//    public var firstPlaceHolderTextFont: UIFont = UIFont.systemFont(ofSize: 8)
//
//
//
//
//    public var secondPlaceholderFont: UIFont = UIFont.systemFont(ofSize: 8)
//
//    public var lblSecondFiledFont: UIFont = UIFont.systemFont(ofSize: 18)
//    public var numberOfLines: Int = 0
//    public var btnFont: UIFont = UIFont.systemFont(ofSize: 18)
//    public var headerViewBackgroundColor: UIColor = UIColor.yellow
//    public var btnBackgroundColor: UIColor = UIColor.brown
//    public var secondplaceHolderText: String = "Enter Password"
//    public var imgIconColor: UIColor =  UIColor.brown
//    public var pinText: String = "Please Enter Numbers"
//    public var btnTitle: String = "DONE"
//    public var containerViewBorderColor: UIColor = UIColor.gray
//    public var containerViewBorderWidth: Int = 1
//    public var spaceViewBorderColor: UIColor = UIColor.gray
//    public var viewTintColor: UIColor = UIColor.black
//    public var resendPinBtnTitleText: String = "Forgot Password?"
//    public var resendPinBtnTextColor: UIColor = UIColor.black
//    public var resendPinBtnBackgroundColor: UIColor = UIColor.gray
//    public var bntTitleColor: UIColor = UIColor.red
//    public var resendPinBtnFont: UIFont = UIFont.systemFont(ofSize: 16)


    public var viewType: AuthType = .none
    
    public init() {}
}

//MARK: Enum
public enum AuthType{
    case pinView, email, mobile, authLog, none
    
}

