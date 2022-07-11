//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/11.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in

            Path { path in
                // 100*100 px container, starting point-> wrap the path(하드코딩 안해도 크기 정의)
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                
                let xScale: CGFloat = 0.832 // Scale the shape on the x-axis
                let xOffset = (width * (1.0 - xScale)) / 2.0    // recenter the shape within its geometry
                width *= xScale
                path.move(  // move(to:): moves the drawing cursor within the bounds of a shape as though an imaginary pen or pencil is hovering over the area, waiting to start drawing.
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                        )
                )
                
                // Draw the lines for each point of the shape data to create a rough hexagonal shape
                HexagonParameters.segments.forEach { segment in
                    path.addLine(   // addLine(to:): takes a single point and draws it
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    path.addQuadCurve(  // addQuadCurve(to:control:): draw the Bézier curves for the badge’s corners
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                            ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            // background
            .fill(.linearGradient(
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)  // aspectRatio(_:contentMode:): modifier to the gradient fill
    }
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
