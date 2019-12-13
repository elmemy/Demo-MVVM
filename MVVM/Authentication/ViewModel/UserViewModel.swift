//
//  LoginViewModel.swift
//  MVVM
//
//  Created by ahmed elmemy on 12/13/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

enum UserValidateState
{
    case Valid
    case Invalid(String)
}

class UserViewModel
{
    //All Variable and let
    private let minUsernameLength = 4
    private let minPasswordLength = 6
    
    //Call Model
    private var user = User()
    
    var username : String
    {
        return user.username
    }
    var password : String
    {
        return user.password
    }
    
    //Make Validation
    func validation()->UserValidateState {
        if user.username.isEmpty || user.password.isEmpty
        {
            return UserValidateState.Invalid("Enter Username and Password Please!")
        }
        if user.username.count <= minUsernameLength
        {
            return UserValidateState.Invalid("Username is min")
        }
        if user.password.count <= minPasswordLength
        {
            return UserValidateState.Invalid("password is min")
        }
        return .Valid
    }
    
}

extension UserViewModel
{
    func updateUsername(username:String){
        user.username = username
    }
    func updatePassword(password:String){
        user.password = password
    }
}

