#import <ESDatabaseWrapper/ESReadOnlyDbWrapper.h>
#import <ESDatabaseWrapper/ESWritableDbWrapper.h>

@protocol ESRwDbWrapper <ESReadOnlyDbWrapper, ESWritableDbWrapper>
@end
