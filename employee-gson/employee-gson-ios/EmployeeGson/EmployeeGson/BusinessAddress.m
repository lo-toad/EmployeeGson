//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/model/BusinessAddress.java
//

#include "Address.h"
#include "BusinessAddress.h"
#include "J2ObjC_source.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface EmpBusinessAddress () {
 @public
  NSString *businessAddressField_;
}

@end

J2OBJC_FIELD_SETTER(EmpBusinessAddress, businessAddressField_, NSString *)

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/employee/model/BusinessAddress.java"


#line 3
@implementation EmpBusinessAddress

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 3
- (instancetype)init {
  EmpBusinessAddress_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 7
- (NSString *)getBusinessAddressField {
  return businessAddressField_;
}

- (void)setBusinessAddressFieldWithNSString:(NSString *)businessAddressField {
  self->businessAddressField_ = businessAddressField;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getBusinessAddressField);
  methods[2].selector = @selector(setBusinessAddressFieldWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "businessAddressField_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setBusinessAddressField", "LNSString;", "Lcom/employee/model/Address<Ljava/lang/Integer;>;" };
  static const J2ObjcClassInfo _EmpBusinessAddress = { "BusinessAddress", "com.employee.model", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, 2, -1 };
  return &_EmpBusinessAddress;
}

@end


#line 3
void EmpBusinessAddress_init(EmpBusinessAddress *self) {
  EmpAddress_init(self);
}


#line 3
EmpBusinessAddress *new_EmpBusinessAddress_init() {
  J2OBJC_NEW_IMPL(EmpBusinessAddress, init)
}


#line 3
EmpBusinessAddress *create_EmpBusinessAddress_init() {
  J2OBJC_CREATE_IMPL(EmpBusinessAddress, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EmpBusinessAddress)

J2OBJC_NAME_MAPPING(EmpBusinessAddress, "com.employee.model", "Emp")
