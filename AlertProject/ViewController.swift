//
//  ViewController.swift
//  AlertProject
//
//  Created by busra guler on 20.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func SignUpClicked(_ sender: Any) {
        
        /*let alert = UIAlertController(title: "Error", message: "Kullanıcı bulunamadı", preferredStyle:UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default) {(UIAlertAction) in
            //tamam butonuna tıklanıldığında ;
            print("uyarı mesajı kapatıldı.")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)*/
        
        if userNameText.text == "" {
            //username boşsa
            makeAlert(titleInput: "Hatalı", messageInput: "Kullanıcı bulunamadı")
            
        }
        else if passwordText.text == ""{
            makeAlert(titleInput: "Hatalı", messageInput: "Lütfen Şifrenizi girin")        }
        else if passwordText.text != passwordAgainText.text{
            makeAlert(titleInput: "Hatalı", messageInput: "Passwordler uyşmamaktadır.")
            
        }
        else{
           makeAlert(titleInput: "Başarılı", messageInput: "Giriş Başarılı")    }
    }

    func makeAlert(titleInput: String,messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle:UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default,handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)     }

}

