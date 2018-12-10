//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/internal/Streams.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonIOException.h"
#include "JsonNull.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "MalformedJsonException.h"
#include "Streams.h"
#include "TypeAdapter.h"
#include "TypeAdapters.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#include "java/io/Writer.h"
#include "java/lang/Appendable.h"
#include "java/lang/CharSequence.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/stream/IntStream.h"

@class GsonStreams_AppendableWriter_CurrentWrite;

#pragma clang diagnostic ignored "-Wprotocol"

@interface GsonStreams ()

- (instancetype)init;

@end

__attribute__((unused)) static void GsonStreams_init(GsonStreams *self);

__attribute__((unused)) static GsonStreams *new_GsonStreams_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonStreams *create_GsonStreams_init(void);

/*!
 @brief Adapts an <code>Appendable</code> so it can be passed anywhere a <code>Writer</code>
  is used.
 */
@interface GsonStreams_AppendableWriter : JavaIoWriter {
 @public
  id<JavaLangAppendable> appendable_;
  GsonStreams_AppendableWriter_CurrentWrite *currentWrite_;
}

- (instancetype)initWithJavaLangAppendable:(id<JavaLangAppendable>)appendable;

- (void)writeWithCharArray:(IOSCharArray *)chars
                   withInt:(jint)offset
                   withInt:(jint)length;

- (void)writeWithInt:(jint)i;

- (void)flush;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonStreams_AppendableWriter)

J2OBJC_FIELD_SETTER(GsonStreams_AppendableWriter, appendable_, id<JavaLangAppendable>)
J2OBJC_FIELD_SETTER(GsonStreams_AppendableWriter, currentWrite_, GsonStreams_AppendableWriter_CurrentWrite *)

__attribute__((unused)) static void GsonStreams_AppendableWriter_initWithJavaLangAppendable_(GsonStreams_AppendableWriter *self, id<JavaLangAppendable> appendable);

__attribute__((unused)) static GsonStreams_AppendableWriter *new_GsonStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonStreams_AppendableWriter *create_GsonStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable);

J2OBJC_TYPE_LITERAL_HEADER(GsonStreams_AppendableWriter)

/*!
 @brief A mutable char sequence pointing at a single char[].
 */
@interface GsonStreams_AppendableWriter_CurrentWrite : NSObject < JavaLangCharSequence > {
 @public
  IOSCharArray *chars_;
}

- (instancetype)init;

- (jint)java_length;

- (jchar)charAtWithInt:(jint)i;

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonStreams_AppendableWriter_CurrentWrite)

J2OBJC_FIELD_SETTER(GsonStreams_AppendableWriter_CurrentWrite, chars_, IOSCharArray *)

__attribute__((unused)) static void GsonStreams_AppendableWriter_CurrentWrite_init(GsonStreams_AppendableWriter_CurrentWrite *self);

__attribute__((unused)) static GsonStreams_AppendableWriter_CurrentWrite *new_GsonStreams_AppendableWriter_CurrentWrite_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonStreams_AppendableWriter_CurrentWrite *create_GsonStreams_AppendableWriter_CurrentWrite_init(void);

J2OBJC_TYPE_LITERAL_HEADER(GsonStreams_AppendableWriter_CurrentWrite)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/Streams.java"


