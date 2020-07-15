//
//  ExpandableWindowView.swift
//  ExpandableWindowView
//
//  Created by Vladislav Smolyanoy on 15.07.20.
//


import SwiftUI

struct ExpandableWindowView: View {
    
    @State var smallMode: Bool
    
    @State var titleText: String
    @State var subtitleText: String
    
    var body: some View {
        VStack {
            VStack {
                VStack(spacing: 5) {
                    HStack {
                        Text("\(titleText)")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding([.top, .leading], 16)
                            .frame(width: 290, alignment: .topLeading)
                        Spacer()
                    }
                    HStack {
                        Text("\(subtitleText)")
                            .padding(.leading, 16)
                            .frame(width: 300, alignment: .topLeading)
                        Spacer()
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .frame(height: smallMode ? 150 : 350)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9625387788, green: 0.9626997113, blue: 0.9625175595, alpha: 1)), Color(#colorLiteral(red: 0.8642047048, green: 0.8859094977, blue: 0.941056788, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .addBorder(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), width: 0.04, cornerRadius: 30)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 15)
            .padding(.horizontal, 20)
            .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .overlay(
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            withAnimation {
                                smallMode.toggle()
                            }
                    }) {
                            Image(systemName: smallMode ? "chevron.right.circle" : "chevron.down.circle")
                            .foregroundColor(Color(#colorLiteral(red: 0.7087361217, green: 0.7088568807, blue: 0.7087201476, alpha: 1)))
                    }
                        .padding(.top, 29.5)
                        .padding(.trailing, 37.5)
                    }
                    Spacer()
                }
            
            )
            Spacer()
        }
    }
}

struct ExpandableWindowView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandableWindowView(smallMode: true, titleText: "This is a Placeholder", subtitleText: "This is a Placeholder")
    }
}

extension View {
    public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        return overlay(RoundedRectangle(cornerRadius: cornerRadius).strokeBorder(content, lineWidth: width))
    }
}
