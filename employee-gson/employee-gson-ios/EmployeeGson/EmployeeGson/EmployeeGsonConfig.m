//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/employee/gson/EmployeeGsonConfig.java
//

#include "AddressHolder.h"
#include "AddressType.h"
#include "BusinessAddressHolder.h"
#include "DateAdaptor.h"
#include "EmployeeGsonConfig.h"
#include "Gson.h"
#include "GsonBuilder.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "PersonalAddressHolder.h"
#include "RuntimeTypeAdapterFactory.h"
#include "java/util/Date.h"

@interface EmpEmployeeGsonConfig () {
 @public
  GsonGson *gson_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(EmpEmployeeGsonConfig, gson_, GsonGson *)

__attribute__((unused)) static void EmpEmployeeGsonConfig_init(EmpEmployeeGsonConfig *self);

__attribute__((unused)) static EmpEmployeeGsonConfig *new_EmpEmployeeGsonConfig_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static EmpEmployeeGsonConfig *create_EmpEmployeeGsonConfig_init(void);

#line 1 "/Users/ahmedmohammed/intelliJWorkspace/employee-gson/src/main/java/com/employee/gson/EmployeeGsonConfig.java"

J2OBJC_INITIALIZED_DEFN(EmpEmployeeGsonConfig)

EmpEmployeeGsonConfig *EmpEmployeeGsonConfig_INSTANCE;


#line 13
@implementation EmpEmployeeGsonConfig

+ (EmpEmployeeGsonConfig *)INSTANCE {
  return EmpEmployeeGsonConfig_INSTANCE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN

#line 18
- (instancetype)init {
  EmpEmployeeGsonConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END


#line 30
+ (EmpEmployeeGsonConfig *)instance {
  return EmpEmployeeGsonConfig_instance();
}

- (GsonGson *)getGson {
  return gson_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LEmpEmployeeGsonConfig;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonGson;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(instance);
  methods[2].selector = @selector(getGson);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "gson_", "LGsonGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "INSTANCE", "LEmpEmployeeGsonConfig;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &EmpEmployeeGsonConfig_INSTANCE };
  static const J2ObjcClassInfo _EmpEmployeeGsonConfig = { "EmployeeGsonConfig", "com.employee.gson", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_EmpEmployeeGsonConfig;
}

+ (void)initialize {
  if (self == [EmpEmployeeGsonConfig class]) {
    EmpEmployeeGsonConfig_INSTANCE = new_EmpEmployeeGsonConfig_init();
    J2OBJC_SET_INITIALIZED(EmpEmployeeGsonConfig)
  }
}

@end


#line 18
void EmpEmployeeGsonConfig_init(EmpEmployeeGsonConfig *self) {
  NSObject_init(self);
  
#line 19
  GsonRuntimeTypeAdapterFactory *runtimeTypeAdapterFactory = [((GsonRuntimeTypeAdapterFactory *) nil_chk([((GsonRuntimeTypeAdapterFactory *) nil_chk(GsonRuntimeTypeAdapterFactory_ofWithIOSClass_(
#line 20
  EmpAddressHolder_class_()))) registerSubtypeWithIOSClass:
#line 21
  EmpBusinessAddressHolder_class_() withNSString:[((EmpAddressType *) nil_chk(JreLoadEnum(EmpAddressType, BUSINESS))) name]])) registerSubtypeWithIOSClass:
#line 22
  EmpPersonalAddressHolder_class_() withNSString:[((EmpAddressType *) nil_chk(JreLoadEnum(EmpAddressType, PERSONAL))) name]];
  
#line 24
  self->gson_ = [((GsonGsonBuilder *) nil_chk([((GsonGsonBuilder *) nil_chk([new_GsonGsonBuilder_init() registerTypeAdapterFactoryWithGsonTypeAdapterFactory:
#line 25
  runtimeTypeAdapterFactory])) registerTypeAdapterWithJavaLangReflectType:
#line 26
  JavaUtilDate_class_() withId:new_EmpDateAdaptor_init()])) create];
}


#line 18
EmpEmployeeGsonConfig *new_EmpEmployeeGsonConfig_init() {
  J2OBJC_NEW_IMPL(EmpEmployeeGsonConfig, init)
}


#line 18
EmpEmployeeGsonConfig *create_EmpEmployeeGsonConfig_init() {
  J2OBJC_CREATE_IMPL(EmpEmployeeGsonConfig, init)
}


#line 30
EmpEmployeeGsonConfig *EmpEmployeeGsonConfig_instance() {
  EmpEmployeeGsonConfig_initialize();
  
#line 31
  return EmpEmployeeGsonConfig_INSTANCE;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(EmpEmployeeGsonConfig)

J2OBJC_NAME_MAPPING(EmpEmployeeGsonConfig, "com.employee.gson", "Emp")
