.class public Lorg/objenesis/strategy/StdInstantiatorStrategy;
.super Lorg/objenesis/strategy/BaseInstantiatorStrategy;
.source "StdInstantiatorStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/objenesis/strategy/BaseInstantiatorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 51
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "Java HotSpot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_VERSION:Ljava/lang/String;

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    new-instance v0, Lorg/objenesis/instantiator/sun/Sun13Instantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/Sun13Instantiator;-><init>(Ljava/lang/Class;)V

    .line 85
    :goto_0
    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "BEA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_VERSION:Ljava/lang/String;

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_VERSION:Ljava/lang/String;

    const-string v1, "1.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VENDOR_VERSION:Ljava/lang/String;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 67
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_INFO:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_INFO:Ljava/lang/String;

    const-string v1, "R25.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->VM_INFO:Ljava/lang/String;

    const-string v1, "R25.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    :cond_2
    new-instance v0, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 73
    :cond_3
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "GNU libgcj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    new-instance v0, Lorg/objenesis/instantiator/gcj/GCJInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/gcj/GCJInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 76
    :cond_4
    sget-object v0, Lorg/objenesis/strategy/StdInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "PERC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    new-instance v0, Lorg/objenesis/instantiator/perc/PercInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/perc/PercInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    :cond_5
    new-instance v0, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method
