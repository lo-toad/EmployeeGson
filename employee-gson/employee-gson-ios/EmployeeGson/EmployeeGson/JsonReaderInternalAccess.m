//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/JsonReaderInternalAccess.java
//

#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonReaderInternalAccess.h"

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/google/gson/internal/JsonReaderInternalAccess.java"

GsonJsonReaderInternalAccess *GsonJsonReaderInternalAccess_INSTANCE;


#line 25
@implementation GsonJsonReaderInternalAccess

+ (GsonJsonReaderInternalAccess *)INSTANCE {
  return GsonJsonReaderInternalAccess_INSTANCE;
}

+ (void)setINSTANCE:(GsonJsonReaderInternalAccess *)value {
  GsonJsonReaderInternalAccess_INSTANCE = value;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 25
- (instancetype)init {
  GsonJsonReaderInternalAccess_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)promoteNameToValueWithGsonJsonReader:(GsonJsonReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(promoteNameToValueWithGsonJsonReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LGsonJsonReaderInternalAccess;", .constantValue.asLong = 0, 0x9, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "promoteNameToValue", "LGsonJsonReader;", "LJavaIoIOException;", &GsonJsonReaderInternalAccess_INSTANCE };
  static const J2ObjcClassInfo _GsonJsonReaderInternalAccess = { "JsonReaderInternalAccess", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x401, 2, 1, -1, -1, -1, -1, -1 };
  return &_GsonJsonReaderInternalAccess;
}

@end


#line 25
void GsonJsonReaderInternalAccess_init(GsonJsonReaderInternalAccess *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonJsonReaderInternalAccess)

J2OBJC_NAME_MAPPING(GsonJsonReaderInternalAccess, "com.google.gson.internal", "Gson")
