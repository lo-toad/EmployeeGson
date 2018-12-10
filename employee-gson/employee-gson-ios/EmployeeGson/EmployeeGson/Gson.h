//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/Gson.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Gson")
#ifdef RESTRICT_Gson
#define INCLUDE_ALL_Gson 0
#else
#define INCLUDE_ALL_Gson 1
#endif
#undef RESTRICT_Gson

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonGson_) && (INCLUDE_ALL_Gson || defined(INCLUDE_GsonGson))
#define GsonGson_

@class GsonExcluder;
@class GsonJsonElement;
@class GsonJsonReader;
@class GsonJsonWriter;
@class GsonLongSerializationPolicy;
@class GsonTypeAdapter;
@class GsonTypeToken;
@class IOSClass;
@class JavaIoReader;
@class JavaIoWriter;
@protocol GsonFieldNamingStrategy;
@protocol GsonTypeAdapterFactory;
@protocol JavaLangAppendable;
@protocol JavaLangReflectType;
@protocol JavaUtilList;
@protocol JavaUtilMap;

/*!
 @brief This is the main class for using Gson.Gson is typically used by first constructing a
  Gson instance and then invoking <code>toJson(Object)</code> or <code>Class)</code>
  methods on it.
 Gson instances are Thread-safe so you can reuse them freely across multiple
  threads. 
 <p>You can create a Gson instance by invoking <code>new Gson()</code> if the default configuration
  is all you need. You can also use <code>GsonBuilder</code> to build a Gson instance with various
  configuration options such as versioning support, pretty printing, custom 
 <code>JsonSerializer</code>s, <code>JsonDeserializer</code>s, and <code>InstanceCreator</code>s.</p>
  
 <p>Here is an example of how Gson is used for a simple Class: 
 @code

  Gson gson = new Gson(); // Or use new GsonBuilder().create();
  MyType target = new MyType();
  String json = gson.toJson(target); // serializes target to Json
  MyType target2 = gson.fromJson(json, MyType.class); // deserializes json into target2 
  
@endcode</p>
  
 <p>If the object that your are serializing/deserializing is a <code>ParameterizedType</code>
  (i.e. contains at least one type parameter and may be an array) then you must use the 
 <code>Type)</code> or <code>Type)</code> method.  Here is an
  example for serializing and deserializing a <code>ParameterizedType</code>:
  
 @code

  Type listType = new TypeToken&lt;List&lt;String&gt;&gt;() {}.getType();
  List&lt;String&gt; target = new LinkedList&lt;String&gt;();
  target.add("blah");
  Gson gson = new Gson();
  String json = gson.toJson(target, listType);
  List&lt;String&gt; target2 = gson.fromJson(json, listType); 
  
@endcode</p>
  
 <p>See the <a href="https://sites.google.com/site/gson/gson-user-guide">Gson User Guide</a>
  for a more complete set of examples.</p>
 - seealso: com.google.gson.reflect.TypeToken
 @author Inderjeet Singh
 @author Joel Leitch
 @author Jesse Wilson
 */
@interface GsonGson : NSObject

+ (jboolean)DEFAULT_JSON_NON_EXECUTABLE;

+ (jboolean)DEFAULT_LENIENT;

+ (jboolean)DEFAULT_PRETTY_PRINT;

+ (jboolean)DEFAULT_ESCAPE_HTML;

+ (jboolean)DEFAULT_SERIALIZE_NULLS;

+ (jboolean)DEFAULT_COMPLEX_MAP_KEYS;

+ (jboolean)DEFAULT_SPECIALIZE_FLOAT_VALUES;

#pragma mark Public

