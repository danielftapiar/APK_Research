.class public Lcl/santander/santanderCL/utils/ConverterUtil$ObjectConversionException;
.super Ljava/lang/RuntimeException;
.source "ConverterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/santanderCL/utils/ConverterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectConversionException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 964
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 968
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 975
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 971
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 972
    return-void
.end method
