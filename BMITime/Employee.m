//
//  Employee.m
//  BMITime
//
//  Created by Laurence Wingo on 12/12/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

-(void)addAssetsObject:(Asset *)a
{
    //Is assets nil?
    if (!assets) {
        //create the array
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}


-(unsigned int)valueOfAssets
{
    //Sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}
-(float)bodyMassIndex
{
    return 19.0;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
