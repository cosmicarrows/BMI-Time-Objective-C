//
//  Asset.m
//  BMITime
//
//  Created by Laurence Wingo on 12/13/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label;
@synthesize resaleValue;
-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
