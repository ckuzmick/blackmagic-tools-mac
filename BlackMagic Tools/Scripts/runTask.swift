//
//  runTask.swift
//  BlackMagic Tools
//
//  Created by ck on 12/26/23.
//

import Foundation

class TaskRunner {
    func runTask(command: String, args: Array<String>) {
        if let path = Bundle.main.path(forResource: command, ofType: nil) {
            let process = Process()
            process.executableURL = URL(fileURLWithPath: path)
            process.arguments = args
                
            do {
                try process.run()
            } catch {
                print("ERROR: File Could Not Be Ran")
            }
            
            process.waitUntilExit()
        } else {
            print("ERROR: File Not Found")
        }
    }
}
