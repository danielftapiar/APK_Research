.class Lcom/facebook/tools/dextr/runtime/logger/RealLogger$1;
.super Ljava/lang/ThreadLocal;
.source "RealLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/tools/dextr/runtime/logger/LogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/logger/RealLogger;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/RealLogger;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger$1;->a:Lcom/facebook/tools/dextr/runtime/logger/RealLogger;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/tools/dextr/runtime/logger/LogEntry;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger$1;->a()Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    move-result-object v0

    return-object v0
.end method
