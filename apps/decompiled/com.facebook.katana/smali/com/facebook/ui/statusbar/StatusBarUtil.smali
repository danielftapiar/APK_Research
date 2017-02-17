.class public Lcom/facebook/ui/statusbar/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile c:Lcom/facebook/ui/statusbar/StatusBarUtil;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    .line 26
    iput-object p1, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->a:Landroid/content/res/Resources;

    .line 27
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/ui/statusbar/StatusBarUtil;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/ui/statusbar/StatusBarUtil;->c:Lcom/facebook/ui/statusbar/StatusBarUtil;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/ui/statusbar/StatusBarUtil;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/ui/statusbar/StatusBarUtil;->c:Lcom/facebook/ui/statusbar/StatusBarUtil;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/InjectorLike;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ui/statusbar/StatusBarUtil;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/ui/statusbar/StatusBarUtil;

    move-result-object v0

    sput-object v0, Lcom/facebook/ui/statusbar/StatusBarUtil;->c:Lcom/facebook/ui/statusbar/StatusBarUtil;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/ui/statusbar/StatusBarUtil;->c:Lcom/facebook/ui/statusbar/StatusBarUtil;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/ui/statusbar/StatusBarUtil;
    .locals 2

    .prologue
    .line 13
    new-instance v1, Lcom/facebook/ui/statusbar/StatusBarUtil;

    invoke-static {p0}, Lcom/facebook/common/android/ResourcesMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {v1, v0}, Lcom/facebook/ui/statusbar/StatusBarUtil;-><init>(Landroid/content/res/Resources;)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    if-lez v0, :cond_0

    .line 36
    iget v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    .line 60
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->a:Landroid/content/res/Resources;

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    if-lez v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 44
    if-lez v0, :cond_1

    .line 45
    iput v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    .line 46
    iget v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ui/statusbar/StatusBarUtil;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    .line 60
    iget v0, p0, Lcom/facebook/ui/statusbar/StatusBarUtil;->b:I

    goto :goto_0
.end method
