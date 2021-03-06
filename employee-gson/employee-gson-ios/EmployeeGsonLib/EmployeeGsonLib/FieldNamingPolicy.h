//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/FieldNamingPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FieldNamingPolicy")
#ifdef RESTRICT_FieldNamingPolicy
#define INCLUDE_ALL_FieldNamingPolicy 0
#else
#define INCLUDE_ALL_FieldNamingPolicy 1
#endif
#undef RESTRICT_FieldNamingPolicy

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonFieldNamingPolicy_) && (INCLUDE_ALL_FieldNamingPolicy || defined(INCLUDE_GsonFieldNamingPolicy))
#define GsonFieldNamingPolicy_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

#define RESTRICT_FieldNamingStrategy 1
#define INCLUDE_GsonFieldNamingStrategy 1
#include "FieldNamingStrategy.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, GsonFieldNamingPolicy_Enum) {
  GsonFieldNamingPolicy_Enum_IDENTITY = 0,
  GsonFieldNamingPolicy_Enum_UPPER_CAMEL_CASE = 1,
  GsonFieldNamingPolicy_Enum_UPPER_CAMEL_CASE_WITH_SPACES = 2,
  GsonFieldNamingPolicy_Enum_LOWER_CASE_WITH_UNDERSCORES = 3,
  GsonFieldNamingPolicy_Enum_LOWER_CASE_WITH_DASHES = 4,
};

/*!
 @brief An enumeration that defines a few standard naming conventions for JSON field names.
 This enumeration should be used in conjunction with <code>com.google.gson.GsonBuilder</code>
  to configure a <code>com.google.gson.Gson</code> instance to properly translate Java field
  names into the desired JSON field names.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface GsonFieldNamingPolicy : JavaLangEnum < GsonFieldNamingStrategy >

+ (GsonFieldNamingPolicy * __nonnull)IDENTITY;

+ (GsonFieldNamingPolicy * __nonnull)UPPER_CAMEL_CASE;

+ (GsonFieldNamingPolicy * __nonnull)UPPER_CAMEL_CASE_WITH_SPACES;

+ (GsonFieldNamingPolicy * __nonnull)LOWER_CASE_WITH_UNDERSCORES;

+ (GsonFieldNamingPolicy * __nonnull)LOWER_CASE_WITH_DASHES;

#pragma mark Public

+ (GsonFieldNamingPolicy *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

/*!
 @brief Converts the field name that uses camel-case define word separation into
  separate words that are separated by the provided <code>separatorString</code>.
 */
+ (NSString *)separateCamelCaseWithNSString:(NSString *)name
                               withNSString:(NSString *)separator;

/*!
 @brief Ensures the JSON field names begins with an upper case letter.
 */
+ (NSString *)upperCaseFirstLetterWithNSString:(NSString *)name;

- (GsonFieldNamingPolicy_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(GsonFieldNamingPolicy)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT GsonFieldNamingPolicy *GsonFieldNamingPolicy_values_[];

/*!
 @brief Using this naming policy with Gson will ensure that the field name is
  unchanged.
 */
inline GsonFieldNamingPolicy *GsonFieldNamingPolicy_get_IDENTITY(void);
J2OBJC_ENUM_CONSTANT(GsonFieldNamingPolicy, IDENTITY)

/*!
 @brief Using this naming policy with Gson will ensure that the first "letter" of the Java
  field name is capitalized when serialized to its JSON form.
 <p>Here's a few examples of the form "Java Field Name" ---> "JSON Field Name":</p>
  <ul>
    <li>someFieldName ---> SomeFieldName</li>
    <li>_someFieldName ---> _SomeFieldName</li>
  </ul>
 */
inline GsonFieldNamingPolicy *GsonFieldNamingPolicy_get_UPPER_CAMEL_CASE(void);
J2OBJC_ENUM_CONSTANT(GsonFieldNamingPolicy, UPPER_CAMEL_CASE)

/*!
 @brief Using this naming policy with Gson will ensure that the first "letter" of the Java
  field name is capitalized when serialized to its JSON form and the words will be
  separated by a space.
 <p>Here's a few examples of the form "Java Field Name" ---> "JSON Field Name":</p>
  <ul>
    <li>someFieldName ---> Some Field Name</li>
    <li>_someFieldName ---> _Some Field Name</li>
  </ul>
 @since 1.4
 */
inline GsonFieldNamingPolicy *GsonFieldNamingPolicy_get_UPPER_CAMEL_CASE_WITH_SPACES(void);
J2OBJC_ENUM_CONSTANT(GsonFieldNamingPolicy, UPPER_CAMEL_CASE_WITH_SPACES)

/*!
 @brief Using this naming policy with Gson will modify the Java Field name from its camel cased
  form to a lower case field name where each word is separated by an underscore (_).
 <p>Here's a few examples of the form "Java Field Name" ---> "JSON Field Name":</p>
  <ul>
    <li>someFieldName ---> some_field_name</li>
    <li>_someFieldName ---> _some_field_name</li>
    <li>aStringField ---> a_string_field</li>
    <li>aURL ---> a_u_r_l</li>
  </ul>
 */
inline GsonFieldNamingPolicy *GsonFieldNamingPolicy_get_LOWER_CASE_WITH_UNDERSCORES(void);
J2OBJC_ENUM_CONSTANT(GsonFieldNamingPolicy, LOWER_CASE_WITH_UNDERSCORES)

/*!
 @brief Using this naming policy with Gson will modify the Java Field name from its camel cased
  form to a lower case field name where each word is separated by a dash (-).
 <p>Here's a few examples of the form "Java Field Name" ---> "JSON Field Name":</p>
  <ul>
    <li>someFieldName ---> some-field-name</li>
    <li>_someFieldName ---> _some-field-name</li>
    <li>aStringField ---> a-string-field</li>
    <li>aURL ---> a-u-r-l</li>
  </ul>
  Using dashes in JavaScript is not recommended since dash is also used for a minus sign in
  expressions. This requires that a field named with dashes is always accessed as a quoted
  property like <code>myobject['my-field']</code>. Accessing it as an object field 
 <code>myobject.my-field</code> will result in an unintended javascript expression.
 @since 1.4
 */
inline GsonFieldNamingPolicy *GsonFieldNamingPolicy_get_LOWER_CASE_WITH_DASHES(void);
J2OBJC_ENUM_CONSTANT(GsonFieldNamingPolicy, LOWER_CASE_WITH_DASHES)

FOUNDATION_EXPORT NSString *GsonFieldNamingPolicy_separateCamelCaseWithNSString_withNSString_(NSString *name, NSString *separator);

FOUNDATION_EXPORT NSString *GsonFieldNamingPolicy_upperCaseFirstLetterWithNSString_(NSString *name);

FOUNDATION_EXPORT IOSObjectArray *GsonFieldNamingPolicy_values(void);

FOUNDATION_EXPORT GsonFieldNamingPolicy *GsonFieldNamingPolicy_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT GsonFieldNamingPolicy *GsonFieldNamingPolicy_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(GsonFieldNamingPolicy)

@compatibility_alias ComGoogleGsonFieldNamingPolicy GsonFieldNamingPolicy;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_FieldNamingPolicy")
