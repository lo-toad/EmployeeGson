//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonDeserializationContext.java
//

#include "J2ObjC_source.h"
#include "JsonDeserializationContext.h"

@interface GsonJsonDeserializationContext : NSObject

@end

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/JsonDeserializationContext.java"


#line 29
@implementation GsonJsonDeserializationContext

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(deserializeWithGsonJsonElement:withJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "deserialize", "LGsonJsonElement;LJavaLangReflectType;", "LGsonJsonParseException;", "<T:Ljava/lang/Object;>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)TT;" };
  static const J2ObjcClassInfo _GsonJsonDeserializationContext = { "JsonDeserializationContext", "com.google.gson", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_GsonJsonDeserializationContext;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GsonJsonDeserializationContext)

J2OBJC_NAME_MAPPING(GsonJsonDeserializationContext, "com.google.gson", "Gson")
