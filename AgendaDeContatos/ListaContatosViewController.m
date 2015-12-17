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

-(id)init {
    self = [super init];
    if(self) {
        UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        self.navigationItem.rightBarButtonItem = botaoForm;
        self.navigationItem.title = @"Contatos";
        
        self.contatos = [NSMutableArray new];
    }
    return self;
}

-(void) exibeFormulario {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *form = [storyboard instantiateViewControllerWithIdentifier:@"Form-Contato"];
    form.contatos = self.contatos;
    
    [self.navigationController pushViewController:form animated:YES];
}

@end
