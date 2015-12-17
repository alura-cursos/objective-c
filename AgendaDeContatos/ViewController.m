//
//  ViewController.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "ViewController.h"
#import "Contato.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) adiciona {
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.site = self.site.text;
    contato.telefone = self.telefone.text;
    contato.email = self.email.text;
    NSLog(@"Dados do Contato: %@ %@ %@ %@ %@", contato.nome, contato.endereco, contato.site, contato.telefone, contato.email);
}

@end
