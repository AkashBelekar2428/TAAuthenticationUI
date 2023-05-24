//
//  MobilePinView.swift
//  Reusable
//
//  Created by Akash Belekar on 27/04/23.
//

import UIKit
import Foundation

//MARK: Protocol MobileNumberDelegate
public protocol MobileNumberDelegate{
    func sendPINAction(mobileNumber:String)
}
public class Mobile_Number:UIView {
    
    //MARK: IBOutlets
    @IBOutlet weak public var imgHeaderLogo:UIImageView!
    @IBOutlet weak public var lblHeaderLogin:UILabel!
    @IBOutlet weak public var viewHeader:UIView!
    @IBOutlet weak public var btnSendPin:UIButton!
    @IBOutlet weak public var viewContainerMobile:UIView!
    @IBOutlet weak public var tfMobileNum:UITextField!
    @IBOutlet weak public var lblCountryCode:UILabel!
    @IBOutlet weak public var lblMobile:UILabel!
    @IBOutlet weak public var btnReminder:UIButton!
    
    
    //MARK: Variables
    let nibName = "Mobile_Number"
    public var delegate:MobileNumberDelegate?
    public var mobileConfig = AuthenticationConfiguration()
    var myUtility = Utility()
    public weak var controller: UIViewController?
    
    
    
