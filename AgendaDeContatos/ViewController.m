//
//  ViewController.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) adiciona {
    NSString *nome = self.nome.text;
    NSString *endereco = self.endereco.text;
    NSString *site = self.site.text;
    NSString *telefone = self.telefone.text;
    NSString *email = self.email.text;
    NSLog(@"Dados do Contato: %@ %@ %@ %@ %@", nome, endereco, site, telefone, email);
}

@end
