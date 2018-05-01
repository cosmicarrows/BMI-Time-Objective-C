//
//  Person.m
//  BMITime
//
//  Created by Laurence Wingo on 12/12/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "Person.h"

@implementation Person


@synthesize heightInMeters, weightInKilos;


-(float)bodyMassIndex

{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h + h);
}





@end
