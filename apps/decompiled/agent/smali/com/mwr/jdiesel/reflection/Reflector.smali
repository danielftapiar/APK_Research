.class public Lcom/mwr/jdiesel/reflection/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static construct(Ljava/lang/Class;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/Object;
    .locals 2
    .param p1, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 16
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v1, p1

    if-nez v1, :cond_0

    .line 17
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    invoke-static {p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getNativeArguments([Lcom/mwr/jdiesel/reflection/types/ReflectedType;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 19
    :cond_0
    invoke-static {p0, p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getConstructor(Ljava/lang/Class;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v1
.end method

.method private static getConstructor(Ljava/lang/Class;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Constructor;
    .locals 6
    .param p1, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "object":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 33
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 28
    :cond_1
    aget-object v0, v2, v1

    .line 29
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getNativeArguments([Lcom/mwr/jdiesel/reflection/types/ReflectedType;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mwr/jdiesel/reflection/Reflector;->hasCompatibleSignatures([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 37
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMethod(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "method_name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 45
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/mwr/jdiesel/reflection/Reflector;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 53
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v0

    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/mwr/jdiesel/reflection/Reflector;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNativeArguments([Lcom/mwr/jdiesel/reflection/types/ReflectedType;)[Ljava/lang/Object;
    .locals 3
    .param p0, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;

    .prologue
    .line 57
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Object;

    .line 59
    .local v1, "natives":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 62
    return-object v1

    .line 60
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static hasCompatibleSignatures([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4
    .param p0, "argument_types"    # [Ljava/lang/Class;
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 70
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_1

    .line 71
    const/4 v0, 0x1

    .line 73
    .local v0, "correct":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    const/4 v2, 0x1

    .line 80
    .end local v0    # "correct":Z
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 74
    .restart local v0    # "correct":Z
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, p1, v1

    aget-object v3, p0, v1

    invoke-static {v2, v3}, Lcom/mwr/jdiesel/reflection/Reflector;->isCompatible(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "correct":Z
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "method_name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 84
    array-length v0, p2

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0, p1, p2}, Lcom/mwr/jdiesel/reflection/Reflector;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mwr/jdiesel/reflection/Reflector;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p2}, Lcom/mwr/jdiesel/reflection/Reflector;->getNativeArguments([Lcom/mwr/jdiesel/reflection/types/ReflectedType;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static isCompatible(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mwr/jdiesel/reflection/Reflector;->isWrapperTypeOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMethodReturnPrimitive(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Z
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "method_name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1, p2}, Lcom/mwr/jdiesel/reflection/Reflector;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 102
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 105
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-direct {v2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isPropertyPrimitive(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method private static isWrapperTypeOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "primitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TYPE"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method private static lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Lcom/mwr/jdiesel/reflection/types/ReflectedType;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "method_name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/mwr/jdiesel/reflection/types/ReflectedType;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 133
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    aget-object v0, v2, v1

    .line 127
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {p2}, Lcom/mwr/jdiesel/reflection/Reflector;->getNativeArguments([Lcom/mwr/jdiesel/reflection/types/ReflectedType;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mwr/jdiesel/reflection/Reflector;->hasCompatibleSignatures([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    return-object v0

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static resolve(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/mwr/jdiesel/reflection/types/ReflectedType;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/mwr/jdiesel/reflection/types/ReflectedType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/mwr/jdiesel/reflection/Reflector;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mwr/jdiesel/reflection/types/ReflectedType;->getNative()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method
