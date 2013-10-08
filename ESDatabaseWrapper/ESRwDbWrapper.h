#import <ESDatabaseWrapper/ESReadOnlyDbWrapper.h>
#import <ESDatabaseWrapper/ESWritableDbWrapper.h>
#import <ESDatabaseWrapper/ESTransactionsWrapper.h>

@protocol ESRwDbWrapper <ESReadOnlyDbWrapper, ESWritableDbWrapper, ESTransactionsWrapper>
@end
