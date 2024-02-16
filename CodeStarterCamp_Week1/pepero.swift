//
//  pepero.swift
//  CodeStarterCamp_Week1
//
//  Created by CHYUN on 2/16/24.
//

class pepero {
    var handleLength: Int
    var body: String
    var topping: String
    var bodyLength: Int
    
    init(handleLength: Int, body: String, topping: String, bodyLength: Int) {
        self.handleLength = handleLength
        self.body = body
        self.topping = topping
        self.bodyLength = bodyLength
    }
}

let basic = pepero (handleLength: 4, body: "***", topping: " ", bodyLength: 10)
let and = pepero (handleLength: 4, body: "***", topping: "&", bodyLength: 12)
let sharp = pepero (handleLength: 6, body: "***", topping: "#", bodyLength: 12)
let nude = pepero (handleLength: 4, body: "|0|", topping: " ", bodyLength: 6)


func makeHandle(handleLength: Int) {
    for _ in 1...handleLength { print(" | | ") }
}

func setTaste(body: String, topping: String) -> String {
    return "\(topping)\(body)\(topping)"
}

func makeBody(bodyLength: Int, taste: String) {
    for _ in 1...bodyLength { print(taste) }
}

func makePepero (menu: pepero) {
    makeBody(bodyLength: menu.bodyLength, taste: setTaste(body: menu.body, topping: menu.topping))
    makeHandle(handleLength: menu.handleLength)
}



