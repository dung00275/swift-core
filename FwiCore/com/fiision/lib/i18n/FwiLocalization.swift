//  Project name: FwiCore
//  File name   : FwiLocalization.swift
//
//  Author      : Phuc Tran
//  Created date: 4/13/15
//  Version     : 1.00
//  --------------------------------------------------------------
//  Copyright © 2012, 2016 Fiision Studio.
//  All Rights Reserved.
//  --------------------------------------------------------------
//
//  Permission is hereby granted, free of charge, to any person obtaining  a  copy
//  of this software and associated documentation files (the "Software"), to  deal
//  in the Software without restriction, including without limitation  the  rights
//  to use, copy, modify, merge,  publish,  distribute,  sublicense,  and/or  sell
//  copies of the Software,  and  to  permit  persons  to  whom  the  Software  is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF  ANY  KIND,  EXPRESS  OR
//  IMPLIED, INCLUDING BUT NOT  LIMITED  TO  THE  WARRANTIES  OF  MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO  EVENT  SHALL  THE
//  AUTHORS OR COPYRIGHT HOLDERS  BE  LIABLE  FOR  ANY  CLAIM,  DAMAGES  OR  OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING  FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN  THE
//  SOFTWARE.
//
//
//  Disclaimer
//  __________
//  Although reasonable care has been taken to  ensure  the  correctness  of  this
//  software, this software should never be used in any application without proper
//  testing. Fiision Studio disclaim  all  liability  and  responsibility  to  any
//  person or entity with respect to any loss or damage caused, or alleged  to  be
//  caused, directly or indirectly, by the use of this software.

import Foundation


public class FwiLocalization {

    // MARK: Class's constructors
    public init() {
        reset()
    }

    // MARK: Class's properties
    public private (set) var bundle: NSBundle?
    public var locale: String? {
        didSet {
            guard let path = NSBundle.mainBundle().pathForResource("Localizable", ofType: "strings", inDirectory: nil, forLocalization: locale) else {
                reset()
                return
            }
            
            NSUserDefaults.standardUserDefaults().setObject([locale!], forKey: "AppleLanguages")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            bundle = NSBundle(path: (path as NSString).stringByDeletingLastPathComponent)
        }
    }

    // MARK: Class's public methods
    func localizedForString(string: String) -> String {
        if let localized = bundle?.localizedStringForKey(string, value: string, table: nil) {
            return localized
        }
        return string
    }

    func reset() {
        let languages = NSBundle.mainBundle().preferredLocalizations
        locale = languages.count > 0 ? languages[0] : "en"
    }
}


// MARK: Singleton
public extension FwiLocalization {
    private static let instance = FwiLocalization()
    
    /** Get singleton network manager. */
    public class func sharedInstance() -> FwiLocalization {
        return instance
    }
}