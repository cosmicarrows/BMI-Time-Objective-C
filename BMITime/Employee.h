//
//  Employee.h
//  BMITime
//
//  Created by Laurence Wingo on 12/12/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
