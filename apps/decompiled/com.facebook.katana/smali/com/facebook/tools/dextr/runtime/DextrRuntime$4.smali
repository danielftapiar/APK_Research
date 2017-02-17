.class Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;
.super Ljava/lang/Object;
.source "DextrRuntime.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->a(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)Lcom/facebook/tools/dextr/runtime/NotificationControls;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Z)V

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    .line 149
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/DextrRuntime$4;->a:Lcom/facebook/tools/dextr/runtime/DextrRuntime;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/DextrRuntime;->d(Lcom/facebook/tools/dextr/runtime/DextrRuntime;)V

    .line 156
    :cond_0
    return-void
.end method
