.class public Lcom/facebook/SharedPreferencesTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "SharedPreferencesTokenCachingStrategy.java"


# static fields
.field private static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V

    .line 104
    const-string v1, "context"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    .end local p2    # "cacheKey":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;

    .line 116
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    .line 117
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v11, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    const-string v12, "{}"

    invoke-interface {v11, p1, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "jsonString":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v4, "json":Lorg/json/JSONObject;
    const-string v11, "valueType"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "valueType":Ljava/lang/String;
    const-string v11, "bool"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 302
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v11, "bool[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 304
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 305
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [Z

    .line 306
    .local v0, "array":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v0

    if-lt v3, v11, :cond_2

    .line 309
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v11

    aput-boolean v11, v0, v3

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "array":[Z
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string v11, "byte"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 311
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-byte v11, v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 312
    :cond_4
    const-string v11, "byte[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 313
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 314
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [B

    .line 315
    .local v0, "array":[B
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v11, v0

    if-lt v3, v11, :cond_5

    .line 318
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 316
    :cond_5
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v0, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 319
    .end local v0    # "array":[B
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    const-string v11, "short"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 320
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-short v11, v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_0

    .line 321
    :cond_7
    const-string v11, "short[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 322
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 323
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [S

    .line 324
    .local v0, "array":[S
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v11, v0

    if-lt v3, v11, :cond_8

    .line 327
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 325
    :cond_8
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v0, v3

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 328
    .end local v0    # "array":[S
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string v11, "int"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 329
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 330
    :cond_a
    const-string v11, "int[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 331
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 332
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [I

    .line 333
    .local v0, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v11, v0

    if-lt v3, v11, :cond_b

    .line 336
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 334
    :cond_b
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    aput v11, v0, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 337
    .end local v0    # "array":[I
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v11, "long"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 338
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {p2, p1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 339
    :cond_d
    const-string v11, "long[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 340
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 341
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [J

    .line 342
    .local v0, "array":[J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v11, v0

    if-lt v3, v11, :cond_e

    .line 345
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 343
    :cond_e
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v11

    aput-wide v11, v0, v3

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 346
    .end local v0    # "array":[J
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string v11, "float"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 347
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 348
    :cond_10
    const-string v11, "float[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 349
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 350
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [F

    .line 351
    .local v0, "array":[F
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    array-length v11, v0

    if-lt v3, v11, :cond_11

    .line 354
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 352
    :cond_11
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    double-to-float v11, v11

    aput v11, v0, v3

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 355
    .end local v0    # "array":[F
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v11, "double"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 356
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {p2, p1, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 357
    :cond_13
    const-string v11, "double[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 358
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 359
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [D

    .line 360
    .local v0, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    array-length v11, v0

    if-lt v3, v11, :cond_14

    .line 363
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 361
    :cond_14
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    aput-wide v11, v0, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 364
    .end local v0    # "array":[D
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string v11, "char"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 365
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "charString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 367
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 369
    .end local v1    # "charString":Ljava/lang/String;
    :cond_16
    const-string v11, "char[]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 370
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 371
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v0, v11, [C

    .line 372
    .local v0, "array":[C
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    array-length v11, v0

    if-lt v3, v11, :cond_17

    .line 378
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 373
    :cond_17
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1    # "charString":Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    .line 375
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v0, v3

    .line 372
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 379
    .end local v0    # "array":[C
    .end local v1    # "charString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_19
    const-string v11, "string"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 380
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, p1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :cond_1a
    const-string v11, "stringList"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 382
    const-string v11, "value"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 383
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 384
    .local v8, "numStrings":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v9, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9
    if-lt v3, v8, :cond_1b

    .line 389
    invoke-virtual {p2, p1, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 386
    :cond_1b
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 387
    .local v7, "jsonStringValue":Ljava/lang/Object;
    sget-object v11, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v7, v11, :cond_1c

    const/4 v7, 0x0

    .end local v7    # "jsonStringValue":Ljava/lang/Object;
    :goto_a
    invoke-virtual {v9, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 387
    .restart local v7    # "jsonStringValue":Ljava/lang/Object;
    :cond_1c
    check-cast v7, Ljava/lang/String;

    goto :goto_a

    .line 390
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonStringValue":Ljava/lang/Object;
    .end local v8    # "numStrings":I
    .end local v9    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    const-string v11, "enum"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 392
    :try_start_0
    const-string v11, "enumType"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 396
    const-string v12, "value"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    .line 397
    .local v2, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 398
    .end local v2    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v11

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 182
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 183
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 292
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 189
    .local v3, "supportedType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v0, "json":Lorg/json/JSONObject;
    instance-of v8, v6, Ljava/lang/Byte;

    if-eqz v8, :cond_4

    .line 193
    const-string v3, "byte"

    .line 194
    const-string v7, "value"

    check-cast v6, Ljava/lang/Byte;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Byte;->intValue()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 282
    const-string v7, "valueType"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    if-eqz v1, :cond_3

    .line 286
    const-string v7, "value"

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "jsonString":Ljava/lang/String;
    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 195
    .end local v2    # "jsonString":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v8, v6, Ljava/lang/Short;

    if-eqz v8, :cond_5

    .line 196
    const-string v3, "short"

    .line 197
    const-string v7, "value"

    check-cast v6, Ljava/lang/Short;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Short;->intValue()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 198
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_6

    .line 199
    const-string v3, "int"

    .line 200
    const-string v7, "value"

    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 201
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_7

    .line 202
    const-string v3, "long"

    .line 203
    const-string v7, "value"

    check-cast v6, Ljava/lang/Long;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 204
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v8, v6, Ljava/lang/Float;

    if-eqz v8, :cond_8

    .line 205
    const-string v3, "float"

    .line 206
    const-string v7, "value"

    check-cast v6, Ljava/lang/Float;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 207
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_9

    .line 208
    const-string v3, "double"

    .line 209
    const-string v7, "value"

    check-cast v6, Ljava/lang/Double;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 210
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v8, v6, Ljava/lang/Boolean;

    if-eqz v8, :cond_a

    .line 211
    const-string v3, "bool"

    .line 212
    const-string v7, "value"

    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 213
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v8, v6, Ljava/lang/Character;

    if-eqz v8, :cond_b

    .line 214
    const-string v3, "char"

    .line 215
    const-string v7, "value"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 216
    :cond_b
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 217
    const-string v3, "string"

    .line 218
    const-string v7, "value"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 219
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v8, v6, Ljava/lang/Enum;

    if-eqz v8, :cond_d

    .line 220
    const-string v3, "enum"

    .line 221
    const-string v7, "value"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v7, "enumType"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 226
    :cond_d
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 227
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    instance-of v8, v6, [B

    if-eqz v8, :cond_e

    .line 228
    const-string v3, "byte[]"

    .line 229
    check-cast v6, [B

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_2
    if-ge v7, v8, :cond_2

    aget-byte v4, v6, v7

    .line 230
    .local v4, "v":B
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 232
    .end local v4    # "v":B
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v8, v6, [S

    if-eqz v8, :cond_f

    .line 233
    const-string v3, "short[]"

    .line 234
    check-cast v6, [S

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_3
    if-ge v7, v8, :cond_2

    aget-short v4, v6, v7

    .line 235
    .local v4, "v":S
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 234
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 237
    .end local v4    # "v":S
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v8, v6, [I

    if-eqz v8, :cond_10

    .line 238
    const-string v3, "int[]"

    .line 239
    check-cast v6, [I

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_4
    if-ge v7, v8, :cond_2

    aget v4, v6, v7

    .line 240
    .local v4, "v":I
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 242
    .end local v4    # "v":I
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v8, v6, [J

    if-eqz v8, :cond_11

    .line 243
    const-string v3, "long[]"

    .line 244
    check-cast v6, [J

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_5
    if-ge v7, v8, :cond_2

    aget-wide v4, v6, v7

    .line 245
    .local v4, "v":J
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 244
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 247
    .end local v4    # "v":J
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v8, v6, [F

    if-eqz v8, :cond_12

    .line 248
    const-string v3, "float[]"

    .line 249
    check-cast v6, [F

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_6
    if-ge v7, v8, :cond_2

    aget v4, v6, v7

    .line 250
    .local v4, "v":F
    float-to-double v9, v4

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 249
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 252
    .end local v4    # "v":F
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v8, v6, [D

    if-eqz v8, :cond_13

    .line 253
    const-string v3, "double[]"

    .line 254
    check-cast v6, [D

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_7
    if-ge v7, v8, :cond_2

    aget-wide v4, v6, v7

    .line 255
    .local v4, "v":D
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 257
    .end local v4    # "v":D
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_13
    instance-of v8, v6, [Z

    if-eqz v8, :cond_14

    .line 258
    const-string v3, "bool[]"

    .line 259
    check-cast v6, [Z

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_8
    if-ge v7, v8, :cond_2

    aget-boolean v4, v6, v7

    .line 260
    .local v4, "v":Z
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 259
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 262
    .end local v4    # "v":Z
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v8, v6, [C

    if-eqz v8, :cond_15

    .line 263
    const-string v3, "char[]"

    .line 264
    check-cast v6, [C

    .end local v6    # "value":Ljava/lang/Object;
    array-length v8, v6

    :goto_9
    if-ge v7, v8, :cond_2

    aget-char v4, v6, v7

    .line 265
    .local v4, "v":C
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 264
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 267
    .end local v4    # "v":C
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_15
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_17

    .line 268
    const-string v3, "stringList"

    .line 270
    check-cast v6, Ljava/util/List;

    .line 271
    .end local v6    # "value":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 272
    .local v4, "v":Ljava/lang/String;
    if-nez v4, :cond_16

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v4    # "v":Ljava/lang/String;
    :cond_16
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 277
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 125
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v2, "settings":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 129
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    .end local v2    # "settings":Landroid/os/Bundle;
    :goto_1
    return-object v2

    .line 129
    .restart local v2    # "settings":Landroid/os/Bundle;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x5

    sget-object v5, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error reading cached value for key: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x5

    .line 151
    const-string v3, "bundle"

    invoke-static {p1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 168
    if-nez v3, :cond_0

    .line 169
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v4, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    const-string v5, "SharedPreferences.Editor.commit() was not successful"

    invoke-static {v3, v7, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 155
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2, p1, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v4, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error processing value for key: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v7, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
