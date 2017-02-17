.class Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;
.super Ljava/lang/Object;
.source "XConfigSamplingManager.java"

# interfaces
.implements Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;

.field final synthetic b:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;->b:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;->a:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;->a:Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;

    invoke-interface {v0}, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;->a()V

    .line 36
    return-void
.end method
