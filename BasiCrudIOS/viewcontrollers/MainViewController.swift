//
//  MainViewController.swift
//  BasiCrudIOS
//
//  Created by Miguel Angelo Cecci de Castro Neto on 21/03/19.
//  Copyright © 2019 Miguel Angelo Cecci de Castro Neto. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class MainViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tableView:UITableView!
    
    var tools = [Tool(id:-1, nome:"Loading ...", tipo:"-", versao:"-")];
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(tools.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = tools[indexPath.row].nome
        
        return(cell)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.retrieveData()
    }
    
    func retrieveData(){
        print(AppConfiguration.defaultUrl+"/api/feramentas")
        Alamofire.request(AppConfiguration.defaultUrl+"/api/ferramentas").responseJSON{ response in
            guard let respostas = response.result.value as? [[String:Any]] else{
                print("erro")
                return
            }
            print(respostas)
            
            self.tools.removeAll()
            for resposta in respostas {
                self.tools.append(Tool(id:resposta["id"] as! Int, nome:resposta["nome"] as! String, tipo:resposta["tipo"] as! String, versao:resposta["versao"] as! String))
                print(resposta["nome"] as! String)
            }
            self.tableView.reloadData()
        }
    }
}
