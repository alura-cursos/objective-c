//
//  ListaContatosViewController.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "ListaContatosViewController.h"
#import "ViewController.h"

@interface ListaContatosViewController ()

@end

@implementation ListaContatosViewController

-(ListaContatosViewController *)init {
    self = [super init];
    if(self) {
        UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        self.navigationItem.rightBarButtonItem = botaoForm;
    }
    return self;
}

-(void) exibeFormulario {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *form = [storyboard instantiateViewControllerWithIdentifier:@"Form-Contato"];
    [self.navigationController pushViewController:form animated:YES];
}

@end
