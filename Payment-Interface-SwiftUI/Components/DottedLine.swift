//
//  line.swift
//  Payment-Interface-SwiftUI
//
//  Created by JULIO SAMPAIO on 13/04/26.
//
import SwiftUI

struct DottedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
        return path
    }
}
