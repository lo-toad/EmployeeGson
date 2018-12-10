//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/model/PersonalAddress.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PersonalAddress")
#ifdef RESTRICT_PersonalAddress
#define INCLUDE_ALL_PersonalAddress 0
#else
#define INCLUDE_ALL_PersonalAddress 1
#endif
#undef RESTRICT_PersonalAddress

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (EmpPersonalAddress_) && (INCLUDE_ALL_PersonalAddress || defined(INCLUDE_EmpPersonalAddress))
#define EmpPersonalAddress_

#define RESTRICT_Address 1
#define INCLUDE_EmpAddress 1
#include "Address.h"

@interface EmpPersonalAddress : EmpAddress

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)getFreeText;

- (NSString *)getPersonalAddressField;

- (void)setPersonalAddressFieldWithNSString:(NSString *)personalAddressField;

@end

J2OBJC_EMPTY_STATIC_INIT(EmpPersonalAddress)

FOUNDATION_EXPORT void EmpPersonalAddress_init(EmpPersonalAddress *self);

FOUNDATION_EXPORT EmpPersonalAddress *new_EmpPersonalAddress_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT EmpPersonalAddress *create_EmpPersonalAddress_init(void);

J2OBJC_TYPE_LITERAL_HEADER(EmpPersonalAddress)

@compatibility_alias ComEmployeeModelPersonalAddress EmpPersonalAddress;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_PersonalAddress")
