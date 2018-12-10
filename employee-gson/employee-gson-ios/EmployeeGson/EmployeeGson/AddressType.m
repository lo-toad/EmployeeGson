//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/model/AddressType.java
//

#include "AddressType.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

__attribute__((unused)) static void EmpAddressType_initWithNSString_withInt_(EmpAddressType *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static EmpAddressType *new_EmpAddressType_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/EmployeeGson/employee-gson/src/main/java/com/employee/model/AddressType.java"

J2OBJC_INITIALIZED_DEFN(EmpAddressType)

EmpAddressType *EmpAddressType_values_[2];


#line 3
@implementation EmpAddressType

+ (EmpAddressType *)PERSONAL {
  return JreEnum(EmpAddressType, PERSONAL);
}

+ (EmpAddressType *)BUSINESS {
  return JreEnum(EmpAddressType, BUSINESS);
}

+ (IOSObjectArray *)values {
  return EmpAddressType_values();
}

+ (EmpAddressType *)valueOfWithNSString:(NSString *)name {
  return EmpAddressType_valueOfWithNSString_(name);
}

- (EmpAddressType_Enum)toNSEnum {
  return (EmpAddressType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LEmpAddressType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEmpAddressType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PERSONAL", "LEmpAddressType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "BUSINESS", "LEmpAddressType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(EmpAddressType, PERSONAL), &JreEnum(EmpAddressType, BUSINESS), "Ljava/lang/Enum<Lcom/employee/model/AddressType;>;" };
  static const J2ObjcClassInfo _EmpAddressType = { "AddressType", "com.employee.model", ptrTable, methods, fields, 7, 0x4011, 2, 2, -1, -1, -1, 4, -1 };
  return &_EmpAddressType;
}

+ (void)initialize {
  if (self == [EmpAddressType class]) {
    JreEnum(EmpAddressType, PERSONAL) = new_EmpAddressType_initWithNSString_withInt_(JreEnumConstantName(EmpAddressType_class_(), 0), 0);
    JreEnum(EmpAddressType, BUSINESS) = new_EmpAddressType_initWithNSString_withInt_(JreEnumConstantName(EmpAddressType_class_(), 1), 1);
    J2OBJC_SET_INITIALIZED(EmpAddressType)
  }
}

@end


#line 3
void EmpAddressType_initWithNSString_withInt_(EmpAddressType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}


#line 3
EmpAddressType *new_EmpAddressType_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(EmpAddressType, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *EmpAddressType_values() {
  EmpAddressType_initialize();
  return [IOSObjectArray arrayWithObjects:EmpAddressType_values_ count:2 type:EmpAddressType_class_()];
}

EmpAddressType *EmpAddressType_valueOfWithNSString_(NSString *name) {
  EmpAddressType_initialize();
  for (int i = 0; i < 2; i++) {
    EmpAddressType *e = EmpAddressType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

EmpAddressType *EmpAddressType_fromOrdinal(NSUInteger ordinal) {
  EmpAddressType_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return EmpAddressType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EmpAddressType)

J2OBJC_NAME_MAPPING(EmpAddressType, "com.employee.model", "Emp")
