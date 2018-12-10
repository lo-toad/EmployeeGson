//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/typeadapters/RuntimeTypeAdapterFactory.java
//

#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonElement.h"
#include "JsonObject.h"
#include "JsonParseException.h"
#include "JsonPrimitive.h"
#include "JsonReader.h"
#include "JsonWriter.h"
#include "RuntimeTypeAdapterFactory.h"
#include "Streams.h"
#include "TypeAdapter.h"
#include "TypeToken.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface GsonRuntimeTypeAdapterFactory () {
 @public
  IOSClass *baseType_;
  NSString *typeFieldName_;
  id<JavaUtilMap> labelToSubtype_;
  id<JavaUtilMap> subtypeToLabel_;
  jboolean maintainType_;
}

- (instancetype)initWithIOSClass:(IOSClass *)baseType
                    withNSString:(NSString *)typeFieldName
                     withBoolean:(jboolean)maintainType;

@end

J2OBJC_FIELD_SETTER(GsonRuntimeTypeAdapterFactory, baseType_, IOSClass *)
J2OBJC_FIELD_SETTER(GsonRuntimeTypeAdapterFactory, typeFieldName_, NSString *)
J2OBJC_FIELD_SETTER(GsonRuntimeTypeAdapterFactory, labelToSubtype_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(GsonRuntimeTypeAdapterFactory, subtypeToLabel_, id<JavaUtilMap>)

__attribute__((unused)) static void GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(GsonRuntimeTypeAdapterFactory *self, IOSClass *baseType, NSString *typeFieldName, jboolean maintainType);

__attribute__((unused)) static GsonRuntimeTypeAdapterFactory *new_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonRuntimeTypeAdapterFactory *create_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType);

@interface GsonRuntimeTypeAdapterFactory_1 : GsonTypeAdapter {
 @public
  GsonRuntimeTypeAdapterFactory *this$0_;
  id<JavaUtilMap> val$labelToDelegate_;
  id<JavaUtilMap> val$subtypeToDelegate_;
}

- (instancetype)initWithGsonRuntimeTypeAdapterFactory:(GsonRuntimeTypeAdapterFactory *)outer$
                                      withJavaUtilMap:(id<JavaUtilMap>)capture$0
                                      withJavaUtilMap:(id<JavaUtilMap>)capture$1;

- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg;

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonRuntimeTypeAdapterFactory_1)

__attribute__((unused)) static void GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory_1 *self, GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1);

__attribute__((unused)) static GsonRuntimeTypeAdapterFactory_1 *new_GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonRuntimeTypeAdapterFactory_1 *create_GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/typeadapters/RuntimeTypeAdapterFactory.java"


#line 124
@implementation GsonRuntimeTypeAdapterFactory


#line 131
- (instancetype)initWithIOSClass:(IOSClass *)baseType
                    withNSString:(NSString *)typeFieldName
                     withBoolean:(jboolean)maintainType {
  GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(self, baseType, typeFieldName, maintainType);
  return self;
}


#line 145
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType
                                     withNSString:(NSString *)typeFieldName
                                      withBoolean:(jboolean)maintainType {
  return GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_withBoolean_(baseType, typeFieldName, maintainType);
}


#line 153
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType
                                     withNSString:(NSString *)typeFieldName {
  return GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_(baseType, typeFieldName);
}


#line 161
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType {
  return GsonRuntimeTypeAdapterFactory_ofWithIOSClass_(baseType);
}


#line 172
- (GsonRuntimeTypeAdapterFactory *)registerSubtypeWithIOSClass:(IOSClass *)type
                                                  withNSString:(NSString *)label {
  if (type == nil || label == nil) {
    @throw new_JavaLangNullPointerException_init();
  }
  if ([((id<JavaUtilMap>) nil_chk(subtypeToLabel_)) containsKeyWithId:type] || [((id<JavaUtilMap>) nil_chk(labelToSubtype_)) containsKeyWithId:label]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"types and labels must be unique");
  }
  (void) [((id<JavaUtilMap>) nil_chk(labelToSubtype_)) putWithId:label withId:type];
  (void) [subtypeToLabel_ putWithId:type withId:label];
  return self;
}


