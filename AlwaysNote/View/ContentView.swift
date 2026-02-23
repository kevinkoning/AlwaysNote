//
//  ContentView.swift
//  AlwaysNote
//
//  Created by Kief on 13/02/2026.
//
//

import SwiftUI

struct ContentView: View {
    static let fontSizeDefault: CGFloat = 17
    @State var fontSize: CGFloat = Self.fontSizeDefault {
        didSet {
            UserDefaults.standard.set(Double(fontSize), forKey: fontSizeKey)
        }
    }
    @State var noteContents: String = "This is a note. You can edit it!"
    @State var showAlert = false
    @State var alertMessage: String = ""
    @Environment(\.verticalSizeClass) var sizeClass
    let fontSizeKey = "nl.avans.alwaysnote.fontsize"
    let fileName = "note.txt"
    
    var body: some View {
        ZStack {
            HeaderView()
            VStack {
                if(sizeClass == .compact) {
                    HStack {
                        TitleView()
                        ButtonView(decreaseAction: {
                            decreaseFontSize() }, increaseAction: {
                                increaseFontSize()
                            }, saveAction: {
                                saveNote()
                            })
                    }
                }
                else {
                    TitleView()
                    ButtonView(decreaseAction: {
                        decreaseFontSize() }, increaseAction: {
                            increaseFontSize()
                        }, saveAction: {
                            saveNote()
                        })
                }
                EditorView(fontSize: $fontSize, noteContents: $noteContents)
                }
            }
            .onAppear { initView() }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text(alertMessage))
            })
        }
        
        func decreaseFontSize() {
            fontSize = max(fontSize - 1, 8)
        }
        
        func increaseFontSize() {
            fontSize = min(fontSize + 1, 32)
        }
        
        func initView() {
            let defaults = UserDefaults.standard
            if defaults.object(forKey: fontSizeKey) != nil {
                fontSize = CGFloat(defaults.double(forKey: fontSizeKey))
            }
            
            do {
                let documentDirectory = try FileManager.default.url(for:
                        .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                let fileUrl = documentDirectory.appendingPathComponent(fileName)
                noteContents = try String(contentsOf: fileUrl, encoding: .utf8)
            } catch {
            }
        }
        
        func saveNote() {
            do {
                let documentDirectory = try FileManager.default.url(for:
                        .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                let fileUrl = documentDirectory.appendingPathComponent(fileName)
                try noteContents.write(to: fileUrl, atomically: true, encoding: .utf8)
            } catch {
            }
            showAlert = true
         }
     }


 #Preview {
     ContentView()
 }
