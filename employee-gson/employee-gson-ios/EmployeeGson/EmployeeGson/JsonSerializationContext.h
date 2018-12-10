//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonSerializationContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonSerializationContext")
#ifdef RESTRICT_JsonSerializationContext
#define INCLUDE_ALL_JsonSerializationContext 0
#else
#define INCLUDE_ALL_JsonSerializationContext 1
#endif
#undef RESTRICT_JsonSerializationContext

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonJsonSerializationContext_) && (INCLUDE_ALL_JsonSerializationContext || defined(INCLUDE_GsonJsonSerializationContext))
#define GsonJsonSerializationContext_

@class GsonJsonElement;
@protocol JavaLangReflectType;

/*!
 @brief Context for serialization that is passed to a custom serializer during invocation of its 
 <code>Type, JsonSerializationContext)</code> method.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@protocol GsonJsonSerializationContext < JavaObject >

/*!
 @brief Invokes default serialization on the specified object.
 @param src the object that needs to be serialized.
 @return a tree of <code>JsonElement</code>s corresponding to the serialized form of <code>src</code>.
 */
- (GsonJsonElement *)serializeWithId:(id)src;

/*!
 @brief Invokes default serialization on the specified object passing the specific type information.
 It should never be invoked on the element received as a parameter of the 
 <code>Type, JsonSerializationContext)</code> method. Doing
  so will result in an infinite loop since Gson will in-turn call the custom serializer again.
 @param src the object that needs to be serialized.
 @param typeOfSrc the actual genericized type of src object.
 @return a tree of <code>JsonElement</code>s corresponding to the serialized form of <code>src</code>.
 */
- (GsonJsonElement *)serializeWithId:(id)src
             withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonSerializationContext)

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonSerializationContext)

#define ComGoogleGsonJsonSerializationContext GsonJsonSerializationContext

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JsonSerializationContext")