#line 35
@implementation GsonStreams

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 36
- (instancetype)init {
  GsonStreams_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 43
+ (GsonJsonElement *)parseWithGsonJsonReader:(GsonJsonReader *)reader {
  return GsonStreams_parseWithGsonJsonReader_(reader);
}


#line 71
+ (void)writeWithGsonJsonElement:(GsonJsonElement *)element
              withGsonJsonWriter:(GsonJsonWriter *)writer {
  GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(element, writer);
}


#line 75
+ (JavaIoWriter *)writerForAppendableWithJavaLangAppendable:(id<JavaLangAppendable>)appendable {
  return GsonStreams_writerForAppendableWithJavaLangAppendable_(appendable);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonJsonElement;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 4, 5, -1, -1, -1 },
    { NULL, "LJavaIoWriter;", 0x9, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonElement:withGsonJsonWriter:);
  methods[3].selector = @selector(writerForAppendableWithJavaLangAppendable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "parse", "LGsonJsonReader;", "LGsonJsonParseException;", "write", "LGsonJsonElement;LGsonJsonWriter;", "LJavaIoIOException;", "writerForAppendable", "LJavaLangAppendable;", "LGsonStreams_AppendableWriter;" };
  static const J2ObjcClassInfo _GsonStreams = { "Streams", "com.google.gson.internal", ptrTable, methods, NULL, 7, 0x11, 4, 0, -1, 8, -1, -1, -1 };
  return &_GsonStreams;
}

@end


#line 36
void GsonStreams_init(GsonStreams *self) {
  NSObject_init(self);
  
#line 37
  @throw new_JavaLangUnsupportedOperationException_init();
}


#line 36
GsonStreams *new_GsonStreams_init() {
  J2OBJC_NEW_IMPL(GsonStreams, init)
}


#line 36
GsonStreams *create_GsonStreams_init() {
  J2OBJC_CREATE_IMPL(GsonStreams, init)
}