/*!
 @brief Constructs a Gson object with default configuration.The default configuration has the
  following settings: 
 <ul>
    <li>The JSON generated by <code>toJson</code> methods is in compact representation.
 This
    means that all the unneeded white-space is removed. You can change this behavior with   
 <code>GsonBuilder.setPrettyPrinting()</code>. </li>
    <li>The generated JSON omits all the fields that are null. Note that nulls in arrays are
    kept as is since an array is an ordered list. Moreover, if a field is not null, but its
    generated JSON is empty, the field is kept. You can configure Gson to serialize null values
    by setting <code>GsonBuilder.serializeNulls()</code>.</li>
    <li>Gson provides default serialization and deserialization for Enums, <code>Map</code>,
    <code>java.net.URL</code>, <code>java.net.URI</code>, <code>java.util.Locale</code>, <code>java.util.Date</code>,
    <code>java.math.BigDecimal</code>, and <code>java.math.BigInteger</code> classes. If you would prefer
    to change the default representation, you can do so by registering a type adapter through   
 <code>Object)</code>. </li>
    <li>The default Date format is same as <code>java.text.DateFormat</code>. This format
    ignores the millisecond portion of the date during serialization. You can change
    this by invoking <code>GsonBuilder.setDateFormat(int)</code> or
    <code>GsonBuilder.setDateFormat(String)</code>. </li>
    <li>By default, Gson ignores the <code>com.google.gson.annotations.Expose</code> annotation.
    You can enable Gson to serialize/deserialize only those fields marked with this annotation
    through <code>GsonBuilder.excludeFieldsWithoutExposeAnnotation()</code>. </li>
    <li>By default, Gson ignores the <code>com.google.gson.annotations.Since</code> annotation. You
    can enable Gson to use this annotation through <code>GsonBuilder.setVersion(double)</code>.</li>
    <li>The default field naming policy for the output Json is same as in Java. So, a Java class
    field <code>versionNumber</code> will be output as <code>&quot;versionNumber&quot;</code> in
    Json. The same rules are applied for mapping incoming Json to the Java classes. You can
    change this policy through <code>GsonBuilder.setFieldNamingPolicy(FieldNamingPolicy)</code>.</li>
    <li>By default, Gson excludes <code>transient</code> or <code>static</code> fields from
    consideration for serialization and deserialization. You can change this behavior through   
 <code>GsonBuilder.excludeFieldsWithModifiers(int...)</code>.</li>
  </ul>
 */
- (instancetype __nonnull)init;

- (GsonExcluder *)excluder;

- (id<GsonFieldNamingStrategy>)fieldNamingStrategy;

/*!
 @brief This method deserializes the Json read from the specified parse tree into an object of the
  specified type.It is not suitable to use if the specified class is a generic type since it
  will not have the generic type information because of the Type Erasure feature of Java.
 Therefore, this method should not be used if the desired type is a generic type. Note that
  this method works fine if the any of the fields of the specified object are generics, just the
  object itself should not be a generic type. For the cases when the object is of generic type,
  invoke <code>Type)</code>.
 @param json the root of the parse tree of <code>JsonElement</code> s from which the object is to
   be deserialized
 @param classOfT The class of T
 @return an object of type T from the json. Returns <code>null</code> if <code>json</code> is <code>null</code>.
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type typeOfT
 @since 1.3
 */
- (id)fromJsonWithGsonJsonElement:(GsonJsonElement *)json
                     withIOSClass:(IOSClass *)classOfT;

/*!
 @brief This method deserializes the Json read from the specified parse tree into an object of the
  specified type.This method is useful if the specified object is a generic type.
 For
  non-generic objects, use <code>Class)</code> instead.
 @param json the root of the parse tree of <code>JsonElement</code> s from which the object is to
   be deserialized
 @param typeOfT The specific genericized type of src. You can obtain this type by using the  
 <code>com.google.gson.reflect.TypeToken</code>  class. For example, to get the type for  <code>Collection<Foo></code>
  , you should use:   
@code

    Type typeOfT = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @return an object of type T from the json. Returns <code>null</code> if <code>json</code> is <code>null</code>.
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type typeOfT
 @since 1.3
 */
- (id)fromJsonWithGsonJsonElement:(GsonJsonElement *)json
          withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

/*!
 @brief Reads the next JSON value from <code>reader</code> and convert it to an object
  of type <code>typeOfT</code>.Returns <code>null</code>, if the <code>reader</code> is at EOF.
 Since Type is not parameterized by T, this method is type unsafe and should be used carefully
 @throw JsonIOExceptionif there was a problem writing to the Reader
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type
 */
- (id)fromJsonWithGsonJsonReader:(GsonJsonReader *)reader
         withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

/*!
 @brief This method deserializes the Json read from the specified reader into an object of the
  specified class.It is not suitable to use if the specified class is a generic type since it
  will not have the generic type information because of the Type Erasure feature of Java.
 Therefore, this method should not be used if the desired type is a generic type. Note that
  this method works fine if the any of the fields of the specified object are generics, just the
  object itself should not be a generic type. For the cases when the object is of generic type,
  invoke <code>Type)</code>. If you have the Json in a String form instead of a 
 <code>Reader</code>, use <code>Class)</code> instead.
 @param json the reader producing the Json from which the object is to be deserialized.
 @param classOfT the class of T
 @return an object of type T from the string. Returns <code>null</code> if <code>json</code> is at EOF.
 @throw JsonIOExceptionif there was a problem reading from the Reader
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type
 @since 1.2
 */
