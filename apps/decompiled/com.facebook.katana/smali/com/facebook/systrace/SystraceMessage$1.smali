.class final Lcom/facebook/systrace/SystraceMessage$1;
.super Ljava/lang/ThreadLocal;
.source "SystraceMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/systrace/SystraceMessage$RealBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/systrace/SystraceMessage$RealBuilder;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/systrace/SystraceMessage$RealBuilder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/systrace/SystraceMessage$1;->a()Lcom/facebook/systrace/SystraceMessage$RealBuilder;

    move-result-object v0

    return-object v0
.end method
