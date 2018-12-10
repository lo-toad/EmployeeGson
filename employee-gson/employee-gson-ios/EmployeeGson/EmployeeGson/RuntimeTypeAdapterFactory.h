//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/typeadapters/RuntimeTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RuntimeTypeAdapterFactory")
#ifdef RESTRICT_RuntimeTypeAdapterFactory
#define INCLUDE_ALL_RuntimeTypeAdapterFactory 0
#else
#define INCLUDE_ALL_RuntimeTypeAdapterFactory 1
#endif
#undef RESTRICT_RuntimeTypeAdapterFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonRuntimeTypeAdapterFactory_) && (INCLUDE_ALL_RuntimeTypeAdapterFactory || defined(INCLUDE_GsonRuntimeTypeAdapterFactory))
#define GsonRuntimeTypeAdapterFactory_

#define RESTRICT_TypeAdapterFactory 1
#define INCLUDE_GsonTypeAdapterFactory 1
#include "TypeAdapterFactory.h"

@class GsonGson;
@class GsonTypeAdapter;
@class GsonTypeToken;
@class IOSClass;

/*!
 @brief Adapts values whose runtime type may differ from their declaration type.This
  is necessary when a field's type is not the same type that GSON should create
  when deserializing that field.
 For example, consider these types: 
 @code
     abstract class Shape {
      int x;
      int y;
    }
    class Circle extends Shape {
      int radius;
    }
    class Rectangle extends Shape {
      int width;
      int height;
    }
    class Diamond extends Shape {
      int width;
      int height;
    }
    class Drawing {
      Shape bottomShape;
      Shape topShape;
    } 
 
@endcode
  <p>Without additional type information, the serialized JSON is ambiguous. Is
  the bottom shape in this drawing a rectangle or a diamond? @code
     {
      "bottomShape": {
        "width": 10,
        "height": 5,
        "x": 0,
        "y": 0
      },
      "topShape": {
        "radius": 2,
        "x": 4,
        "y": 1
      }    }
 
@endcode
  This class addresses this problem by adding type information to the
  serialized JSON and honoring that type information when the JSON is
  deserialized: @code
     {
      "bottomShape": {
        "type": "Diamond",
        "width": 10,
        "height": 5,
        "x": 0,
        "y": 0
      },
      "topShape": {
        "type": "Circle",
        "radius": 2,
        "x": 4,
        "y": 1
      }    }
 
@endcode
  Both the type field name (<code>"type"</code>) and the type labels (<code>"Rectangle"</code>
 ) are configurable. 
 <h3>Registering Types</h3>
  Create a <code>RuntimeTypeAdapterFactory</code> by passing the base type and type field
  name to the <code>of</code> factory method. If you don't supply an explicit type
  field name, <code>"type"</code> will be used. @code
     RuntimeTypeAdapterFactory<Shape> shapeAdapterFactory
        = RuntimeTypeAdapterFactory.of(Shape.class, "type"); 
 
@endcode
  Next register all of your subtypes. Every subtype must be explicitly
  registered. This protects your application from injection attacks. If you
  don't supply an explicit type label, the type's simple name will be used. 
 @code
     shapeAdapter.registerSubtype(Rectangle.class, "Rectangle");
    shapeAdapter.registerSubtype(Circle.class, "Circle");
    shapeAdapter.registerSubtype(Diamond.class, "Diamond"); 
 
@endcode
  Finally, register the type adapter factory in your application's GSON builder: 
 @code
     Gson gson = new GsonBuilder()
        .registerTypeAdapterFactory(shapeAdapterFactory)
        .create(); 
 
@endcode
  Like <code>GsonBuilder</code>, this API supports chaining: @code
     RuntimeTypeAdapterFactory<Shape> shapeAdapterFactory = RuntimeTypeAdapterFactory.of(Shape.class)
        .registerSubtype(Rectangle.class)
        .registerSubtype(Circle.class)
        .registerSubtype(Diamond.class); 
 
@endcode
 */
@interface GsonRuntimeTypeAdapterFactory : NSObject < GsonTypeAdapterFactory >

#pragma mark Public

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)type;

/*!
 @brief Creates a new runtime type adapter for <code>baseType</code> using <code>"type"</code> as
  the type field name.
 */
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType;

/*!
 @brief Creates a new runtime type adapter using for <code>baseType</code> using <code>typeFieldName</code>
  as the type field name.Type field names are case sensitive.
 */
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType
                                     withNSString:(NSString *)typeFieldName;

/*!
 @brief Creates a new runtime type adapter using for <code>baseType</code> using <code>typeFieldName</code>
  as the type field name.Type field names are case sensitive.
 <code>maintainType</code> flag decide if the type will be stored in pojo or not.
 */
+ (GsonRuntimeTypeAdapterFactory *)ofWithIOSClass:(IOSClass *)baseType
                                     withNSString:(NSString *)typeFieldName
                                      withBoolean:(jboolean)maintainType;

/*!
 @brief Registers <code>type</code> identified by its <code>name</code>
 .Labels are case sensitive.
 @throw IllegalArgumentExceptionif either <code>type</code> or its simple name
      have already been registered on this type adapter.
 */
- (GsonRuntimeTypeAdapterFactory *)registerSubtypeWithIOSClass:(IOSClass *)type;

/*!
 @brief Registers <code>type</code> identified by <code>label</code>.Labels are case
  sensitive.
 @throw IllegalArgumentExceptionif either <code>type</code> or <code>label</code>
      have already been registered on this type adapter.
 */
- (GsonRuntimeTypeAdapterFactory *)registerSubtypeWithIOSClass:(IOSClass *)type
                                                  withNSString:(NSString *)label;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonRuntimeTypeAdapterFactory)

FOUNDATION_EXPORT GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_withBoolean_(IOSClass *baseType, NSString *typeFieldName, jboolean maintainType);

FOUNDATION_EXPORT GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_withNSString_(IOSClass *baseType, NSString *typeFieldName);

FOUNDATION_EXPORT GsonRuntimeTypeAdapterFactory *GsonRuntimeTypeAdapterFactory_ofWithIOSClass_(IOSClass *baseType);

J2OBJC_TYPE_LITERAL_HEADER(GsonRuntimeTypeAdapterFactory)

@compatibility_alias ComGoogleGsonTypeadaptersRuntimeTypeAdapterFactory GsonRuntimeTypeAdapterFactory;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_RuntimeTypeAdapterFactory")
