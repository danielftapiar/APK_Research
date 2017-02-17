.class public Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;
.super Ljava/lang/Object;
.source "SunReflectionFactorySerializationInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# instance fields
.field private final mungedConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "nonSerializableAncestor":Ljava/lang/Class;
    invoke-static {}, Lsun/reflect/ReflectionFactory;->getReflectionFactory()Lsun/reflect/ReflectionFactory;

    move-result-object v3

    .line 47
    .local v3, "reflectionFactory":Lsun/reflect/ReflectionFactory;
    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .local v2, "nonSerializableAncestorConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v3, p1, v2}, Lsun/reflect/ReflectionFactory;->newConstructorForSerialization(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iput-object v4, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    .line 62
    iget-object v4, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 63
    return-void

    .line 50
    .end local v2    # "nonSerializableAncestorConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/objenesis/ObjenesisException;

    new-instance v5, Ljava/io/NotSerializableException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " has no suitable superclass constructor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
