.class public Lcom/facebook/ui/browser/TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/common/util/TriState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method private a()Lcom/facebook/common/util/TriState;
    .locals 2

    .prologue
    .line 12
    invoke-static {p0}, Lcom/facebook/gk/GatekeeperUtil;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/GatekeeperUtil;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/GatekeeperUtil;

    const-string v1, "android_in_app_browser_dalvik_distract_experiment"

    invoke-virtual {v0, v1}, Lcom/facebook/gk/GatekeeperUtil;->a(Ljava/lang/String;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/facebook/ui/browser/TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/util/TriState;
    .locals 2

    .prologue
    .line 12
    invoke-static {p0}, Lcom/facebook/gk/GatekeeperUtil;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/gk/GatekeeperUtil;

    move-result-object v0

    check-cast v0, Lcom/facebook/gk/GatekeeperUtil;

    const-string v1, "android_in_app_browser_dalvik_distract_experiment"

    invoke-virtual {v0, v1}, Lcom/facebook/gk/GatekeeperUtil;->a(Ljava/lang/String;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/facebook/ui/browser/TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider;->a()Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
