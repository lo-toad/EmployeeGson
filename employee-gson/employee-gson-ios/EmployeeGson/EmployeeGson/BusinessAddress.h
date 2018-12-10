//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/model/BusinessAddress.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BusinessAddress")
#ifdef RESTRICT_BusinessAddress
#define INCLUDE_ALL_BusinessAddress 0
#else
#define INCLUDE_ALL_BusinessAddress 1
#endif
#undef RESTRICT_BusinessAddress

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (EmpBusinessAddress_) && (INCLUDE_ALL_BusinessAddress || defined(INCLUDE_EmpBusinessAddress))
#define EmpBusinessAddress_

#define RESTRICT_Address 1
#define INCLUDE_EmpAddress 1
#include "Address.h"

@class JavaLangInteger;

@interface EmpBusinessAddress : EmpAddress

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)getBusinessAddressField;

- (JavaLangInteger *)getFreeText;

- (void)setBusinessAddressFieldWithNSString:(NSString *)businessAddressField;

@end

J2OBJC_EMPTY_STATIC_INIT(EmpBusinessAddress)

FOUNDATION_EXPORT void EmpBusinessAddress_init(EmpBusinessAddress *self);

FOUNDATION_EXPORT EmpBusinessAddress *new_EmpBusinessAddress_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EmpBusinessAddress *create_EmpBusinessAddress_init(void);

J2OBJC_TYPE_LITERAL_HEADER(EmpBusinessAddress)

@compatibility_alias ComEmployeeModelBusinessAddress EmpBusinessAddress;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_BusinessAddress")
