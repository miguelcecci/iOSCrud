//
//  CreateToolViewController.swift
//  BasiCrudIOS
//
//  Created by Miguel Angelo Cecci de Castro Neto on 21/03/19.
//  Copyright © 2019 Miguel Angelo Cecci de Castro Neto. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class CreateToolViewController: UIViewController {
    
    @IBOutlet var nameField:UITextField!
    @IBOutlet var typeField:UITextField!
    @IBOutlet var versionField:UITextField!
    
    @IBAction func postNewTool(){
        if(nameField == nil || typeField == nil || versionField == nil){
            return
        }
        
        let parameters = [
            "nome":nameField.text!,
            "tipo":typeField.text!,
            "versao":versionField.text!
        ]
        
        Alamofire.request(AppConfiguration.defaultUrl+"/api/ferramentas", method: .post, parameters:
            parameters).responseString{response in
                print(response)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backToPreviousScreen(){
        dismiss(animated: true, completion: nil)
    }
}
