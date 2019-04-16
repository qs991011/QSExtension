//
//  QSString.swift
//  aliance_dl
//
//  Created by 胜的钱 on 2018/7/5.
//  Copyright © 2018年 GCI. All rights reserved.
//

import Foundation
extension String {
    func getLabHeigh(font:UIFont,width:CGFloat) -> CGFloat {
        
        let size = CGSize(width: width, height: 900)
        let dic = NSDictionary(object: font, forKey: NSAttributedStringKey.font as NSCopying)
        let strSize = (self as NSString).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? [NSAttributedStringKey : AnyObject] , context: nil).size
        return strSize.height
    }
}
