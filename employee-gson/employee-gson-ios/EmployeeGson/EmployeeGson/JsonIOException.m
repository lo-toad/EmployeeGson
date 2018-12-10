//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonIOException.java
//

#include "J2ObjC_source.h"
#include "JsonIOException.h"
#include "JsonParseException.h"
#include "java/lang/Throwable.h"

inline jlong GsonJsonIOException_get_serialVersionUID(void);
#define GsonJsonIOException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(GsonJsonIOException, serialVersionUID, jlong)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/JsonIOException.java"


#line 25
@implementation GsonJsonIOException


#line 28
- (instancetype)initWithNSString:(NSString *)msg {
  GsonJsonIOException_initWithNSString_(self, msg);
  return self;
}


#line 32
- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  GsonJsonIOException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}


#line 42
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  GsonJsonIOException_initWithJavaLangThrowable_(self, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[2].selector = @selector(initWithJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = GsonJsonIOException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;", "LJavaLangThrowable;" };
  static const J2ObjcClassInfo _GsonJsonIOException = { "JsonIOException", "com.google.gson", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_GsonJsonIOException;
}

@end


#line 28
void GsonJsonIOException_initWithNSString_(GsonJsonIOException *self, NSString *msg) {
  GsonJsonParseException_initWithNSString_(self, msg);
}


#line 28
GsonJsonIOException *new_GsonJsonIOException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(GsonJsonIOException, initWithNSString_, msg)
}


#line 28
GsonJsonIOException *create_GsonJsonIOException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(GsonJsonIOException, initWithNSString_, msg)
}

void GsonJsonIOException_initWithNSString_withJavaLangThrowable_(GsonJsonIOException *self, NSString *msg, JavaLangThrowable *cause) {
  GsonJsonParseException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}


#line 32
GsonJsonIOException *new_GsonJsonIOException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(GsonJsonIOException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 32
GsonJsonIOException *create_GsonJsonIOException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(GsonJsonIOException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 42
void GsonJsonIOException_initWithJavaLangThrowable_(GsonJsonIOException *self, JavaLangThrowable *cause) {
  GsonJsonParseException_initWithJavaLangThrowable_(self, cause);
}


#line 42
GsonJsonIOException *new_GsonJsonIOException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(GsonJsonIOException, initWithJavaLangThrowable_, cause)
}


#line 42
GsonJsonIOException *create_GsonJsonIOException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(GsonJsonIOException, initWithJavaLangThrowable_, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonJsonIOException)

J2OBJC_NAME_MAPPING(GsonJsonIOException, "com.google.gson", "Gson")
