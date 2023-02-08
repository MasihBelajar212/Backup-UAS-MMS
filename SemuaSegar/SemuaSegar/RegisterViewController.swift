//
//  RegisterViewController.swift
//  SemuaSegar
//
//  Created by made on 06/02/23.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {

    @IBOutlet weak var viewRegister: UIView!
    @IBOutlet weak var viewBackground: UIView!
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    var mailArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewBackground.roundCorner([.topLeft,.topRight], radius: 30)
        viewRegister.roundCorner([.topLeft,.topRight,.bottomLeft,.bottomRight], radius: 20)
        // Do any additional setup after loading the view.
        
//        passwordtext.isSecureTextEntry = true
//        verifyPasswordText.isSecureTextEntry = true
    }
    

    @IBAction func btnLoginAkun(_ sender: Any) {
        performSegue(withIdentifier: "ToLoginPage", sender: self)
    }
    
    @IBAction func btnCoreData(_ sender: Any) {
        performSegue(withIdentifier: "ToCoreDataPage", sender: self)
    }
    
    @IBAction func btnRegisterAkun(_ sender: Any) {
        
        let username = userName.text
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let password = passwordtext.text
        let confirmPassword = confirmPassword.text
        
        print(username!)
        print(password!)
        print(confirmPassword!)
        
        let alert = UIAlertController(title: "Error", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: {action in alert.dismiss(animated: true)})
        
        alert.addAction(okAction)
        
        if (username!.isEmpty && password!.isEmpty && confirmPassword!.isEmpty) {
            alert.message = "Data harus diisi semua"
            present(alert, animated: true)
            return
        }
        
        if(username!.isEmpty){
            alert.message = "User Name tidak boleh kosong"
            present(alert, animated: true)
            return
        }
        
        var words = [String]()
        words += username!.components(separatedBy: " ")
        if words.count <= 1 {
            alert.message = "User Name Minimum 2 kata "
            present(alert, animated: true)
            return
        }
        
        if(password!.isEmpty){
            alert.message = "Password tidak boleh kosong"
            present(alert, animated: true)
            return
        }
        
        if(confirmPassword!.isEmpty){
            alert.message = "Confirm Password tidak boleh kosong"
            present(alert, animated: true)
            return
        }
        
        if(password != confirmPassword){
            alert.message = "Silahkan cek kembali password anda"
            present(alert, animated: true)
            return
        }
        
        else{
            print("Data Masuk Core Data")
        }
        
        
        
//        let passwordRegPattern = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$"
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//
//        let appdelegate = UIApplication.shared.delegate as! AppDelegate
//        let context = appdelegate.persistentContainer.viewContext
//        let password = NSEntityDescription.insertNewObject(forEntityName: "UserInfo", into: context)
//        let mail = NSEntityDescription.insertNewObject(forEntityName: "UserInfo", into: context)
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "UserInfo")
//        fetchRequest.returnsObjectsAsFaults = false
//
//        print(mail)
//        print(password)
//
//        do{
//            let results = try context.fetch(fetchRequest)
//
//            for result in results as! [NSManagedObject]{
//                if let mail = result.value(forKey: "mail") as? String{
//                    self.mailArray.append(mail)
//                }
//
//            }
//        }
//        catch{
//            print("error")
//        }
//
//        if(mailArray.contains(mailtext.text!)){
//            let alert = UIAlertController(title: "Account Exists", message: "There is an account with this email address.", preferredStyle: .alert)
//            // add an action (button)
//            //alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
//                    UIAlertAction in
//                    _ = self.navigationController?.popViewController(animated: true)
//                }
//            alert.addAction(okAction)
//            // show the alert
//            self.present(alert, animated: true, completion: nil)
//
//        }else{
//
//            if ((passwordtext.text?.range(of: passwordRegPattern, options: .regularExpression) != nil)&&(mailtext.text?.range(of: emailRegEx, options: .regularExpression) != nil)){
//                if (passwordtext.text == verifyPasswordText.text){
//
//                    // create the alert
//                    let alert = UIAlertController(title: "Registration Successful", message: "You are redirected to the login page", preferredStyle: .alert)
//                    // add an action (button)
//                    //alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                    let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
//                            UIAlertAction in
//                        password.setValue(self.passwordtext.text, forKey: "password")
//                        mail.setValue(self.mailtext.text, forKey: "mail")
//                            _ = self.navigationController?.popViewController(animated: true)
//                        }
//                    alert.addAction(okAction)
//                    // show the alert
//                    self.present(alert, animated: true, completion: nil)
//                }
//                else{
//                    // create the alert
//                    let alert = UIAlertController(title: "Password Error", message: "Passwords do not match", preferredStyle: .alert)
//                    // add an action (button)
//                    //alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                    let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
//                            UIAlertAction in
//                        }
//                    alert.addAction(okAction)
//                    // show the alert
//                    self.present(alert, animated: true, completion: nil)
//                }
//            }
//
//            else{
//                // create the alert
//                let alert = UIAlertController(title: "Invalid Information", message: "Check E-Mail and Password again", preferredStyle: .alert)
//                // add an action (button)
//                //alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
//                        UIAlertAction in
//                    }
//                alert.addAction(okAction)
//                // show the alert
//                self.present(alert, animated: true, completion: nil)
//            }
//        }

        
        
    }
    
}

extension UIView {
    func roundCorner(_ corners: UIRectCorner, radius:CGFloat){
        if #available(iOS 11, *){
            var cornerMask = CACornerMask()
            if(corners.contains(.topLeft)){
                cornerMask.insert(.layerMinXMinYCorner)
            }
            
            if(corners.contains(.topRight)){
                cornerMask.insert(.layerMaxXMinYCorner)
            }
            
            if(corners.contains(.bottomLeft)){
                cornerMask.insert(.layerMinXMaxYCorner)
            }
            
            if(corners.contains(.bottomRight)){
                cornerMask.insert(.layerMaxXMaxYCorner)
            }
            
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = cornerMask
        }
        else {
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
        
        
    }
}

