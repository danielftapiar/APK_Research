.class public Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;
.super Ljava/lang/Object;
.source "NewInstanceInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;->type:Ljava/lang/Class;

    .line 34
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
