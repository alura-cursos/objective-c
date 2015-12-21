//
//  ListaContatosViewController.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "ListaContatosViewController.h"
#import "ViewController.h"
#import "Contato.h"

@interface ListaContatosViewController ()

@end

@implementation ListaContatosViewController

-(id)init {
    self = [super init];
    if(self) {
        UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        self.navigationItem.rightBarButtonItem = botaoForm;
        self.navigationItem.title = @"Contatos";
        
        self.dao = [ContatoDao new];
    }
    return self;
}

-(void) exibeFormulario {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *form = [storyboard instantiateViewControllerWithIdentifier:@"Form-Contato"];
    form.dao = self.dao;
    
    [self.navigationController pushViewController:form animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dao.contatos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identificador = @"Celula";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:identificador];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identificador];
    }
    
    Contato *contato = self.dao.contatos[indexPath.row];
    cell.textLabel.text = contato.nome;
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

@end
