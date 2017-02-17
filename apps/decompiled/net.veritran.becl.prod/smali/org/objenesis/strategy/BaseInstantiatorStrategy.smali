.class public abstract Lorg/objenesis/strategy/BaseInstantiatorStrategy;
.super Ljava/lang/Object;
.source "BaseInstantiatorStrategy.java"

# interfaces
.implements Lorg/objenesis/strategy/InstantiatorStrategy;


# static fields
.field protected static final GNU:Ljava/lang/String; = "GNU libgcj"

.field protected static final JROCKIT:Ljava/lang/String; = "BEA"

.field protected static final JVM_NAME:Ljava/lang/String;

.field protected static final PERC:Ljava/lang/String; = "PERC"

.field protected static final SUN:Ljava/lang/String; = "Java HotSpot"

.field protected static final VENDOR:Ljava/lang/String;

.field protected static final VENDOR_VERSION:Ljava/lang/String;

.field protected static final VM_INFO:Ljava/lang/String;

.field protected static final VM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/BaseInstantiatorStrategy;->VM_VERSION:Ljava/lang/String;

    .line 41
    const-string v0, "java.vm.info"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/BaseInstantiatorStrategy;->VM_INFO:Ljava/lang/String;

    .line 44
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/BaseInstantiatorStrategy;->VENDOR_VERSION:Ljava/lang/String;

    .line 47
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/BaseInstantiatorStrategy;->VENDOR:Ljava/lang/String;

    .line 50
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/BaseInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
