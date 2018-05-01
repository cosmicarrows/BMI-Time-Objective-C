//
//  Person.h
//  BMITime
//
//  Created by Laurence Wingo on 12/12/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>

//This class Person inherits all the instance variables
//and methods defined by the class NSObject


@interface Person : NSObject


{
    float heightInMeters;
    int weightInKilos;
    
}

@property float heightInMeters;
@property int weightInKilos;

-(float)bodyMassIndex;


@end
