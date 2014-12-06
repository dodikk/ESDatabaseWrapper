#import <Foundation/Foundation.h>

@protocol ESReadOnlyDbWrapper;


@interface ESDbWrapperRefCountGuard : NSObject

@property ( nonatomic, readonly ) id<ESReadOnlyDbWrapper> dbWrapper;

-(id)initWithRawDbWrapper:( id<ESReadOnlyDbWrapper> )db_
                 isOwning:( BOOL )shouldCloseDatabase_;

@end
