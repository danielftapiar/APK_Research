.class public Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;
.super Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;
.source "Sun13SerializationInstantiator.java"


# instance fields
.field private final superType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;-><init>(Ljava/lang/Class;)V

    .line 34
    invoke-static {p1}, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;->superType:Ljava/lang/Class;

    .line 35
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;->allocateNewObjectMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;->type:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;->superType:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
