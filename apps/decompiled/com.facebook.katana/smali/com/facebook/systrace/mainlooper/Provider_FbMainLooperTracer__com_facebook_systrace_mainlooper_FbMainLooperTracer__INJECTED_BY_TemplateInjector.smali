.class public final Lcom/facebook/systrace/mainlooper/Provider_FbMainLooperTracer__com_facebook_systrace_mainlooper_FbMainLooperTracer__INJECTED_BY_TemplateInjector;
.super Lcom/facebook/inject/AbstractSingletonScopeProvider;
.source "SingletonProviderTemplate.java"


# direct methods
.method private constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/inject/AbstractSingletonScopeProvider;-><init>(Lcom/facebook/inject/InjectorLike;Z)V

    .line 25
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
            "Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/systrace/mainlooper/Provider_FbMainLooperTracer__com_facebook_systrace_mainlooper_FbMainLooperTracer__INJECTED_BY_TemplateInjector;

    invoke-direct {v0, p0}, Lcom/facebook/systrace/mainlooper/Provider_FbMainLooperTracer__com_facebook_systrace_mainlooper_FbMainLooperTracer__INJECTED_BY_TemplateInjector;-><init>(Lcom/facebook/inject/InjectorLike;)V

    return-object v0
.end method


# virtual methods
.method protected final onGetInstance(Lcom/facebook/inject/InjectorLike;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/mainlooper/FbMainLooperTracer;

    move-result-object v0

    return-object v0
.end method
