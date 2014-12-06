#import "FMDatabase+ESReadonlyDbScheme.h"

@implementation FMDatabase (ESReadonlyDbScheme)

-(NSArray*)indexNamesForTable:( NSString* )tableName
{
    NSString* const queryFormat = @"SELECT [Name] FROM [sqlite_master] WHERE [type] = 'index' AND [tbl_name] = '%@' ORDER BY [Name] ASC";
    NSString* query = [ NSString stringWithFormat: queryFormat, tableName ];
    
    FMResultSet* result = [ self executeQuery: query ];
    
    NSMutableArray* names = [ NSMutableArray new ];
    while ( [ result next ] )
    {
        [ names addObject: [ result stringForColumnIndex: 0 ] ];
    }
    
    return [ NSArray arrayWithArray: names ];
}

@end
