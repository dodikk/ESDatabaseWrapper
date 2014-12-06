#import <FMDatabase.h>
#import <ESDatabaseWrapper/ESReadOnlyDbWrapper_Cpp.h>

@interface FMDatabase (SelectWrapper_CPP) //<ESReadOnlyDbWrapper_Cpp>

-(void)selectFloats:( NSString* )sql_
           toVector:( float_vt& )outResult_;

-(void)selectBooleans:( NSString* )sql_
             toVector:( BOOL_vt& )outResult_;

@end
