//
//  User.swift
//  Babys-Sister
//
//  Created by Vitória Santos on 09/11/21.
//

import Foundation

public struct User: Codable {
    let name: String
    let email: String
    let password: String
    let id: Int
}

public struct CadastroBaba: Codable {
    let name, email, senha, habilidadesBaba, valorBaba, sexoBab, infoBaba: String
    let temExBaba: Int
    let id: String
}
			
