#import "ESDbWrapperRefCountGuard.h"

#import "ESReadOnlyDbWrapper.h"


@implementation ESDbWrapperRefCountGuard
{
    BOOL _isOwning;
    id<ESReadOnlyDbWrapper> _dbWrapper;
}

@synthesize dbWrapper = _dbWrapper;

-(void)dealloc
{
    if ( self->_isOwning )
    {
        BOOL isCloseSuccessful = [ self->_dbWrapper close ];
        if ( !isCloseSuccessful )
        {
            NSLog( @"[!!!WARNING!!!] ESDbWrapperRefCountGuard - database closing error" );
        }
    }
}

-(id)init
{
    [ self doesNotRecognizeSelector: _cmd ];
    return nil;
}

-(id)initWithRawDbWrapper:( id<ESReadOnlyDbWrapper> )db_
                 isOwning:( BOOL )shouldCloseDatabase_
{
    self = [ super init ];
    if ( nil == self )
    {
        return nil;
    }
    
    self->_dbWrapper = db_;
    self->_isOwning = shouldCloseDatabase_;

    return self;
}



@end
