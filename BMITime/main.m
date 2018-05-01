//
//  main.m
//  BMITime
//
//  Created by Laurence Wingo on 12/12/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"




int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Employee *walter = [[Employee alloc] init];
      
        Person *person = [[Person alloc] init];
        
        Person *Laurence = [[Person alloc] init];
        
        Person *Syreeta = [[Person alloc] init];
        
        Person *MakellsInstanceVariable = [[Person alloc] init];
        
        //Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        [Laurence setWeightInKilos:100];
        [Laurence setHeightInMeters:3.6];
        
        [Syreeta setWeightInKilos:95];
        [Syreeta setHeightInMeters:0.8];
        
        [MakellsInstanceVariable setHeightInMeters:5];
        [MakellsInstanceVariable setHeightInMeters:2.2];
        
        [walter setEmployeeID:15];
        
        
        
        
        
        
        //Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"person has a BMI of %f", bmi);
        
        
        float LaurencesBMI = [Laurence bodyMassIndex];
        NSLog(@"Laurence has a BMI of %f", LaurencesBMI);
        
        float SyreetasBMI = [Syreeta bodyMassIndex];
        NSLog(@"Syreeta has a BMI of %f", SyreetasBMI);
        
        float MakellsBMI = [MakellsInstanceVariable bodyMassIndex];
        NSLog(@"Makell has a BMI of %f", MakellsBMI);
        
        float waltersBMI = [walter bodyMassIndex];
        
        NSLog(@"person (%d, %f) has a BMI of %.2f", [person weightInKilos], [person heightInMeters], bmi);
        
        NSLog(@"Employee %d has a BMI of %f", [walter employeeID], waltersBMI);
        
        
        
        //Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            //Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            //Give the instance variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //Put the employee in the employees array
            [employees addObject:person];
            
            
        }
        
        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            
            //create an asset
            Asset *asset = [[Asset alloc] init];
            
            //Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
        
        
        
        
         }
    return 0;
}

         