#line 191
- (GsonRuntimeTypeAdapterFactory *)registerSubtypeWithIOSClass:(IOSClass *)type {
  return [self registerSubtypeWithIOSClass:type withNSString:[((IOSClass *) nil_chk(type)) getSimpleName]];
}

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)type {
  if ([((GsonTypeToken *) nil_chk(type)) getRawType] != baseType_) {
    return nil;
  }
  
#line 200
  id<JavaUtilMap> labelToDelegate = new_JavaUtilLinkedHashMap_init();
  
#line 202
  id<JavaUtilMap> subtypeToDelegate = new_JavaUtilLinkedHashMap_init();
  
#line 204
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(labelToSubtype_)) entrySet])) {
    GsonTypeAdapter *delegate = [((GsonGson *) nil_chk(gson)) getDelegateAdapterWithGsonTypeAdapterFactory:self withGsonTypeToken:GsonTypeToken_getWithIOSClass_([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue])];
    (void) [labelToDelegate putWithId:[entry_ getKey] withId:delegate];
    (void) [subtypeToDelegate putWithId:[entry_ getValue] withId:delegate];
  }
  
#line 210
  return [new_GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(self, labelToDelegate, subtypeToDelegate) nullSafe];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, 1, -1, -1 },
    { NULL, "LGsonRuntimeTypeAdapterFactory;", 0x9, 2, 0, -1, 3, -1, -1 },
    { NULL, "LGsonRuntimeTypeAdapterFactory;", 0x9, 2, 4, -1, 5, -1, -1 },
    { NULL, "LGsonRuntimeTypeAdapterFactory;", 0x9, 2, 6, -1, 7, -1, -1 },
    { NULL, "LGsonRuntimeTypeAdapterFactory;", 0x1, 8, 4, -1, 9, -1, -1 },
    { NULL, "LGsonRuntimeTypeAdapterFactory;", 0x1, 8, 6, -1, 10, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x1, 11, 12, -1, 13, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIOSClass:withNSString:withBoolean:);
  methods[1].selector = @selector(ofWithIOSClass:withNSString:withBoolean:);
  methods[2].selector = @selector(ofWithIOSClass:withNSString:);
  methods[3].selector = @selector(ofWithIOSClass:);
  methods[4].selector = @selector(registerSubtypeWithIOSClass:withNSString:);
  methods[5].selector = @selector(registerSubtypeWithIOSClass:);
  methods[6].selector = @selector(createWithGsonGson:withGsonTypeToken:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "baseType_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 14, -1 },
    { "typeFieldName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "labelToSubtype_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
    { "subtypeToLabel_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "maintainType_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;LNSString;Z", "(Ljava/lang/Class<*>;Ljava/lang/String;Z)V", "of", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;Z)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "LIOSClass;LNSString;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "registerSubtype", "(Ljava/lang/Class<+TT;>;Ljava/lang/String;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "(Ljava/lang/Class<+TT;>;)Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "create", "LGsonGson;LGsonTypeToken;", "<R:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TR;>;)Lcom/google/gson/TypeAdapter<TR;>;", "Ljava/lang/Class<*>;", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;", "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/String;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/google/gson/TypeAdapterFactory;" };
  static const J2ObjcClassInfo _GsonRuntimeTypeAdapterFactory = { "RuntimeTypeAdapterFactory", "com.google.gson.typeadapters", ptrTable, methods, fields, 7, 0x11, 7, 5, -1, -1, -1, 17, -1 };
  return &_GsonRuntimeTypeAdapterFactory;
}

@end


#line 131
void GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(GsonRuntimeTypeAdapterFactory *self, IOSClass *baseType, NSString *typeFieldName, jboolean maintainType) {
  NSObject_init(self);
  self->labelToSubtype_ = new_JavaUtilLinkedHashMap_init();
  self->subtypeToLabel_ = new_JavaUtilLinkedHashMap_init();
  
#line 132
  if (typeFieldName == nil || baseType == nil) {
    @throw new_JavaLangNullPointerException_init();
  }
  self->baseType_ = baseType;
  self->typeFieldName_ = typeFieldName;
  self->maintainType_ = maintainType;
}


#line 131
GsonRuntimeTypeAdapterFactory *new_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType) {
  J2OBJC_NEW_IMPL(GsonRuntimeTypeAdapterFactory, initWithIOSClass_withNSString_withBoolean_, baseType, typeFieldName, maintainType)
}


#line 131
GsonRuntimeTypeAdapterFactory *create_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType) {
  J2OBJC_CREATE_IMPL(GsonRuntimeTypeAdapterFactory, initWithIOSClass_withNSString_withBoolean_, baseType, typeFieldName, maintainType)
}


