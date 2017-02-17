.class public Lorg/objenesis/instantiator/basic/AccessibleInstantiator;
.super Lorg/objenesis/instantiator/basic/ConstructorInstantiator;
.source "AccessibleInstantiator.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/basic/ConstructorInstantiator;-><init>(Ljava/lang/Class;)V

    .line 30
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/AccessibleInstantiator;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/AccessibleInstantiator;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 33
    :cond_0
    return-void
.end method
