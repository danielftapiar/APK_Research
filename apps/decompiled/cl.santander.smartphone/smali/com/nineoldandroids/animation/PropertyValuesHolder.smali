.class public Lcom/nineoldandroids/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/PropertyValuesHolder$1;,
        Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

.field protected mProperty:Lcom/nineoldandroids/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 81
    new-instance v0, Lcom/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/nineoldandroids/util/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/Property;

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/util/Property;
    .param p2, "x1"    # Lcom/nineoldandroids/animation/PropertyValuesHolder$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/nineoldandroids/animation/PropertyValuesHolder$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 725
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 731
    .end local p0    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 729
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 730
    .local v0, "firstLetter":C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 13
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    .prologue
    .line 381
    const/4 v6, 0x0

    .line 382
    .local v6, "returnVal":Ljava/lang/reflect/Method;
    iget-object v10, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v10}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "methodName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 384
    .local v0, "args":[Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    move-object v7, v6

    .line 421
    .end local v6    # "returnVal":Ljava/lang/reflect/Method;
    .local v7, "returnVal":Ljava/lang/reflect/Method;
    :goto_1
    return-object v7

    .line 387
    .end local v7    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v6    # "returnVal":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find no-arg method for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    .line 394
    iget-object v10, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 395
    sget-object v9, Lcom/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 404
    .local v9, "typeVariants":[Ljava/lang/Class;
    :goto_2
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v8, v1, v3

    .line 405
    .local v8, "typeVariant":Ljava/lang/Class;
    const/4 v10, 0x0

    aput-object v8, v0, v10

    .line 407
    :try_start_1
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 409
    iput-object v8, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v6

    .line 410
    .end local v6    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v7    # "returnVal":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 396
    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "returnVal":Ljava/lang/reflect/Method;
    .end local v8    # "typeVariant":Ljava/lang/Class;
    .end local v9    # "typeVariants":[Ljava/lang/Class;
    .restart local v6    # "returnVal":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v10, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 397
    sget-object v9, Lcom/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .restart local v9    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 398
    .end local v9    # "typeVariants":[Ljava/lang/Class;
    :cond_2
    iget-object v10, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Double;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 399
    sget-object v9, Lcom/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .restart local v9    # "typeVariants":[Ljava/lang/Class;
    goto :goto_2

    .line 401
    .end local v9    # "typeVariants":[Ljava/lang/Class;
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Class;

    .line 402
    .restart local v9    # "typeVariants":[Ljava/lang/Class;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v11, v9, v10

    goto :goto_2

    .line 411
    .restart local v1    # "arr$":[Ljava/lang/Class;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v8    # "typeVariant":Ljava/lang/Class;
    :catch_1
    move-exception v10

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 416
    .end local v8    # "typeVariant":Ljava/lang/Class;
    :cond_4
    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find setter/getter for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with value type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static varargs ofFloat(Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "property":Lcom/nineoldandroids/util/Property;, "Lcom/nineoldandroids/util/Property<*Ljava/lang/Float;>;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 176
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lcom/nineoldandroids/util/Property;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "property":Lcom/nineoldandroids/util/Property;, "Lcom/nineoldandroids/util/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 154
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lcom/nineoldandroids/util/Property;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "property"    # Lcom/nineoldandroids/util/Property;
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .prologue
    .line 281
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 282
    .local v0, "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    instance-of v2, v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 283
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/IntKeyframeSet;)V

    .line 291
    :goto_0
    return-object v1

    .line 284
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 285
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 288
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    .line 289
    .local v1, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 290
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .prologue
    .line 250
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 251
    .local v0, "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    instance-of v2, v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 252
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/IntKeyframeSet;)V

    .line 260
    :goto_0
    return-object v1

    .line 253
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 254
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    .end local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 257
    .restart local v0    # "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 259
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofObject(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "property"    # Lcom/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nineoldandroids/util/Property;",
            "Lcom/nineoldandroids/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "evaluator":Lcom/nineoldandroids/animation/TypeEvaluator;, "Lcom/nineoldandroids/animation/TypeEvaluator<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    .line 225
    .local v0, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 227
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Lcom/nineoldandroids/animation/TypeEvaluator;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 204
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 207
    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 474
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 475
    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 438
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v2, 0x0

    .line 443
    .local v2, "setterOrGetter":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 444
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 445
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_0

    .line 446
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    .line 448
    :cond_0
    if-nez v2, :cond_2

    .line 449
    invoke-direct {p0, p1, p3, p4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 450
    if-nez v1, :cond_1

    .line 451
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 452
    .restart local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 459
    return-object v2

    .line 457
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method private setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Lcom/nineoldandroids/animation/Keyframe;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v2, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 536
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 538
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 540
    .end local v1    # "targetClass":Ljava/lang/Class;
    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 652
    return-void
.end method

.method public clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 3

    .prologue
    .line 575
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 576
    .local v1, "newPVH":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 577
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 578
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/KeyframeSet;->clone()Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 579
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v1    # "newPVH":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    :goto_0
    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 627
    :cond_1
    return-void

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 601
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :cond_1
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/nineoldandroids/animation/TypeEvaluator;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 641
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 642
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 328
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofFloat([F)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 329
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 309
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 310
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofInt([I)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 311
    return-void
.end method

.method public varargs setKeyframes([Lcom/nineoldandroids/animation/Keyframe;)V
    .locals 4
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .prologue
    .line 337
    array-length v2, p1

    .line 338
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe;

    .line 339
    .local v1, "keyframes":[Lcom/nineoldandroids/animation/Keyframe;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 341
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    new-instance v3, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    iput-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 344
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 360
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 361
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 362
    return-void
.end method

.method public setProperty(Lcom/nineoldandroids/util/Property;)V
    .locals 0
    .param p1, "property"    # Lcom/nineoldandroids/util/Property;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 683
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 671
    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, v1, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V

    .line 570
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 467
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 468
    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 8
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 488
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v5, :cond_1

    .line 491
    :try_start_0
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v5, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 492
    .local v4, "testValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v5, v5, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Keyframe;

    .line 493
    .local v2, "kf":Lcom/nineoldandroids/animation/Keyframe;
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v5, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    .end local v4    # "testValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v5, "PropertyValuesHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such property ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v7}, Lcom/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on target object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Trying reflection instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 504
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 505
    .local v3, "targetClass":Ljava/lang/Class;
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    .line 506
    invoke-virtual {p0, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 508
    :cond_2
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v5, v5, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Keyframe;

    .line 509
    .restart local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 510
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 511
    invoke-direct {p0, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 514
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    .end local v3    # "targetClass":Ljava/lang/Class;
    :cond_5
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V

    .line 558
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
