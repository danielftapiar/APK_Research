.class public final Lcom/facebook/ui/browser/Provider_TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider__com_facebook_common_util_TriState__com_facebook_ui_browser_gating_IsDalvikDistractExperimentEnabled__INJECTED_BY_TemplateInjector;
.super Lcom/facebook/inject/AbstractDefaultScopeProvider;
.source "DefaultProviderTemplate.java"


# direct methods
.method private constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/AbstractDefaultScopeProvider;-><init>(Lcom/facebook/inject/InjectorLike;Z)V

    .line 24
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/InjectorLike;",
            ")",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/ui/browser/Provider_TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider__com_facebook_common_util_TriState__com_facebook_ui_browser_gating_IsDalvikDistractExperimentEnabled__INJECTED_BY_TemplateInjector;

    invoke-direct {v0, p0}, Lcom/facebook/ui/browser/Provider_TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider__com_facebook_common_util_TriState__com_facebook_ui_browser_gating_IsDalvikDistractExperimentEnabled__INJECTED_BY_TemplateInjector;-><init>(Lcom/facebook/inject/InjectorLike;)V

    return-object v0
.end method


# virtual methods
.method protected final onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Lcom/facebook/ui/browser/TriState_IsDalvikDistractExperimentEnabledGatekeeperAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
