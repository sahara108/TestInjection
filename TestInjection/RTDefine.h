//
//  RTDefine.h
//  TestInjection
//
//  Created by Nguyen Tuan on 4/2/14.
//  Copyright (c) 2014 anhtuanpk2000. All rights reserved.
//

typedef NS_OPTIONS(NSUInteger, TestEnum) {
    None = 0,
    TestEnumFirst = 1 << 0,
    TestEnumSecond = 1 << 1,
    TestEnumTotal = 1 << 2
};

