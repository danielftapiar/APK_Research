.class public Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;
.super Ljava/lang/Object;
.source "Kryo.java"

# interfaces
.implements Lorg/objenesis/strategy/InstantiatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/Kryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInstantiatorStrategy"
.end annotation


# instance fields
.field private fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackInstantiatorStrategy()Lorg/objenesis/strategy/InstantiatorStrategy;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    return-object v0
.end method

.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 9
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x1

    .line 1182
    sget-boolean v6, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v6, :cond_1

    .line 1184
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    .line 1185
    .local v3, "enclosingType":Ljava/lang/Class;
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1187
    .local v5, "isNonStaticMemberClass":Z
    :goto_0
    if-nez v5, :cond_1

    .line 1189
    :try_start_0
    invoke-static {p1}, Lcom/esotericsoftware/reflectasm/ConstructorAccess;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/ConstructorAccess;

    move-result-object v0

    .line 1190
    .local v0, "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    new-instance v6, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy$1;-><init>(Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;Lcom/esotericsoftware/reflectasm/ConstructorAccess;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    .end local v0    # "access":Lcom/esotericsoftware/reflectasm/ConstructorAccess;
    .end local v3    # "enclosingType":Ljava/lang/Class;
    .end local v5    # "isNonStaticMemberClass":Z
    :goto_1
    return-object v6

    .line 1185
    .restart local v3    # "enclosingType":Ljava/lang/Class;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1199
    .restart local v5    # "isNonStaticMemberClass":Z
    :catch_0
    move-exception v6

    .line 1207
    .end local v3    # "enclosingType":Ljava/lang/Class;
    .end local v5    # "isNonStaticMemberClass":Z
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1212
    .local v2, "ctor":Ljava/lang/reflect/Constructor;
    :goto_2
    move-object v1, v2

    .line 1213
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    :try_start_2
    new-instance v6, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy$2;

    invoke-direct {v6, p0, v1, p1}, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy$2;-><init>(Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1222
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v6

    .line 1224
    iget-object v6, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    if-nez v6, :cond_3

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1226
    new-instance v6, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class cannot be created (non-static member class): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1208
    :catch_2
    move-exception v4

    .line 1209
    .local v4, "ex":Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_3
    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1210
    .restart local v2    # "ctor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1228
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v6, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class cannot be created (missing no-arg constructor): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1231
    :cond_3
    iget-object v6, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v6, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v6

    goto :goto_1
.end method

.method public setFallbackInstantiatorStrategy(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 0
    .param p1, "fallbackStrategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;->fallbackStrategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 1175
    return-void
.end method
