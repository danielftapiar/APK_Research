.class public Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;
.super Lcom/facebook/xconfig/core/XConfig;
.source "SamplingXConfig.java"


# static fields
.field public static final a:Lcom/facebook/xconfig/core/XConfigName;

.field public static final b:Lcom/facebook/xconfig/core/XConfigSetting;

.field private static final c:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/xconfig/core/XConfigSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/xconfig/core/XConfigName;

    const-string v1, "dextr_sampling_config"

    invoke-direct {v0, v1}, Lcom/facebook/xconfig/core/XConfigName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->a:Lcom/facebook/xconfig/core/XConfigName;

    .line 20
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->a:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "sampling_config"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    .line 23
    sput-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->b:Lcom/facebook/xconfig/core/XConfigSetting;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->c:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->a:Lcom/facebook/xconfig/core/XConfigName;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->c:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0, v0, v1}, Lcom/facebook/xconfig/core/XConfig;-><init>(Lcom/facebook/xconfig/core/XConfigName;Lcom/google/common/collect/ImmutableSet;)V

    .line 29
    return-void
.end method

.method public static a()Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;->b()Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/sampling/SamplingXConfig;-><init>()V

    return-object v0
.end method
