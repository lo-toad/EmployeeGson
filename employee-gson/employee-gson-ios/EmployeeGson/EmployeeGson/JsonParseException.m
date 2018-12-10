//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonParseException.java
//

#include "J2ObjC_source.h"
#include "JsonParseException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/JsonParseException.java"


#line 32
@implementation GsonJsonParseException

+ (jlong)serialVersionUID {
  return GsonJsonParseException_serialVersionUID;
}


#line 41
- (instancetype)initWithNSString:(NSString *)msg {
  GsonJsonParseException_initWithNSString_(self, msg);
  return self;
}


#line 51
- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  GsonJsonParseException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
  return self;
}


#line 61
- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause {
  GsonJsonParseException_initWithJavaLangThrowable_(self, cause);
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
    { "serialVersionUID", "J", .constantValue.asLong = GsonJsonParseException_serialVersionUID, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;", "LJavaLangThrowable;" };
  static const J2ObjcClassInfo _GsonJsonParseException = { "JsonParseException", "com.google.gson", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_GsonJsonParseException;
}

@end


#line 41
void GsonJsonParseException_initWithNSString_(GsonJsonParseException *self, NSString *msg) {
  JavaLangRuntimeException_initWithNSString_(self, msg);
}


#line 41
GsonJsonParseException *new_GsonJsonParseException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(GsonJsonParseException, initWithNSString_, msg)
}


#line 41
GsonJsonParseException *create_GsonJsonParseException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(GsonJsonParseException, initWithNSString_, msg)
}


#line 51
void GsonJsonParseException_initWithNSString_withJavaLangThrowable_(GsonJsonParseException *self, NSString *msg, JavaLangThrowable *cause) {
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, msg, cause);
}


#line 51
GsonJsonParseException *new_GsonJsonParseException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(GsonJsonParseException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 51
GsonJsonParseException *create_GsonJsonParseException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(GsonJsonParseException, initWithNSString_withJavaLangThrowable_, msg, cause)
}


#line 61
void GsonJsonParseException_initWithJavaLangThrowable_(GsonJsonParseException *self, JavaLangThrowable *cause) {
  JavaLangRuntimeException_initWithJavaLangThrowable_(self, cause);
}


#line 61
GsonJsonParseException *new_GsonJsonParseException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(GsonJsonParseException, initWithJavaLangThrowable_, cause)
}


#line 61
GsonJsonParseException *create_GsonJsonParseException_initWithJavaLangThrowable_(JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(GsonJsonParseException, initWithJavaLangThrowable_, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonJsonParseException)

J2OBJC_NAME_MAPPING(GsonJsonParseException, "com.google.gson", "Gson")