- (id)fromJsonWithJavaIoReader:(JavaIoReader *)json
                  withIOSClass:(IOSClass *)classOfT;

/*!
 @brief This method deserializes the Json read from the specified reader into an object of the
  specified type.This method is useful if the specified object is a generic type.
 For
  non-generic objects, use <code>Class)</code> instead. If you have the Json in a
  String form instead of a <code>Reader</code>, use <code>Type)</code> instead.
 @param json the reader producing Json from which the object is to be deserialized
 @param typeOfT The specific genericized type of src. You can obtain this type by using the  
 <code>com.google.gson.reflect.TypeToken</code>  class. For example, to get the type for  <code>Collection<Foo></code>
  , you should use:   
@code

    Type typeOfT = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @return an object of type T from the json. Returns <code>null</code> if <code>json</code> is at EOF.
 @throw JsonIOExceptionif there was a problem reading from the Reader
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type
 @since 1.2
 */
- (id)fromJsonWithJavaIoReader:(JavaIoReader *)json
       withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

/*!
 @brief This method deserializes the specified Json into an object of the specified class.It is not
  suitable to use if the specified class is a generic type since it will not have the generic
  type information because of the Type Erasure feature of Java.
 Therefore, this method should not
  be used if the desired type is a generic type. Note that this method works fine if the any of
  the fields of the specified object are generics, just the object itself should not be a
  generic type. For the cases when the object is of generic type, invoke 
 <code>Type)</code>. If you have the Json in a <code>Reader</code> instead of
  a String, use <code>Class)</code> instead.
 @param json the string from which the object is to be deserialized
 @param classOfT the class of T
 @return an object of type T from the string. Returns <code>null</code> if <code>json</code> is <code>null</code>.
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type
  classOfT
 */
- (id)fromJsonWithNSString:(NSString *)json
              withIOSClass:(IOSClass *)classOfT;

/*!
 @brief This method deserializes the specified Json into an object of the specified type.This method
  is useful if the specified object is a generic type.
 For non-generic objects, use 
 <code>Class)</code> instead. If you have the Json in a <code>Reader</code> instead of
  a String, use <code>Type)</code> instead.
 @param json the string from which the object is to be deserialized
 @param typeOfT The specific genericized type of src. You can obtain this type by using the  
 <code>com.google.gson.reflect.TypeToken</code>  class. For example, to get the type for  <code>Collection<Foo></code>
  , you should use:   
@code

    Type typeOfT = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @return an object of type T from the string. Returns <code>null</code> if <code>json</code> is <code>null</code>.
 @throw JsonParseExceptionif json is not a valid representation for an object of type typeOfT
 @throw JsonSyntaxExceptionif json is not a valid representation for an object of type
 */
- (id)fromJsonWithNSString:(NSString *)json
   withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

/*!
 @brief Returns the type adapter for <code></code> type.
 @throw IllegalArgumentExceptionif this GSON cannot serialize and
      deserialize <code>type</code>.
 */
- (GsonTypeAdapter *)getAdapterWithIOSClass:(IOSClass *)type;

/*!
 @brief Returns the type adapter for <code></code> type.
 @throw IllegalArgumentExceptionif this GSON cannot serialize and
      deserialize <code>type</code>.
 */
- (GsonTypeAdapter *)getAdapterWithGsonTypeToken:(GsonTypeToken *)type;

