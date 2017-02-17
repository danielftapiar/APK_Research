.class public Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;
.super Ljava/lang/Object;
.source "UploadConstraints.java"


# instance fields
.field private final a:Lcom/facebook/prefs/shared/FbSharedPreferences;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/inject/FbInjector;

.field private final d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Landroid/content/Context;Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/prefs/shared/FbSharedPreferencesImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/prefs/shared/FbSharedPreferences;

    iput-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    .line 31
    iput-object p2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/inject/FbInjector;

    .line 33
    iput-object p3, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    .line 36
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c(J)V

    .line 37
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d(J)V

    .line 38
    return-void
.end method

.method private declared-synchronized b(J)V
    .locals 7

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->f()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 92
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    .line 94
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->b()J

    move-result-wide v4

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c(J)V

    .line 95
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->e()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v4}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->c()J

    move-result-wide v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b(J)V

    .line 88
    return-void
.end method

.method private c(J)V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences;->c()Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->c:Lcom/facebook/prefs/shared/PrefKey;

    iget-object v2, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d:Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;->a()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a(Lcom/facebook/prefs/shared/PrefKey;J)Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a()V

    .line 110
    return-void
.end method

.method private d()J
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->c:Lcom/facebook/prefs/shared/PrefKey;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences;->c()Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->d:Lcom/facebook/prefs/shared/PrefKey;

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a(Lcom/facebook/prefs/shared/PrefKey;J)Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/prefs/shared/FbSharedPreferences$Editor;->a()V

    .line 123
    return-void
.end method

.method private e()J
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->a:Lcom/facebook/prefs/shared/FbSharedPreferences;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->d:Lcom/facebook/prefs/shared/PrefKey;

    invoke-static {}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->f()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/prefs/shared/FbSharedPreferences;->a(Lcom/facebook/prefs/shared/PrefKey;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f()J
    .locals 4

    .prologue
    .line 126
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/facebook/common/time/SystemClock;->b()Lcom/facebook/common/time/SystemClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/time/SystemClock;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    iget-object v1, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c:Lcom/facebook/inject/FbInjector;

    invoke-static {v1}, Lcom/facebook/auth/module/TriState_IsMeUserAnEmployeeMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/util/TriState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 83
    neg-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b(J)V

    .line 84
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->c()V

    .line 54
    iget-object v0, p0, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    if-nez v0, :cond_0

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 67
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    move v0, v2

    .line 72
    goto :goto_0

    :cond_4
    move v0, v1

    .line 75
    goto :goto_0
.end method
