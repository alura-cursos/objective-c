//
//  ContatoDao.h
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/21/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contato.h"

@interface ContatoDao : NSObject

@property NSMutableArray *contatos;

-(void) adicionaContato: (Contato *) contato;
-(NSInteger) total;
-(Contato *) contatoDoIndice: (NSInteger) indice;
-(NSInteger) indiceDoContato: (Contato *) contato;
+(ContatoDao *) contatoDaoInstance;
-(void) removeContato: (Contato *) contato;

@end
