//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/ExclusionStrategy.java
//

#include "ExclusionStrategy.h"
#include "J2ObjC_source.h"

@interface GsonExclusionStrategy : NSObject

@end

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/ExclusionStrategy.java"


#line 96
@implementation GsonExclusionStrategy

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(shouldSkipFieldWithGsonFieldAttributes:);
  methods[1].selector = @selector(shouldSkipClassWithIOSClass:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "shouldSkipField", "LGsonFieldAttributes;", "shouldSkipClass", "LIOSClass;", "(Ljava/lang/Class<*>;)Z" };
  static const J2ObjcClassInfo _GsonExclusionStrategy = { "ExclusionStrategy", "com.google.gson", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_GsonExclusionStrategy;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GsonExclusionStrategy)

J2OBJC_NAME_MAPPING(GsonExclusionStrategy, "com.google.gson", "Gson")
