#import "FMDatabase+SelectWrapper.h"
#import "FMDatabaseAdditions.h"

@implementation FMDatabase (SelectWrapper)

-(id<ESQueriedSet>)select:( NSString* )sql_
{
   FMResultSet* result_ = [ self executeQuery: sql_ ];
   return (id<ESQueriedSet>)result_;
}

-(double)selectDoubleScalar:( NSString* )sql_
{
    return [ self doubleForQuery: sql_ ]; 
}

-(NSInteger)selectIntScalar:( NSString* )sql_
{
    return [ self intForQuery: sql_ ];
}

-(NSString*)selectStringScalar:( NSString* )sql_
{
    return [ self stringForQuery: sql_ ];
}

-(BOOL)selectBooleanScalar:( NSString* )sql_
{
    return [ self boolForQuery: sql_ ];
}

-(BOOL)columnExists:( NSString* )columnName_
            inTable:( NSString* )tableName_
{
    if ( ![ self tableExists: tableName_ ] )
    {
        return NO;
    }
    
    return [ self columnExists: tableName_
                    columnName: columnName_ ];
}

-(NSDate*)selectDateScalar:( NSString* )sql_
            usingFormatter:( NSDateFormatter* )df_
                threadSafe:( BOOL )isThreadSafe_
{
    NSString* dateStr_ = [ self selectStringScalar: sql_ ];
    if ( nil == dateStr_ )
    {
        return nil;
    }
    
    if ( isThreadSafe_ )
    {
        @synchronized (df_)
        {
            return [ df_ dateFromString: dateStr_ ];
        }
    }
    else
    {
        return [ df_ dateFromString: dateStr_ ];
    }
}

@end
