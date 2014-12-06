#import <Foundation/Foundation.h>
#import <ESDatabaseWrapper/ESWritableDbWrapper.h>

@interface MockWriteableDb : NSObject<ESWritableDbWrapper>

-(NSArray*)queriesLog;

@end
