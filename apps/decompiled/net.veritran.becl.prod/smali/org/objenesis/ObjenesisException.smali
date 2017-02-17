.class public Lorg/objenesis/ObjenesisException;
.super Ljava/lang/RuntimeException;
.source "ObjenesisException.java"


# static fields
.field private static final jdk14:Z

.field private static final serialVersionUID:J = -0x25276e83e555d158L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/objenesis/ObjenesisException;->jdk14:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lorg/objenesis/ObjenesisException;->jdk14:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Lorg/objenesis/ObjenesisException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    sget-boolean v0, Lorg/objenesis/ObjenesisException;->jdk14:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lorg/objenesis/ObjenesisException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