/*!
 @brief This method is used to get an alternate type adapter for the specified type.This is used
  to access a type adapter that is overridden by a <code>TypeAdapterFactory</code> that you
  may have registered.
 This features is typically used when you want to register a type
  adapter that does a little bit of work but then delegates further processing to the Gson
  default type adapter. Here is an example: 
 <p>Let's say we want to write a type adapter that counts the number of objects being read
   from or written to JSON. We can achieve this by writing a type adapter factory that uses
   the <code>getDelegateAdapter</code> method:
   @code
  class StatsTypeAdapterFactory implements TypeAdapterFactory {
     public int numReads = 0;
     public int numWrites = 0;
     public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       final TypeAdapter<T> delegate = gson.getDelegateAdapter(this, type);
       return new TypeAdapter<T>() {
         public void write(JsonWriter out, T value) throws IOException {
           ++numWrites;
           delegate.write(out, value);
         }
         public T read(JsonReader in) throws IOException {
           ++numReads;
           return delegate.read(in);
         }
       };     }     }     
  
@endcode
   This factory can now be used like this:  
 @code
  StatsTypeAdapterFactory stats = new StatsTypeAdapterFactory();
   Gson gson = new GsonBuilder().registerTypeAdapterFactory(stats).create();
   // Call gson.toJson() and fromJson methods on objects
   System.out.println("Num JSON reads" + stats.numReads);
   System.out.println("Num JSON writes" + stats.numWrites);  
 
@endcode
   Note that this call will skip all factories registered before <code>skipPast</code>. In case of
   multiple TypeAdapterFactories registered it is up to the caller of this function to insure
   that the order of registration does not prevent this method from reaching a factory they
   would expect to reply from this call.
   Note that since you can not override type adapter factories for String and Java primitive
   types, our stats factory will not count the number of String or primitives that will be
   read or written.
 @param skipPast The type adapter factory that needs to be skipped while searching for    a matching type adapter. In most cases, you should just pass 
  <i> this </i>  (the type adapter    factory from where 
 <code>getDelegateAdapter</code>  method is being invoked).
 @param type Type for which the delegate adapter is being searched for.
 @since 2.2
 */
- (GsonTypeAdapter *)getDelegateAdapterWithGsonTypeAdapterFactory:(id<GsonTypeAdapterFactory>)skipPast
                                                withGsonTypeToken:(GsonTypeToken *)type;

- (jboolean)htmlSafe;

/*!
 @brief Returns a new JSON reader configured for the settings on this Gson instance.
 */
- (GsonJsonReader *)newJsonReaderWithJavaIoReader:(JavaIoReader *)reader OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Returns a new JSON writer configured for the settings on this Gson instance.
 */
- (GsonJsonWriter *)newJsonWriterWithJavaIoWriter:(JavaIoWriter *)writer OBJC_METHOD_FAMILY_NONE;

- (jboolean)serializeNulls;

/*!
 @brief Converts a tree of <code>JsonElement</code>s into its equivalent JSON representation.
 @param jsonElement root of a tree of <code>JsonElement</code> s
 @return JSON String representation of the tree
 @since 1.4
 */
- (NSString *)toJsonWithGsonJsonElement:(GsonJsonElement *)jsonElement;

/*!
 @brief Writes out the equivalent JSON for a tree of <code>JsonElement</code>s.
 @param jsonElement root of a tree of <code>JsonElement</code> s
 @param writer Writer to which the Json representation needs to be written
 @throw JsonIOExceptionif there was a problem writing to the writer
 @since 1.4
 */
- (void)toJsonWithGsonJsonElement:(GsonJsonElement *)jsonElement
           withJavaLangAppendable:(id<JavaLangAppendable>)writer;

/*!
 @brief Writes the JSON for <code>jsonElement</code> to <code>writer</code>.
 @throw JsonIOExceptionif there was a problem writing to the writer
 */
- (void)toJsonWithGsonJsonElement:(GsonJsonElement *)jsonElement
               withGsonJsonWriter:(GsonJsonWriter *)writer;

/*!
 @brief This method serializes the specified object into its equivalent Json representation.
 This method should be used when the specified object is not a generic type. This method uses 
 <code>Class.getClass()</code> to get the type for the specified object, but the 
 <code>getClass()</code> loses the generic type information because of the Type Erasure feature
  of Java. Note that this method works fine if the any of the object fields are of generic type,
  just the object itself should not be of a generic type. If the object is of generic type, use 
 <code>Type)</code> instead. If you want to write out the object to a 
 <code>Writer</code>, use <code>Appendable)</code> instead.
 @param src the object for which Json representation is to be created setting for Gson
 @return Json representation of <code>src</code>.
 */
- (NSString *)toJsonWithId:(id)src;

/*!
 @brief This method serializes the specified object into its equivalent Json representation.
 This method should be used when the specified object is not a generic type. This method uses 
 <code>Class.getClass()</code> to get the type for the specified object, but the 
 <code>getClass()</code> loses the generic type information because of the Type Erasure feature
  of Java. Note that this method works fine if the any of the object fields are of generic type,
  just the object itself should not be of a generic type. If the object is of generic type, use 
 <code>Type, Appendable)</code> instead.
 @param src the object for which Json representation is to be created setting for Gson
 @param writer Writer to which the Json representation needs to be written
 @throw JsonIOExceptionif there was a problem writing to the writer
 @since 1.2
 */
