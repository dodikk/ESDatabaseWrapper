#import <ESDatabaseWrapper/Mock/MockWriteableDb.h>
#import <ESDatabaseWrapper/ESReadOnlyDbWrapper.h>

@interface MockReadableDb : MockWriteableDb<ESReadOnlyDbWrapper>

-(void*)sqliteHandle;

@end
