//
//  AppConfiguration.swift
//  BasiCrudIOS
//
//  Created by Miguel Angelo Cecci de Castro Neto on 21/03/19.
//  Copyright © 2019 Miguel Angelo Cecci de Castro Neto. All rights reserved.
//

import Foundation

struct AppConfiguration {
    static let port:String = "7000"
    static let address:String = "localhost"
    static let defaultUrl:String = "http://"+AppConfiguration.address+":"+AppConfiguration.port
}
