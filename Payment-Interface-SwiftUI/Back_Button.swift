//
//  Back_Button.swift
//  Payment-Interface-SwiftUI
//
//  Created by PAULO EDUARDO BARBOSA DA SILVA on 07/04/26.
//

import SwiftUI

public struct Back_Button: View {
    public var body: some View {
        VStack {
            Image(systemName: "arrow.left")
        }
        .frame(width: 53, height: 53)
        .background(Color(red: 47/255, green: 57/255, blue: 42/255))
        .foregroundColor(.white)
        .cornerRadius(30)
    }
}
#Preview {
    Back_Button()
}
