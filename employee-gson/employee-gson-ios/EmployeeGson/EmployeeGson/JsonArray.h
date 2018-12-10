//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./src/main/java/com/google/gson/JsonArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonArray")
#ifdef RESTRICT_JsonArray
#define INCLUDE_ALL_JsonArray 0
#else
#define INCLUDE_ALL_JsonArray 1
#endif
#undef RESTRICT_JsonArray

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GsonJsonArray_) && (INCLUDE_ALL_JsonArray || defined(INCLUDE_GsonJsonArray))
#define GsonJsonArray_

#define RESTRICT_JsonElement 1
#define INCLUDE_GsonJsonElement 1
#include "JsonElement.h"

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class JavaLangBoolean;
@class JavaLangCharacter;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilIterator;
@protocol JavaUtilSpliterator;

/*!
 @brief A class representing an array type in Json.An array is a list of <code>JsonElement</code>s each of
  which can be of a different type.
 This is an ordered list, meaning that the order in which
  elements are added is preserved.
 @author Inderjeet Singh
 @author Joel Leitch
 */
@interface GsonJsonArray : GsonJsonElement < JavaLangIterable >

#pragma mark Public

/*!
 @brief Creates an empty JsonArray.
 */
- (instancetype __nonnull)init;

/*!
 @brief Adds the specified boolean to self.
 @param bool_ the boolean that needs to be added to the array.
 */
- (void)addWithJavaLangBoolean:(JavaLangBoolean *)bool_;

/*!
 @brief Adds the specified character to self.
 @param character the character that needs to be added to the array.
 */
- (void)addWithJavaLangCharacter:(JavaLangCharacter *)character;

/*!
 @brief Adds the specified element to self.
 @param element the element that needs to be added to the array.
 */
- (void)addWithGsonJsonElement:(GsonJsonElement *)element;

/*!
 @brief Adds the specified number to self.
 @param number the number that needs to be added to the array.
 */
- (void)addWithNSNumber:(NSNumber *)number;

/*!
 @brief Adds the specified string to self.
 @param string the string that needs to be added to the array.
 */
- (void)addWithNSString:(NSString *)string;

/*!
 @brief Adds all the elements of the specified array to self.
 @param array the array whose elements need to be added to the array.
 */
- (void)addAllWithGsonJsonArray:(GsonJsonArray *)array;

/*!
 @brief Returns true if this array contains the specified element.
 @return true if this array contains the specified element.
 @param element whose presence in this array is to be tested
 @since 2.3
 */
- (jboolean)containsWithGsonJsonElement:(GsonJsonElement *)element;

- (jboolean)isEqual:(id)o;

/*!
 @brief Returns the ith element of the array.
 @param i the index of the element that is being sought.
 @return the element present at the ith index.
 @throw IndexOutOfBoundsExceptionif i is negative or greater than or equal to the 
 <code>size()</code> of the array.
 */
- (GsonJsonElement *)getWithInt:(jint)i;

/*!
 @brief convenience method to get this array as a <code>BigDecimal</code> if it contains a single element.
 @return get this element as a <code>BigDecimal</code> if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code>.
 @throw NumberFormatExceptionif the element at index 0 is not a valid <code>BigDecimal</code>.
 @throw IllegalStateExceptionif the array has more than one element.
 @since 1.2
 */
- (JavaMathBigDecimal *)getAsBigDecimal;

/*!
 @brief convenience method to get this array as a <code>BigInteger</code> if it contains a single element.
 @return get this element as a <code>BigInteger</code> if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code>.
 @throw NumberFormatExceptionif the element at index 0 is not a valid <code>BigInteger</code>.
 @throw IllegalStateExceptionif the array has more than one element.
 @since 1.2
 */
- (JavaMathBigInteger *)getAsBigInteger;

/*!
 @brief convenience method to get this array as a boolean if it contains a single element.
 @return get this element as a boolean if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid boolean.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jboolean)getAsBoolean;

- (jbyte)getAsByte;

- (jchar)getAsCharacter;

/*!
 @brief convenience method to get this array as a double if it contains a single element.
 @return get this element as a double if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid double.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jdouble)getAsDouble;

/*!
 @brief convenience method to get this array as a float if it contains a single element.
 @return get this element as a float if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid float.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jfloat)getAsFloat;

/*!
 @brief convenience method to get this array as an integer if it contains a single element.
 @return get this element as an integer if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid integer.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jint)getAsInt;

/*!
 @brief convenience method to get this array as a long if it contains a single element.
 @return get this element as a long if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid long.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jlong)getAsLong;

/*!
 @brief convenience method to get this array as a <code>Number</code> if it contains a single element.
 @return get this element as a number if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid Number.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (NSNumber *)getAsNumber;

/*!
 @brief convenience method to get this array as a primitive short if it contains a single element.
 @return get this element as a primitive short if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid short.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (jshort)getAsShort;

/*!
 @brief convenience method to get this array as a <code>String</code> if it contains a single element.
 @return get this element as a String if it is single element array.
 @throw ClassCastExceptionif the element in the array is of not a <code>JsonPrimitive</code> and
  is not a valid String.
 @throw IllegalStateExceptionif the array has more than one element.
 */
- (NSString *)getAsString;

- (NSUInteger)hash;

/*!
 @brief Returns an iterator to navigate the elements of the array.Since the array is an ordered list,
  the iterator navigates the elements in the order they were inserted.
 @return an iterator to navigate the elements of the array.
 */
- (id<JavaUtilIterator>)iterator;

/*!
 @brief Removes the element at the specified position in this array.Shifts any subsequent elements
  to the left (subtracts one from their indices).
 Returns the element that was removed from
  the array.
 @param index index the index of the element to be removed
 @return the element previously at the specified position
 @throw IndexOutOfBoundsExceptionif the specified index is outside the array bounds
 @since 2.3
 */
- (GsonJsonElement *)removeWithInt:(jint)index;

/*!
 @brief Removes the first occurrence of the specified element from this array, if it is present.
 If the array does not contain the element, it is unchanged.
 @param element element to be removed from this array, if present
 @return true if this array contained the specified element, false otherwise
 @since 2.3
 */
- (jboolean)removeWithGsonJsonElement:(GsonJsonElement *)element;

/*!
 @brief Replaces the element at the specified position in this array with the specified element.
 Element can be null.
 @param index index of the element to replace
 @param element element to be stored at the specified position
 @return the element previously at the specified position
 @throw IndexOutOfBoundsExceptionif the specified index is outside the array bounds
 */
- (GsonJsonElement *)setWithInt:(jint)index
            withGsonJsonElement:(GsonJsonElement *)element;

/*!
 @brief Returns the number of elements in the array.
 @return the number of elements in the array.
 */
- (jint)size;

#pragma mark Package-Private

- (GsonJsonArray *)deepCopy;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonArray)

FOUNDATION_EXPORT void GsonJsonArray_init(GsonJsonArray *self);

FOUNDATION_EXPORT GsonJsonArray *new_GsonJsonArray_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonArray *create_GsonJsonArray_init(void);

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonArray)

@compatibility_alias ComGoogleGsonJsonArray GsonJsonArray;

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JsonArray")
