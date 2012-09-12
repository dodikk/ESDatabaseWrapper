#import "MockReadableDb.h"

@implementation MockReadableDb

-(id<ESQueriedSet>)select:( NSString* )sql_
{
    NSMutableArray* queriesLog_ = objc_msgSend( self, @selector(mQueriesLog) );
    [ queriesLog_ addObject: sql_ ];

    return nil;
}

-(double)selectDoubleScalar:( NSString* )sql_
{
    [ self select: sql_ ];
    return 0.f;
}

-(NSInteger)selectIntScalar:( NSString* )sql_
{
    [ self select: sql_ ];
    return 1;
}

-(NSString*)selectStringScalar:( NSString* )sql_
{
    [ self select: sql_ ];

    if ( [ sql_ rangeOfString: @"SELECT LastUpdateDate FROM TimestampsByTableName WHERE TableName = " ].location != NSNotFound )
    {
        return @"2004-01-01 02:34:56";
    }

    return @"";
}

-(BOOL)selectBooleanScalar:( NSString* )sql_
{
    [ self select: sql_ ];
    return YES;    
}

-(NSString*)databasePath
{
    return nil;
}

-(void*)sqliteHandle
{
    return NULL;
}

-(BOOL)tableExists:(NSString*)tableName_
{
    return YES;
}

@end
