#import "FMDatabase.h"

@protocol ESQueriedSet;

@interface FMDatabase (SelectWrapper) //<ESReadOnlyDbWrapper>

-(id<ESQueriedSet>)select:( NSString* )sql_;

@end