- (void)toJsonWithId:(id)src
withJavaLangAppendable:(id<JavaLangAppendable>)writer;

/*!
 @brief This method serializes the specified object, including those of generic types, into its
  equivalent Json representation.This method must be used if the specified object is a generic
  type.
 For non-generic objects, use <code>toJson(Object)</code> instead. If you want to write out
  the object to a <code>Appendable</code>, use <code>Type, Appendable)</code> instead.
 @param src the object for which JSON representation is to be created
 @param typeOfSrc The specific genericized type of src. You can obtain  this type by using the 
 <code>com.google.gson.reflect.TypeToken</code>  class. For example,  to get the type for 
 <code>Collection<Foo></code> , you should use:   
@code

    Type typeOfSrc = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @return Json representation of <code>src</code>
 */
- (NSString *)toJsonWithId:(id)src
   withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

/*!
 @brief This method serializes the specified object, including those of generic types, into its
  equivalent Json representation.This method must be used if the specified object is a generic
  type.
 For non-generic objects, use <code>Appendable)</code> instead.
 @param src the object for which JSON representation is to be created
 @param typeOfSrc The specific genericized type of src. You can obtain  this type by using the 
 <code>com.google.gson.reflect.TypeToken</code>  class. For example,  to get the type for 
 <code>Collection<Foo></code> , you should use:   
@code

    Type typeOfSrc = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @param writer Writer to which the Json representation of src needs to be written.
 @throw JsonIOExceptionif there was a problem writing to the writer
 @since 1.2
 */
- (void)toJsonWithId:(id)src
withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
withJavaLangAppendable:(id<JavaLangAppendable>)writer;

/*!
 @brief Writes the JSON representation of <code>src</code> of type <code>typeOfSrc</code> to 
 <code>writer</code>.
 @throw JsonIOExceptionif there was a problem writing to the writer
 */
- (void)toJsonWithId:(id)src
withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
  withGsonJsonWriter:(GsonJsonWriter *)writer;

/*!
 @brief This method serializes the specified object into its equivalent representation as a tree of 
 <code>JsonElement</code>s.This method should be used when the specified object is not a generic
  type.
 This method uses <code>Class.getClass()</code> to get the type for the specified object, but the 
 <code>getClass()</code> loses the generic type information because of the Type Erasure feature
  of Java. Note that this method works fine if the any of the object fields are of generic type,
  just the object itself should not be of a generic type. If the object is of generic type, use 
 <code>Type)</code> instead.
 @param src the object for which Json representation is to be created setting for Gson
 @return Json representation of <code>src</code>.
 @since 1.4
 */
- (GsonJsonElement *)toJsonTreeWithId:(id)src;

/*!
 @brief This method serializes the specified object, including those of generic types, into its
  equivalent representation as a tree of <code>JsonElement</code>s.This method must be used if the
  specified object is a generic type.
 For non-generic objects, use <code>toJsonTree(Object)</code>
  instead.
 @param src the object for which JSON representation is to be created
 @param typeOfSrc The specific genericized type of src. You can obtain  this type by using the 
 <code>com.google.gson.reflect.TypeToken</code>  class. For example,  to get the type for 
 <code>Collection<Foo></code> , you should use:   
@code

    Type typeOfSrc = new TypeToken
  &lt; Collection &lt; Foo &gt; &gt; (){}.getType();  
@endcode
 @return Json representation of <code>src</code>
 @since 1.4
 */
- (GsonJsonElement *)toJsonTreeWithId:(id)src
              withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithGsonExcluder:(GsonExcluder *)excluder
                   withGsonFieldNamingStrategy:(id<GsonFieldNamingStrategy>)fieldNamingStrategy
                               withJavaUtilMap:(id<JavaUtilMap>)instanceCreators
                                   withBoolean:(jboolean)serializeNulls
                                   withBoolean:(jboolean)complexMapKeySerialization
                                   withBoolean:(jboolean)generateNonExecutableGson
                                   withBoolean:(jboolean)htmlSafe
                                   withBoolean:(jboolean)prettyPrinting
                                   withBoolean:(jboolean)lenient
                                   withBoolean:(jboolean)serializeSpecialFloatingPointValues
               withGsonLongSerializationPolicy:(GsonLongSerializationPolicy *)longSerializationPolicy
                              withJavaUtilList:(id<JavaUtilList>)typeAdapterFactories;

