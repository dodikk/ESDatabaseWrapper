#import <Foundation/Foundation.h>

#include <vector>

typedef std::vector<float> float_vt;
typedef std::vector<BOOL> BOOL_vt;

@protocol ESReadOnlyDbWrapper_Cpp <NSObject>

-(void)selectFloats:( NSString* )sql_
           toVector:( float_vt& )outResult_;

-(void)selectBooleans:( NSString* )sql_
             toVector:( BOOL_vt& )outResult_;

@end
