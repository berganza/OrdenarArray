//
//  ViewController.m
//  OrdenarArray
//
//  Created by LLBER on 29/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    NSArray * diccionario = [NSArray arrayWithObjects: @"Rosa", @"Libro", @"Manzana", @"Pez", @"Saludo", @"Cabeza", @"Ogro", @"6", nil];
    
    NSArray * sortedPalabras = [diccionario sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSString * convertirEnString = [NSString stringWithFormat:@"%@", sortedPalabras];
    
    _salidaLabel.text = convertirEnString;
    
    _salidaTextView.text = convertirEnString;
    
    NSLog(@"%@", sortedPalabras);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
