.class public abstract Lcom/facebook/inject/FbInjector;
.super Ljava/lang/Object;
.source "FbInjector.java"

# interfaces
.implements Lcom/facebook/inject/InjectorLike;


# static fields
.field private static final a:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/inject/ContextScopeAwareInjector;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/inject/FbInjectorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/inject/ContextKeyedLoadingCache;

    new-instance v1, Lcom/facebook/inject/FbInjector$ContextContextScopeAwareInjectorCacheLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/inject/FbInjector$ContextContextScopeAwareInjectorCacheLoader;-><init>(B)V

    invoke-direct {v0, v1}, Lcom/facebook/inject/ContextKeyedLoadingCache;-><init>(Lcom/google/common/cache/CacheLoader;)V

    sput-object v0, Lcom/facebook/inject/FbInjector;->a:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/facebook/inject/FbInjector;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/LoadingCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjector;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/facebook/common/process/PrivateProcessName;Z)Lcom/facebook/inject/FbInjector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;",
            "Lcom/facebook/common/process/PrivateProcessName;",
            "Z)",
            "Lcom/facebook/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/inject/FbInjectorImpl;

    invoke-static {}, Lcom/facebook/inject/ModuleVerificationConfiguration;->a()Lcom/facebook/inject/ModuleVerificationConfiguration;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/inject/FbInjectorImpl;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/facebook/inject/ModuleVerificationConfiguration;Lcom/facebook/common/process/PrivateProcessName;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Key",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Set;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 194
    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->a(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-static {v0, p1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0, p1, p1}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/inject/InjectableComponentWithoutContext;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "FbInjector.injectMe()"

    const v1, 0x62ad1591

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 241
    :try_start_0
    invoke-static {p2}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p0, p1}, Lcom/facebook/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const v0, 0x866b381

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    const v1, -0x7cd898f1

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/facebook/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid annotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->c(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/facebook/inject/FbInjectorProvider;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/facebook/inject/FbInjector;->b:Lcom/facebook/inject/FbInjectorProvider;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/facebook/inject/FbInjector;->b:Lcom/facebook/inject/FbInjectorProvider;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/FbInjectorProvider;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract b()Lcom/facebook/inject/ScopeAwareInjector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract g()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/facebook/inject/ScopeUnawareInjector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j()Lcom/facebook/inject/InjectorThreadStack;
.end method
