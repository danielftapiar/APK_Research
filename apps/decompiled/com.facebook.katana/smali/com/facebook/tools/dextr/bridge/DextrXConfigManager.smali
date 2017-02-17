.class public Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;
.super Ljava/lang/Object;
.source "DextrXConfigManager.java"


# instance fields
.field private final a:Lcom/facebook/xconfig/core/XConfigReader;

.field private final b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;


# direct methods
.method public constructor <init>(Lcom/facebook/xconfig/core/XConfigReader;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    .line 28
    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 29
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    .line 30
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;
    .locals 4

    .prologue
    .line 13
    new-instance v3, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    invoke-static {p0}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/xconfig/core/XConfigReader;

    move-result-object v0

    check-cast v0, Lcom/facebook/xconfig/core/XConfigReader;

    invoke-static {p0}, Lcom/facebook/common/json/FbObjectMapperMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/json/FbObjectMapper;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {p0}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    move-result-object v2

    check-cast v2, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;-><init>(Lcom/facebook/xconfig/core/XConfigReader;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;)V

    return-object v3
.end method


# virtual methods
.method public final a()Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;

    iget-object v1, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->c:Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/tools/dextr/bridge/sampling/XConfigSamplingManager;-><init>(Lcom/facebook/xconfig/core/XConfigReader;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfigSyncListener;)V

    return-object v0
.end method

.method public final b()Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    iget-object v1, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    invoke-direct {v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;-><init>(Lcom/facebook/xconfig/core/XConfigReader;)V

    return-object v0
.end method
