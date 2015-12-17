//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "Contato.h"

@implementation Contato

- (NSString *)description {
    NSString *dados = [NSString stringWithFormat:@"Nome: %@ Endereço: %@ E-mail: %@ Site: %@ Telefone: %@", self.nome, self.endereco, self.email, self.site, self.telefone];
    return dados;
}

@end