#line 43
GsonJsonElement *GsonStreams_parseWithGsonJsonReader_(GsonJsonReader *reader) {
  GsonStreams_initialize();
  
#line 44
  jboolean isEmpty = true;
  @try {
    (void) [((GsonJsonReader *) nil_chk(reader)) peek];
    isEmpty = false;
    return [((GsonTypeAdapter *) nil_chk(JreLoadStatic(GsonTypeAdapters, JSON_ELEMENT))) readWithGsonJsonReader:reader];
  }
  @catch (
#line 49
  JavaIoEOFException *e) {
    
#line 54
    if (isEmpty) {
      return JreLoadStatic(GsonJsonNull, INSTANCE);
    }
    
#line 58
    @throw new_GsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
  @catch (
#line 59
  GsonMalformedJsonException *e) {
    @throw new_GsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
  @catch (
#line 61
  JavaIoIOException *e) {
    @throw new_GsonJsonIOException_initWithJavaLangThrowable_(e);
  }
  @catch (
#line 63
  JavaLangNumberFormatException *e) {
    @throw new_GsonJsonSyntaxException_initWithJavaLangThrowable_(e);
  }
}


#line 71
void GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(GsonJsonElement *element, GsonJsonWriter *writer) {
  GsonStreams_initialize();
  
#line 72
  [((GsonTypeAdapter *) nil_chk(JreLoadStatic(GsonTypeAdapters, JSON_ELEMENT))) writeWithGsonJsonWriter:writer withId:element];
}


#line 75
JavaIoWriter *GsonStreams_writerForAppendableWithJavaLangAppendable_(id<JavaLangAppendable> appendable) {
  GsonStreams_initialize();
  
#line 76
  return [appendable isKindOfClass:[JavaIoWriter class]] ? (JavaIoWriter *) cast_chk(appendable, [JavaIoWriter class]) : new_GsonStreams_AppendableWriter_initWithJavaLangAppendable_(appendable);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonStreams)

J2OBJC_NAME_MAPPING(GsonStreams, "com.google.gson.internal", "Gson")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/Streams.java"


#line 83
@implementation GsonStreams_AppendableWriter


#line 87
- (instancetype)initWithJavaLangAppendable:(id<JavaLangAppendable>)appendable {
  GsonStreams_AppendableWriter_initWithJavaLangAppendable_(self, appendable);
  return self;
}


#line 91
- (void)writeWithCharArray:(IOSCharArray *)chars
                   withInt:(jint)offset
                   withInt:(jint)length {
  ((GsonStreams_AppendableWriter_CurrentWrite *) nil_chk(currentWrite_))->chars_ = chars;
  (void) [((id<JavaLangAppendable>) nil_chk(appendable_)) appendWithJavaLangCharSequence:currentWrite_ withInt:offset withInt:offset + length];
}


#line 96
- (void)writeWithInt:(jint)i {
  (void) [((id<JavaLangAppendable>) nil_chk(appendable_)) appendWithChar:(jchar) i];
}

- (void)flush {
}


#line 101
- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaLangAppendable:);
  methods[1].selector = @selector(writeWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(writeWithInt:);
  methods[3].selector = @selector(flush);
  methods[4].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "appendable_", "LJavaLangAppendable;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "currentWrite_", "LGsonStreams_AppendableWriter_CurrentWrite;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangAppendable;", "write", "[CII", "LJavaIoIOException;", "I", "LGsonStreams;", "LGsonStreams_AppendableWriter_CurrentWrite;" };
  static const J2ObjcClassInfo _GsonStreams_AppendableWriter = { "AppendableWriter", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x1a, 5, 2, 5, 6, -1, -1, -1 };
  return &_GsonStreams_AppendableWriter;
}

@end


#line 87
void GsonStreams_AppendableWriter_initWithJavaLangAppendable_(GsonStreams_AppendableWriter *self, id<JavaLangAppendable> appendable) {
  JavaIoWriter_init(self);
  self->currentWrite_ = new_GsonStreams_AppendableWriter_CurrentWrite_init();
  
#line 88
  self->appendable_ = appendable;
}


#line 87
GsonStreams_AppendableWriter *new_GsonStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable) {
  J2OBJC_NEW_IMPL(GsonStreams_AppendableWriter, initWithJavaLangAppendable_, appendable)
}


#line 87
GsonStreams_AppendableWriter *create_GsonStreams_AppendableWriter_initWithJavaLangAppendable_(id<JavaLangAppendable> appendable) {
  J2OBJC_CREATE_IMPL(GsonStreams_AppendableWriter, initWithJavaLangAppendable_, appendable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonStreams_AppendableWriter)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/internal/Streams.java"


#line 106
@implementation GsonStreams_AppendableWriter_CurrentWrite

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 106
- (instancetype)init {
  GsonStreams_AppendableWriter_CurrentWrite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 108
- (jint)java_length {
  return ((IOSCharArray *) nil_chk(chars_))->size_;
}


#line 111
- (jchar)charAtWithInt:(jint)i {
  return IOSCharArray_Get(nil_chk(chars_), i);
}


#line 114
- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  return [NSString java_stringWithCharacters:chars_ offset:start length:end - start];
}

- (id<JavaUtilStreamIntStream>)chars {
  return JavaLangCharSequence_chars(self);
}

- (id<JavaUtilStreamIntStream>)codePoints {
  return JavaLangCharSequence_codePoints(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaLangCharSequence;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(java_length);
  methods[2].selector = @selector(charAtWithInt:);
  methods[3].selector = @selector(subSequenceFrom:to:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "chars_", "[C", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "length", "charAt", "I", "subSequence", "II", "LGsonStreams_AppendableWriter;" };
  static const J2ObjcClassInfo _GsonStreams_AppendableWriter_CurrentWrite = { "CurrentWrite", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x8, 4, 1, 5, -1, -1, -1, -1 };
  return &_GsonStreams_AppendableWriter_CurrentWrite;
}

@end


#line 106
void GsonStreams_AppendableWriter_CurrentWrite_init(GsonStreams_AppendableWriter_CurrentWrite *self) {
  NSObject_init(self);
}


#line 106
GsonStreams_AppendableWriter_CurrentWrite *new_GsonStreams_AppendableWriter_CurrentWrite_init() {
  J2OBJC_NEW_IMPL(GsonStreams_AppendableWriter_CurrentWrite, init)
}


#line 106
GsonStreams_AppendableWriter_CurrentWrite *create_GsonStreams_AppendableWriter_CurrentWrite_init() {
  J2OBJC_CREATE_IMPL(GsonStreams_AppendableWriter_CurrentWrite, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonStreams_AppendableWriter_CurrentWrite)