#line 145
GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType) {
  GsonRuntimeTypeAdapterFactory_initialize();
  
#line 146
  return new_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(baseType, typeFieldName, maintainType);
}


#line 153
GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_(IOSClass *baseType, NSString *typeFieldName) {
  GsonRuntimeTypeAdapterFactory_initialize();
  
#line 154
  return new_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(baseType, typeFieldName, false);
}


#line 161
GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_(IOSClass *baseType) {
  GsonRuntimeTypeAdapterFactory_initialize();
  
#line 162
  return new_GsonRuntimeTypeAdapterFactory_initWithIOSClass_withNSString_withBoolean_(baseType, @"type", false);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonRuntimeTypeAdapterFactory)

J2OBJC_NAME_MAPPING(GsonRuntimeTypeAdapterFactory, "com.google.gson.typeadapters", "Gson")

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/typeadapters/RuntimeTypeAdapterFactory.java"


#line 210
@implementation GsonRuntimeTypeAdapterFactory_1


#line 210
- (instancetype)initWithGsonRuntimeTypeAdapterFactory:(GsonRuntimeTypeAdapterFactory *)outer$
                                      withJavaUtilMap:(id<JavaUtilMap>)capture$0
                                      withJavaUtilMap:(id<JavaUtilMap>)capture$1 {
  GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(self, outer$, capture$0, capture$1);
  return self;
}


#line 211
- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  GsonJsonElement *jsonElement = GsonStreams_parseWithGsonJsonReader_(inArg);
  GsonJsonElement *labelJsonElement;
  if (this$0_->maintainType_) {
    labelJsonElement = [((GsonJsonObject *) nil_chk([((GsonJsonElement *) nil_chk(jsonElement)) getAsJsonObject])) getWithNSString:this$0_->typeFieldName_];
  }
  else {
    
#line 217
    labelJsonElement = [((GsonJsonObject *) nil_chk([((GsonJsonElement *) nil_chk(jsonElement)) getAsJsonObject])) removeWithNSString:this$0_->typeFieldName_];
  }
  
#line 220
  if (labelJsonElement == nil) {
    @throw new_GsonJsonParseException_initWithNSString_(JreStrcat("$@$$", @"cannot deserialize ", this$0_->baseType_, @" because it does not define a field named ", this$0_->typeFieldName_));
  }
  
#line 224
  NSString *label = [labelJsonElement getAsString];
  GsonTypeAdapter *delegate =
#line 226
  [((id<JavaUtilMap>) nil_chk(val$labelToDelegate_)) getWithId:label];
  if (delegate == nil) {
    @throw new_GsonJsonParseException_initWithNSString_(JreStrcat("$@$$$", @"cannot deserialize ", this$0_->baseType_, @" subtype named ",
#line 229
    label, @"; did you forget to register a subtype?"));
  }
  return [delegate fromJsonTreeWithGsonJsonElement:jsonElement];
}


