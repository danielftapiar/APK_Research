.class public Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;
.super Ljava/lang/Object;
.source "GcOptimizerGKHelper.java"

# interfaces
.implements Lcom/facebook/common/init/INeedInit;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/NeedsApplicationInjector;
        .end annotation
    .end param
    .param p2    # Ljavax/inject/Provider;
        .annotation runtime Lcom/facebook/common/gcinitopt/IsGcOptimizationEnabled;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->b:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;
    .locals 3

    .prologue
    .line 13
    new-instance v1, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;

    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/facebook/inject/FbInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lcom/facebook/common/gcinitopt/Provider_TriState_IsGcOptimizationEnabledGatekeeperAutoProvider__com_facebook_common_util_TriState__com_facebook_common_gcinitopt_IsGcOptimizationEnabled__INJECTED_BY_TemplateInjector;->a(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;-><init>(Landroid/content/Context;Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/common/gcinitopt/GcOptimizerGKHelper;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TriState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/common/util/TriState;->asBoolean(Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/common/gcinitopt/GcOptimizer;->a(Landroid/content/Context;Z)V

    .line 31
    return-void
.end method
