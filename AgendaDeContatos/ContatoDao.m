//
//  ContatoDao.m
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/21/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import "ContatoDao.h"

@implementation ContatoDao

- (id)init {
    self = [super init];
    if (self) {
        self.contatos = [NSMutableArray new];
    }
    return self;
}

@end
