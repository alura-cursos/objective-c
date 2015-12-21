//
//  ViewController.h
//  AgendaDeContatos
//
//  Created by Joviane Jardim on 12/17/15.
//  Copyright © 2015 Alura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@interface ViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *site;
@property IBOutlet UITextField *email;

@property ContatoDao *dao;
@property Contato *contato;

@end