+ (void)checkValidFloatingPointWithDouble:(jdouble)value;

@end

J2OBJC_STATIC_INIT(GsonGson)

inline jboolean GsonGson_get_DEFAULT_JSON_NON_EXECUTABLE(void);
#define GsonGson_DEFAULT_JSON_NON_EXECUTABLE false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_JSON_NON_EXECUTABLE, jboolean)

inline jboolean GsonGson_get_DEFAULT_LENIENT(void);
#define GsonGson_DEFAULT_LENIENT false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_LENIENT, jboolean)

inline jboolean GsonGson_get_DEFAULT_PRETTY_PRINT(void);
#define GsonGson_DEFAULT_PRETTY_PRINT false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_PRETTY_PRINT, jboolean)

inline jboolean GsonGson_get_DEFAULT_ESCAPE_HTML(void);
#define GsonGson_DEFAULT_ESCAPE_HTML true
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_ESCAPE_HTML, jboolean)

inline jboolean GsonGson_get_DEFAULT_SERIALIZE_NULLS(void);
#define GsonGson_DEFAULT_SERIALIZE_NULLS false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_SERIALIZE_NULLS, jboolean)

inline jboolean GsonGson_get_DEFAULT_COMPLEX_MAP_KEYS(void);
#define GsonGson_DEFAULT_COMPLEX_MAP_KEYS false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_COMPLEX_MAP_KEYS, jboolean)

inline jboolean GsonGson_get_DEFAULT_SPECIALIZE_FLOAT_VALUES(void);
#define GsonGson_DEFAULT_SPECIALIZE_FLOAT_VALUES false
J2OBJC_STATIC_FIELD_CONSTANT(GsonGson, DEFAULT_SPECIALIZE_FLOAT_VALUES, jboolean)

FOUNDATION_EXPORT void GsonGson_init(GsonGson *self);

FOUNDATION_EXPORT GsonGson *new_GsonGson_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonGson *create_GsonGson_init(void);

FOUNDATION_EXPORT void GsonGson_initWithGsonExcluder_withGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withGsonLongSerializationPolicy_withJavaUtilList_(GsonGson *self, GsonExcluder *excluder, id<GsonFieldNamingStrategy> fieldNamingStrategy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, GsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories);

FOUNDATION_EXPORT GsonGson *new_GsonGson_initWithGsonExcluder_withGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withGsonLongSerializationPolicy_withJavaUtilList_(GsonExcluder *excluder, id<GsonFieldNamingStrategy> fieldNamingStrategy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, GsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonGson *create_GsonGson_initWithGsonExcluder_withGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withGsonLongSerializationPolicy_withJavaUtilList_(GsonExcluder *excluder, id<GsonFieldNamingStrategy> fieldNamingStrategy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, GsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories);

FOUNDATION_EXPORT void GsonGson_checkValidFloatingPointWithDouble_(jdouble value);

J2OBJC_TYPE_LITERAL_HEADER(GsonGson)

@compatibility_alias ComGoogleGsonGson GsonGson;

#endif

#if !defined (GsonGson_FutureTypeAdapter_) && (INCLUDE_ALL_Gson || defined(INCLUDE_GsonGson_FutureTypeAdapter))
#define GsonGson_FutureTypeAdapter_

#define RESTRICT_TypeAdapter 1
#define INCLUDE_GsonTypeAdapter 1
#include "TypeAdapter.h"

@class GsonJsonReader;
@class GsonJsonWriter;

@interface GsonGson_FutureTypeAdapter : GsonTypeAdapter

#pragma mark Public

- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg;

- (void)setDelegateWithGsonTypeAdapter:(GsonTypeAdapter *)typeAdapter;

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonGson_FutureTypeAdapter)

FOUNDATION_EXPORT void GsonGson_FutureTypeAdapter_init(GsonGson_FutureTypeAdapter *self);

FOUNDATION_EXPORT GsonGson_FutureTypeAdapter *new_GsonGson_FutureTypeAdapter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonGson_FutureTypeAdapter *create_GsonGson_FutureTypeAdapter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(GsonGson_FutureTypeAdapter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_Gson")
