//
//  StringConstant.h
//  BinaryQuiz
//
//  Created by helen on 10/18/13.
//  Copyright (c) 2013 heleny. All rights reserved.
//

#define UIColorFromHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]


#pragma mark - String

#define kPlayLabel @"Play"
#define kCannotDoBinaryUnderPressure @"YOU CAN'T\nDO BINARY\nUNDER PRESSURE"

#pragma mark - Color

#define kColorGray UIColorFromHex(0xEFEFEF)