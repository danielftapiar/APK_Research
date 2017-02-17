.class public Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;
.super Ljava/lang/Object;
.source "XConfigSamplingManager.java"


# instance fields
.field private final a:Lcom/facebook/xconfig/core/XConfigReader;

.field private final b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;


# direct methods
.method public constructor <init>(Lcom/facebook/xconfig/core/XConfigReader;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    .line 26
    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 27
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;
    .locals 4
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    sget-object v2, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->b:Lcom/facebook/xconfig/core/XConfigSetting;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/xconfig/core/XConfigSetting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;

    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;->c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    new-instance v1, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$1;-><init>(Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager$Listener;)V

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->a(Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener$Listener;)V

    .line 38
    return-void
.end method
