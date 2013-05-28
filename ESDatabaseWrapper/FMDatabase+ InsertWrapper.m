#import "FMDatabase+InsertWrapper.h"

@implementation FMDatabase (Wrapper)

-(BOOL)insert:( NSString* )sql_
        error:( NSError** )error_
{
    return [ self update: sql_ withErrorAndBindings: error_ ];
}

-(BOOL)update:( NSString* )sql_
        error:( NSError** )error_
{
    return [ self update: sql_ withErrorAndBindings: error_ ];
}

-(BOOL)createTable:( NSString* )sql_
             error:( NSError** )error_
{
    return [ self update: sql_ withErrorAndBindings: error_ ];
}

-(BOOL)sqlDelete:( NSString* )sql_
           error:( NSError** )error_
{
    return [ self update: sql_ withErrorAndBindings: error_ ];
}

-(void)enableDiagnostics
{
    //self.traceExecution = YES;
    self.logsErrors     = YES;
}

@end
