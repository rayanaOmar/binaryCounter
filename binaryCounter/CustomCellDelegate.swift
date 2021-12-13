//
//  CustomCellDelegate.swift
//  binaryCounter
//
//  Created by admin on 13/12/2021.
//

import UIKit
import Foundation

protocol CustomCellDelegate: AnyObject {
    func plus(value: Int)
    func mins(value: Int)

}
