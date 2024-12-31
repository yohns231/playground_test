//
//  Func_Module.swift
//  
//
//  Created by 고요한 on 12/31/24.
//

import Foundation

func fullName(givenName:String,MiddleName:String? = nil, familyName: String) -> String {
    var fullName = familyName
    if let MiddleName {fullName += " \(MiddleName)"}
    fullName += " \(givenName)"
    return fullName
}

/// 함수에 대한 설명
/// - Parameters :
///  - a : Int type
///  - b: Int type
/// - Returns : 아무것도 아님dddd
public func plusss(_ a:Int,_ b:Int){
    /// test sentence
    print(a+b)
}

/// runFunction Description
/// - Parameters : None
/// - Returns :None
public func runFunction(){
    let myFullName = fullName(givenName: "yohan", familyName: "Ko")
    print(myFullName)
}