#line 234
- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value {
  IOSClass *srcType = [nil_chk(value) java_getClass];
  NSString *label = [((id<JavaUtilMap>) nil_chk(this$0_->subtypeToLabel_)) getWithId:srcType];
  GsonTypeAdapter *delegate =
#line 238
  [((id<JavaUtilMap>) nil_chk(val$subtypeToDelegate_)) getWithId:srcType];
  if (delegate == nil) {
    @throw new_GsonJsonParseException_initWithNSString_(JreStrcat("$$$", @"cannot serialize ", [srcType getName], @"; did you forget to register a subtype?"));
  }
  
#line 243
  GsonJsonObject *jsonObject = [((GsonJsonElement *) nil_chk([delegate toJsonTreeWithId:value])) getAsJsonObject];
  
#line 245
  if (this$0_->maintainType_) {
    GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(jsonObject, outArg);
    return;
  }
  
#line 250
  GsonJsonObject *clone = new_GsonJsonObject_init();
  
#line 252
  if ([((GsonJsonObject *) nil_chk(jsonObject)) hasWithNSString:this$0_->typeFieldName_]) {
    @throw new_GsonJsonParseException_initWithNSString_(JreStrcat("$$$$", @"cannot serialize ", [srcType getName], @" because it already defines a field named ", this$0_->typeFieldName_));
  }
  
#line 256
  [clone addWithNSString:this$0_->typeFieldName_ withGsonJsonElement:new_GsonJsonPrimitive_initWithNSString_(label)];
  
#line 258
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([jsonObject entrySet])) {
    [clone addWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(e)) getKey] withGsonJsonElement:[e getValue]];
  }
  GsonStreams_writeWithGsonJsonElement_withGsonJsonWriter_(clone, outArg);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, 1, 2, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 2, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonRuntimeTypeAdapterFactory:withJavaUtilMap:withJavaUtilMap:);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LGsonRuntimeTypeAdapterFactory;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$labelToDelegate_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
    { "val$subtypeToDelegate_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1012, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "read", "LGsonJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)TR;", "write", "LGsonJsonWriter;LNSObject;", "(Lcom/google/gson/stream/JsonWriter;TR;)V", "Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory<TT;>;", "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/TypeAdapter<*>;>;", "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/gson/TypeAdapter<*>;>;", "LGsonRuntimeTypeAdapterFactory;", "createWithGsonGson:withGsonTypeToken:", "Lcom/google/gson/TypeAdapter<TR;>;" };
  static const J2ObjcClassInfo _GsonRuntimeTypeAdapterFactory_1 = { "", "com.google.gson.typeadapters", ptrTable, methods, fields, 7, 0x8018, 3, 3, 10, -1, 11, 12, -1 };
  return &_GsonRuntimeTypeAdapterFactory_1;
}

@end


#line 210
void GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory_1 *self, GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1) {
  self->this$0_ = outer$;
  self->val$labelToDelegate_ = capture$0;
  self->val$subtypeToDelegate_ = capture$1;
  GsonTypeAdapter_init(self);
}


#line 210
GsonRuntimeTypeAdapterFactory_1 *new_GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1) {
  J2OBJC_NEW_IMPL(GsonRuntimeTypeAdapterFactory_1, initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_, outer$, capture$0, capture$1)
}


#line 210
GsonRuntimeTypeAdapterFactory_1 *create_GsonRuntimeTypeAdapterFactory_1_initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_(GsonRuntimeTypeAdapterFactory *outer$, id<JavaUtilMap> capture$0, id<JavaUtilMap> capture$1) {
  J2OBJC_CREATE_IMPL(GsonRuntimeTypeAdapterFactory_1, initWithGsonRuntimeTypeAdapterFactory_withJavaUtilMap_withJavaUtilMap_, outer$, capture$0, capture$1)
}
