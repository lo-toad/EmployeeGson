//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonSerializationContext.java
//

#include "J2ObjC_source.h"
#include "JsonSerializationContext.h"

@interface GsonJsonSerializationContext : NSObject

@end

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/JsonSerializationContext.java"


#line 28
@implementation GsonJsonSerializationContext

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LGsonJsonElement;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonElement;", 0x401, 0, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(serializeWithId:);
  methods[1].selector = @selector(serializeWithId:withJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "serialize", "LNSObject;", "LNSObject;LJavaLangReflectType;" };
  static const J2ObjcClassInfo _GsonJsonSerializationContext = { "JsonSerializationContext", "com.google.gson", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_GsonJsonSerializationContext;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GsonJsonSerializationContext)

J2OBJC_NAME_MAPPING(GsonJsonSerializationContext, "com.google.gson", "Gson")
