#import "FMDatabase+SelectWrapper.h"
#import "FMDatabaseAdditions.h"

@implementation FMDatabase (SelectWrapper)

-(BOOL)isOpen
{
    return [ self goodConnection ];
}

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

-(NSArray*)selectStringArray:( NSString* )sql
{
    FMResultSet* dataset = [ self executeQuery: sql ];
    if ( nil == dataset )
    {
        return nil;
    }
    
    NSMutableArray* result = [ NSMutableArray new ];
    while ( [ dataset next ] )
    {
        NSString* stringItem = [ dataset stringForColumnIndex: 0 ];
        [ result addObject: stringItem ];
    }
    
    return [ NSArray arrayWithArray: result ];
}

@end