    //MARK: System methods
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        commonInit()
    }
    
    //MARK: lables
  public func setThemsForLable(lbl:UILabel, config:TALable)
    {
      lbl.text = config.TAText
      lbl.textColor = config.TATextColor
      lbl.font = config.TATextFont
      lbl.numberOfLines = config.TATextNumberOfLines
      lbl.textAlignment = config.TATextAlignment
      lbl.layer.cornerRadius = CGFloat(config.TATextCornerRadius)
      lbl.layer.borderColor = config.TATextBorderColor.cgColor
      lbl.layer.borderWidth = config.TATextBorderWidth
  }
      
  //MARK: Valide Button
  public func setThemsForButton(btn:UIButton, config:TAButton)
    {
      btn.setTitle(config.TABtnTitleText, for: .normal)
      btn.setTitleColor(config.TABtnTitleTextColor, for: .normal)
      btn.titleLabel?.font = config.TABtnTitleTextFont
      btn.backgroundColor = config.TABtnBackgrounColor
      btn.layer.cornerRadius = CGFloat(config.TABtnCornerRadius)
      btn.layer.masksToBounds = config.TABtnMasksToBounds
  }
  
  
  //MARK: TextField
  public func setThemsForTextField(textfiled: UITextField, config:TATextFiled)
  {
      textfiled.placeholder  = config.TATextfiledPlaceHolderText
      textfiled.textColor   = config.TATextfiledPlaceHolderTextColor
      textfiled.font = config.TATextfiledPlaceHolderTextFont
      textfiled.layer.borderColor = config.TATextfiledPlaceHolderBorderColor.cgColor
      textfiled.layer.borderWidth = CGFloat(config.TATextfiledPlaceHolderBorderWidth)
      textfiled.layer.cornerRadius = CGFloat(config.TATextfiledPlaceHolderCornerRadius)
  }
  
  //MARK: HeaderView
  public func setThemsForHeaderView(view:UIView, config: TAUIView)
  {
      view.backgroundColor = config.TAviewBackgroundColor
  }
  
  //MARK: HeaderView
  public func setThemsForHeaderViewImageORLogo(img: UIImageView, config: TAImage)
  {
      img.image = config.TAImageLogo
  }

    //MARK: SetDefaultThems
    public func setMobileDefaultThemes(){
        let mobileConfig = themsConfiguration()
        self.setThemeWithMobileConfiguration(config: mobileConfig)
    }
    
    //MARK: Configure DefaultThems
    func themsConfiguration() -> AuthenticationConfiguration
    {
        let config = AuthenticationConfiguration()
        let lblHeader = TALable()
        let lblFirst = TALable()
        let lblSecond = TALable()
        let tfFirst = TATextFiled()
        let viewHeader = TAUIView()
        let btnValide = TAButton()
        let imgLogo = TAImage()
        
        //MARK: HeaderView Txt
        lblHeader.TAText = "Log in"
        lblHeader.TATextColor = .textLblColor
        lblHeader.TATextAlignment = .left
        lblHeader.TATextFont = .boldSystemFont(ofSize: 20)
        
        //MARK: Mobile Txt
        lblFirst.TAText = "Mobile"
        lblFirst.TATextColor = .textLblColor
        lblFirst.TATextAlignment = .left
        lblFirst.TATextFont = .boldSystemFont(ofSize: 14)
        
        //MARK: country code Txt
        lblSecond.TAText = "+91"
        lblSecond.TATextAlignment = .center
        lblSecond.TATextColor = .black
        lblSecond.TATextBorderColor = .textfiledBoarderColor
        lblSecond.TATextBorderWidth = 0.5
        lblSecond.TATextCornerRadius = 6
        lblSecond.TATextFont = .boldSystemFont(ofSize: 14)
        
        
        //MARK: Email Textfiled
        tfFirst.TATextfiledPlaceHolderText = "Enter Mobile Number"
        tfFirst.TATextfiledPlaceHolderTextColor = .black
        tfFirst.TATextfiledPlaceHolderBorderColor = .textfiledBoarderColor
        tfFirst.TATextfiledPlaceHolderBorderWidth = 0.5
        tfFirst.TATextfiledPlaceHolderCornerRadius = 5
        tfFirst.TATextfiledPlaceHolderTextFont = .systemFont(ofSize: 12)
        
        //MARK: HeaderView
        viewHeader.TAviewBackgroundColor = .headerBackgroundColor
        
        //MARK: valide Btn
        btnValide.TABtnTitleText = "Send PIN      ->"
        btnValide.TABtnTitleTextColor = .btnTitleColor
        btnValide.TABtnBackgrounColor = .btnBackgroundColor
        btnValide.TABtnTitleTextFont = .boldSystemFont(ofSize: 16)
        btnValide.TABtnCornerRadius = 4
        btnValide.TABtnMasksToBounds =  true
        
        //MARK: Header Img Logo
        imgLogo.TAImageLogo = UIImage(named: "\("logo2")")!
        
        config.headerLbl = lblHeader
        config.firstLbl = lblFirst
        config.secondLbl = lblSecond
        config.headerView = viewHeader
        config.logoImage = imgLogo
        config.firstTextfiled = tfFirst
        config.valideBtn = btnValide
        
        return config
    }
    
    //MARK: Set Configurations
    public func setThemeWithMobileConfiguration(config:AuthenticationConfiguration)
    {
        self.setThemsForHeaderView(view: viewHeader, config: config.headerView)
       
        self.setThemsForLable(lbl: lblHeaderLogin, config: config.headerLbl)
        
        self.setThemsForLable(lbl: lblMobile, config: config.firstLbl)
        
        self.setThemsForLable(lbl: lblCountryCode, config: config.secondLbl)
        
        self.setThemsForTextField(textfiled: tfMobileNum, config: config.firstTextfiled)
        
        self.setThemsForHeaderViewImageORLogo(img: imgHeaderLogo, config: config.logoImage)
        
        self.setThemsForButton(btn: btnSendPin, config: config.valideBtn)
    }
    
    //MARK: Custom methods
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        tfMobileNum.delegate = self
        setupToolBar()
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let bundel = Bundle(for: Mobile_Number.self)
        let nib = bundel.loadNibNamed(nibName, owner: self)?.first as? UIView
        return nib
    }
    
    func setupToolBar(){
        let barBtn = UIToolbar()
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneBtnTapped(_ :)))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        barBtn.items = [flexSpace,flexSpace,doneBtn]
        barBtn.sizeToFit()
        tfMobileNum.inputAccessoryView = barBtn
    }
    
    @objc func doneBtnTapped(_ tap:UITapGestureRecognizer){
        viewContainerMobile.endEditing(true)
    }
    
    //MARK: IBAction
    @IBAction func mobileValidations(_ sender:UIButton)
    {
        if myUtility.isPhoneValide(phone: (tfMobileNum.text?.trimmingCharacters(in: .whitespaces))!){
            delegate?.sendPINAction(mobileNumber: (tfMobileNum.text?.trimmingCharacters(in: .whitespaces))!)
        }
        else
        {
            myUtility.showAlter(title: "MOBILE NUMBER", msg: "Invalide Mobile Number", action: "OK", viewController: self.controller!)
        }
    }
}

//MARK: UITextFieldDelegate
extension Mobile_Number:UITextFieldDelegate{
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == tfMobileNum{
            
            if range.location < 10{
                print("range",range.location)
                return true
            }else{
                return false
            }
        }else{
            return true
        }
    }
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

