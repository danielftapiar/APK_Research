.class public final Lorg/objenesis/ObjenesisHelper;
.super Ljava/lang/Object;
.source "ObjenesisHelper.java"


# static fields
.field private static final OBJENESIS_SERIALIZER:Lorg/objenesis/Objenesis;

.field private static final OBJENESIS_STD:Lorg/objenesis/Objenesis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/objenesis/ObjenesisStd;

    invoke-direct {v0}, Lorg/objenesis/ObjenesisStd;-><init>()V

    sput-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_STD:Lorg/objenesis/Objenesis;

    .line 31
    new-instance v0, Lorg/objenesis/ObjenesisSerializer;

    invoke-direct {v0}, Lorg/objenesis/ObjenesisSerializer;-><init>()V

    sput-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_SERIALIZER:Lorg/objenesis/Objenesis;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 66
    sget-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_STD:Lorg/objenesis/Objenesis;

    invoke-interface {v0, p0}, Lorg/objenesis/Objenesis;->getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public static getSerializableObjectInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 78
    sget-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_SERIALIZER:Lorg/objenesis/Objenesis;

    invoke-interface {v0, p0}, Lorg/objenesis/Objenesis;->getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 43
    sget-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_STD:Lorg/objenesis/Objenesis;

    invoke-interface {v0, p0}, Lorg/objenesis/Objenesis;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newSerializableInstance(Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 54
    sget-object v0, Lorg/objenesis/ObjenesisHelper;->OBJENESIS_SERIALIZER:Lorg/objenesis/Objenesis;

    invoke-interface {v0, p0}, Lorg/objenesis/Objenesis;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method
