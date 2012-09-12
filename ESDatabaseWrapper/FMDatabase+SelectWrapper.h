#import "FMDatabase.h"

@protocol ESQueriedSet;

@interface FMDatabase (SelectWrapper) //<SDbWrapper>

-(id<ESQueriedSet>)select:( NSString* )sql_;

@end
