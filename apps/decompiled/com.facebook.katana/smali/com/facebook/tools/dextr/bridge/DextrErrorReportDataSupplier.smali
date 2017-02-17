.class public Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;
.super Ljava/lang/Object;
.source "DextrErrorReportDataSupplier.java"

# interfaces
.implements Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;->b()Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/DextrErrorReportDataSupplier;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "dextr"

    return-object v0
.end method
