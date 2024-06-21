//
//  LoginError.swift
//  LoginSample
//
//  Created by 남지연 on 6/21/24.
//

import Foundation


enum SignUpError: Error {
    case invalidName
    case invalidPassword
    case invalideEmail
    case invalidPhone
    case networkError(Error)
    case decodingError(Error)
}
