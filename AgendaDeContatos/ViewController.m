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

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        
        self.navigationItem.rightBarButtonItem = botao;
        self.navigationItem.title = @"Novo Contato";
        
        self.dao = [ContatoDao contatoDaoInstance];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.contato) {
        self.nome.text = self.contato.nome;
        self.endereco.text = self.contato.endereco;
        self.site.text = self.contato.site;
        self.telefone.text = self.contato.telefone;
        self.email.text = self.contato.email;
    }
}

-(void) adiciona {
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.site = self.site.text;
    contato.telefone = self.telefone.text;
    contato.email = self.email.text;

    [self.dao adicionaContato:contato];
    
    NSLog(@"%@", self.dao.contatos);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
