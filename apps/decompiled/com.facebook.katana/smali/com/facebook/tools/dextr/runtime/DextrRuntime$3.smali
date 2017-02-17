.class final Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;
.super Ljava/lang/Object;
.source "DextrRuntime.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

.field final synthetic b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/NotificationControls;Lcom/facebook/tools/dextr/runtime/logger/TraceManager;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-virtual {v1, v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b(Z)V

    .line 111
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x3

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not start manual trace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b(Z)V

    .line 122
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$3;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V

    .line 123
    return-void
.end method
