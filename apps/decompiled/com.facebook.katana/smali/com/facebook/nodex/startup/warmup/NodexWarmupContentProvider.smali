.class public Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;
.super Landroid/content/ContentProvider;
.source "NodexWarmupContentProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassContentProvider"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Landroid/net/Uri;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nodex.startup.warmup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;ZJ)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    const-string v1, "action"

    invoke-virtual {p0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "dexes_generated"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    const-string v1, "no_dex_app_start_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    return-object v0
.end method

.method private static a(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 112
    invoke-static {p0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->b(Landroid/content/ContentValues;)V

    .line 113
    invoke-static {p0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->c(Landroid/content/ContentValues;)V

    .line 114
    return-void
.end method

.method private static b(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 117
    const-string v0, "dexes_generated"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 121
    :goto_0
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a(Z)V

    .line 123
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 126
    const-string v0, "no_dex_app_start_time"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 130
    :goto_0
    invoke-static {}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a()Lcom/facebook/base/lwperf/LightWeightPerfState;

    invoke-static {v0, v1}, Lcom/facebook/base/lwperf/LightWeightPerfState;->a(J)V

    .line 132
    return-void

    .line 127
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .prologue
    const-wide/16 v2, 0x8

    .line 78
    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->valueOf(Ljava/lang/String;)Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    move-result-object v0

    .line 81
    invoke-static {p2}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->a(Landroid/content/ContentValues;)V

    .line 83
    sget-object v1, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_1
    const-string v0, "Wait for Injector (Nodex Warmup)"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;)V

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->a(J)V

    throw v0

    .line 96
    :pswitch_2
    const-string v0, "Wait for Init (Nodex Warmup)"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;)V

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/init/AppInitLockHelper;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->a(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->a(J)V

    throw v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method
