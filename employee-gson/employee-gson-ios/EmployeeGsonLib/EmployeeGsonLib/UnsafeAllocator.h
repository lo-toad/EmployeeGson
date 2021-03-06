//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/UnsafeAllocator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_UnsafeAllocator")
#ifdef RESTRICT_UnsafeAllocator
#define INCLUDE_ALL_UnsafeAllocator 0
#else
#define INCLUDE_ALL_UnsafeAllocator 1
#endif
#undef RESTRICT_UnsafeAllocator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonUnsafeAllocator_) && (INCLUDE_ALL_UnsafeAllocator || defined(INCLUDE_GsonUnsafeAllocator))
#define GsonUnsafeAllocator_

@class IOSClass;

/*!
 @brief Do sneaky things to allocate objects without invoking their constructors.
 @author Joel Leitch
 @author Jesse Wilson
 */
@interface GsonUnsafeAllocator : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (GsonUnsafeAllocator *)create;

- (id)newInstanceWithIOSClass:(IOSClass *)c OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonUnsafeAllocator)

FOUNDATION_EXPORT void GsonUnsafeAllocator_init(GsonUnsafeAllocator *self);

FOUNDATION_EXPORT GsonUnsafeAllocator *GsonUnsafeAllocator_create(void);

J2OBJC_TYPE_LITERAL_HEADER(GsonUnsafeAllocator)

@compatibility_alias ComGoogleGsonInternalUnsafeAllocator GsonUnsafeAllocator;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_UnsafeAllocator")
