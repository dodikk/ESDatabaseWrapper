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

@end
