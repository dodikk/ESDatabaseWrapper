#import <Foundation/Foundation.h>

@protocol ESTransactionsWrapper <NSObject>

-(BOOL)beginTransaction;
-(BOOL)commitTransaction;
-(BOOL)rollbackTransaction;

@end
