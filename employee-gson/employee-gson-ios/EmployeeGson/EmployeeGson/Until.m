//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/annotations/Until.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Until.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *GsonUntil__Annotations$0(void);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/google/gson/annotations/Until.java"


#line 59
@implementation GsonUntil

@synthesize value = value_;

- (IOSClass *)annotationType {
  return GsonUntil_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@com.google.gson.annotations.Until(value=%lf)", value_];
}

- (jboolean)isEqual:(id)obj {
  return JreAnnotationEquals(self, obj);
}

- (NSUInteger)hash {
  return JreAnnotationHashCode(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "D", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(value);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "D", .constantValue.asLong = 0, 0x1000, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { (void *)&GsonUntil__Annotations$0 };
  static const J2ObjcClassInfo _GsonUntil = { "Until", "com.google.gson.annotations", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 0 };
  return &_GsonUntil;
}

@end

id<GsonUntil> create_GsonUntil(jdouble value) {
  GsonUntil *self = AUTORELEASE([[GsonUntil alloc] init]);
  self->value_ = value;
  return self;
}

IOSObjectArray *GsonUntil__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)), create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, FIELD), JreLoadEnum(JavaLangAnnotationElementType, TYPE) } count:2 type:JavaLangAnnotationElementType_class_()]) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GsonUntil)

J2OBJC_NAME_MAPPING(GsonUntil, "com.google.gson.annotations", "Gson")
