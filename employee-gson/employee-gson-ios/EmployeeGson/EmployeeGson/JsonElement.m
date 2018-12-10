//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonElement.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonArray.h"
#include "JsonElement.h"
#include "JsonNull.h"
#include "JsonObject.h"
#include "JsonPrimitive.h"
#include "JsonWriter.h"
#include "Streams.h"
#include "java/io/IOException.h"
#include "java/io/StringWriter.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/JsonElement.java"


#line 33
@implementation GsonJsonElement

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 33
- (instancetype)init {
  GsonJsonElement_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 38
- (GsonJsonElement *)deepCopy {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}


#line 45
- (jboolean)isJsonArray {
  return [self isKindOfClass:[GsonJsonArray class]];
}


#line 54
- (jboolean)isJsonObject {
  return [self isKindOfClass:[GsonJsonObject class]];
}


#line 63
- (jboolean)isJsonPrimitive {
  return [self isKindOfClass:[GsonJsonPrimitive class]];
}


#line 73
- (jboolean)isJsonNull {
  return [self isKindOfClass:[GsonJsonNull class]];
}


#line 86
- (GsonJsonObject *)getAsJsonObject {
  if ([self isJsonObject]) {
    return (GsonJsonObject *) cast_chk(self, [GsonJsonObject class]);
  }
  @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@", @"Not a JSON Object: ", self));
}


#line 102
- (GsonJsonArray *)getAsJsonArray {
  if ([self isJsonArray]) {
    return (GsonJsonArray *) cast_chk(self, [GsonJsonArray class]);
  }
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"This is not a JSON Array.");
}


#line 118
- (GsonJsonPrimitive *)getAsJsonPrimitive {
  if ([self isJsonPrimitive]) {
    return (GsonJsonPrimitive *) cast_chk(self, [GsonJsonPrimitive class]);
  }
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"This is not a JSON Primitive.");
}


#line 135
- (GsonJsonNull *)getAsJsonNull {
  if ([self isJsonNull]) {
    return (GsonJsonNull *) cast_chk(self, [GsonJsonNull class]);
  }
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"This is not a JSON Null.");
}


#line 151
- (jboolean)getAsBoolean {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 164
- (JavaLangBoolean *)getAsBooleanWrapper {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 177
- (NSNumber *)getAsNumber {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 190
- (NSString *)getAsString {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 203
- (jdouble)getAsDouble {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 216
- (jfloat)getAsFloat {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 229
- (jlong)getAsLong {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 242
- (jint)getAsInt {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 256
- (jbyte)getAsByte {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 270
- (jchar)getAsCharacter {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 284
- (JavaMathBigDecimal *)getAsBigDecimal {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 298
- (JavaMathBigInteger *)getAsBigInteger {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 311
- (jshort)getAsShort {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_([[self java_getClass] getSimpleName]);
}


#line 318
- (NSString *)description {
  
#line 320
  @try {
    JavaIoStringWriter *stringWriter = new_JavaIoStringWriter_init();
    GsonJsonWriter *jsonWriter = new_GsonJsonWriter_initWithJavaIoWriter_(stringWriter);
    [jsonWriter setLenientWithBoolean:true];
    GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(self, jsonWriter);
    return [stringWriter description];
  }
  @catch (
#line 326
  JavaIoIOException *e) {
    @throw new_JavaLangAssertionError_initWithId_(e);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonElement;", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonArray;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonPrimitive;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonNull;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangBoolean;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigDecimal;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "S", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(deepCopy);
  methods[2].selector = @selector(isJsonArray);
  methods[3].selector = @selector(isJsonObject);
  methods[4].selector = @selector(isJsonPrimitive);
  methods[5].selector = @selector(isJsonNull);
  methods[6].selector = @selector(getAsJsonObject);
  methods[7].selector = @selector(getAsJsonArray);
  methods[8].selector = @selector(getAsJsonPrimitive);
  methods[9].selector = @selector(getAsJsonNull);
  methods[10].selector = @selector(getAsBoolean);
  methods[11].selector = @selector(getAsBooleanWrapper);
  methods[12].selector = @selector(getAsNumber);
  methods[13].selector = @selector(getAsString);
  methods[14].selector = @selector(getAsDouble);
  methods[15].selector = @selector(getAsFloat);
  methods[16].selector = @selector(getAsLong);
  methods[17].selector = @selector(getAsInt);
  methods[18].selector = @selector(getAsByte);
  methods[19].selector = @selector(getAsCharacter);
  methods[20].selector = @selector(getAsBigDecimal);
  methods[21].selector = @selector(getAsBigInteger);
  methods[22].selector = @selector(getAsShort);
  methods[23].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "toString" };
  static const J2ObjcClassInfo _GsonJsonElement = { "JsonElement", "com.google.gson", ptrTable, methods, NULL, 7, 0x401, 24, 0, -1, -1, -1, -1, -1 };
  return &_GsonJsonElement;
}

@end


#line 33
void GsonJsonElement_init(GsonJsonElement *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonJsonElement)

J2OBJC_NAME_MAPPING(GsonJsonElement, "com.google.gson", "Gson")
