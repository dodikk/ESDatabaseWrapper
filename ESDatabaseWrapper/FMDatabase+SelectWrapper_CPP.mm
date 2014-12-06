#import "FMDatabase+SelectWrapper_CPP.h"
#import "FMDatabase+SelectWrapper.h"

#import "ESQueriedSet.h"

@implementation FMDatabase (SelectWrapper_CPP)

-(void)selectFloats:( NSString* )sql_
           toVector:( float_vt& )outResult_
{
    outResult_.clear();
    id<ESQueriedSet> dataSet_ = [ self select: sql_ ];
    
    double item_  = 0.0;
    float  fItem_ = 0.f;
    while ( [ dataSet_ next ] )
    {
        item_ = [ dataSet_ doubleForColumnIndex: 0 ];
        fItem_ = static_cast<float>( item_ );
        
        outResult_.push_back( fItem_ );
    }
}

-(void)selectBooleans:( NSString* )sql_
             toVector:( BOOL_vt& )outResult_
{
    outResult_.clear();
    id<ESQueriedSet> dataSet_ = [ self select: sql_ ];
    
    BOOL item_  = NO;
    while ( [ dataSet_ next ] )
    {
        item_ = [ dataSet_ boolForColumnIndex: 0 ];
        outResult_.push_back( item_ );
    }
}


@end
