//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Ryker Sieber on 4/11/24.
//

let darkButtonColor = Color(red: 0.2235, green: 0.2313, blue: 0.2509)
let lightButtonColor = Color(red: 0.4588, green: 0.4588, blue: 0.4588)

import SwiftUI
struct PrimaryButtonStyle: ButtonStyle {
    var height: CGFloat = 25
    var width: CGFloat = 25
    var cornerRadius: CGFloat = 15
    var fontSize: CGFloat = 15
    var textSidePadding: CGFloat = 5
    var disabled: Bool = false
    var weight: Font.Weight = .semibold
    var backgroundColor: Color = darkButtonColor
    var textColor: Color = .white
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding([.leading, .trailing], textSidePadding)
            .frame(maxWidth: width, maxHeight: height)
            .cornerRadius(cornerRadius)
            .background(disabled ? .gray : backgroundColor, in: RoundedRectangle(cornerRadius: 5))
            .foregroundColor(textColor)
            .font(.system(size: fontSize, weight: weight, design: .default))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
        }
}

struct SecondaryButtonStyle: ButtonStyle {
    var height: CGFloat = 25
    var width: CGFloat = 25
    var cornerRadius: CGFloat = 15
    var fontSize: CGFloat = 15
    var textSidePadding: CGFloat = 5
    var disabled: Bool = false
    var weight: Font.Weight = .semibold
    var backgroundColor: Color = lightButtonColor
    var textColor: Color = .white
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding([.leading, .trailing], textSidePadding)
            .frame(maxWidth: width, maxHeight: height)
            .cornerRadius(cornerRadius)
            .background(disabled ? .gray : backgroundColor, in: RoundedRectangle(cornerRadius: 5))
            .foregroundColor(textColor)
            .font(.system(size: fontSize, weight: weight, design: .default))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
        }
}

struct YellowButtonStyle: ButtonStyle {
    var height: CGFloat = 25
    var width: CGFloat = 25
    var cornerRadius: CGFloat = 15
    var fontSize: CGFloat = 15
    var textSidePadding: CGFloat = 5
    var disabled: Bool = false
    var weight: Font.Weight = .semibold
    var backgroundColor: Color = Color.yellow
    var textColor: Color = .black
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding([.leading, .trailing], textSidePadding)
            .frame(maxWidth: width, maxHeight: height)
            .cornerRadius(cornerRadius)
            .background(disabled ? .gray : backgroundColor, in: RoundedRectangle(cornerRadius: 5))
            .foregroundColor(textColor)
            .font(.system(size: fontSize, weight: weight, design: .default))
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
}

struct ContentView: View {
    var body: some View {
        Grid{
            GridRow{
                Text("Test")
                    .background(RoundedRectangle(cornerRadius: 5)
                        .size(width: 124, height: 25)
                        .frame(width: 124, height: 25)
                        .foregroundColor(lightButtonColor))
                    .padding(.horizontal, 32.5)
                    .foregroundStyle(Color.white)
            }
            .foregroundColor(lightButtonColor)
            
            GridRow{
                HStack {
                    Button("A") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(YellowButtonStyle())
                    Button("B") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(YellowButtonStyle())
                    Button("C") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(YellowButtonStyle())
                    Button("/") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
            }
            GridRow{
                HStack {
                    
                    Text("Test")
                        .background(RoundedRectangle(cornerRadius: 5)
                            .size(width: 90, height: 25)
                            .frame(width: 90, height: 25)
                            .foregroundColor(darkButtonColor))
                        .padding(.horizontal, 32.5)
                        
                    Button("*") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
            }
            GridRow{
                HStack {
                    Button("7") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("8") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("9") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("-") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
            }
            GridRow{
                HStack {
                    Button("4") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("5") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("6") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("+") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
            }
            GridRow{
                HStack {
                    Button("1") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("2") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("3") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("=") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
            }
            GridRow{
                HStack {
                    Button("0") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button(".") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("x²") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("C") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .buttonStyle(SecondaryButtonStyle())
                    
                }
            }
            
            
        }
        .buttonStyle(PrimaryButtonStyle())
    }
}

#Preview {
    ContentView()
}
