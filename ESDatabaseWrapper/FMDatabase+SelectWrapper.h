#import "FMDatabase.h"

@protocol ESQueriedSet;

@interface FMDatabase (SelectWrapper) //<ESReadOnlyDbWrapper>

-(id<ESQueriedSet>)select:( NSString* )sql_;
-(BOOL)columnExists:( NSString* )columnName_
            inTable:( NSString* )tableName_;

@end
