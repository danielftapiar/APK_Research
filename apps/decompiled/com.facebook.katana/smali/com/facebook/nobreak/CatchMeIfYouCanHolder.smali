.class public final Lcom/facebook/nobreak/CatchMeIfYouCanHolder;
.super Ljava/lang/Object;
.source "CatchMeIfYouCanHolder.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/facebook/nobreak/CatchMeIfYouCan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lcom/facebook/nobreak/CatchMeIfYouCan;
    .locals 3

    .prologue
    .line 18
    sget-object v1, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already initialized."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 23
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/nobreak/DummyCatchMeIfYouCan;

    invoke-direct {v0}, Lcom/facebook/nobreak/DummyCatchMeIfYouCan;-><init>()V

    sput-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    sget-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    return-object v0
.end method

.method public static a(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)Lcom/facebook/nobreak/CatchMeIfYouCan;
    .locals 3
    .param p1    # [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    sget-object v1, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already initialized."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;

    invoke-direct {v0, p0, p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;-><init>(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)V

    sput-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    sget-object v0, Lcom/facebook/nobreak/CatchMeIfYouCanHolder;->b:Lcom/facebook/nobreak/CatchMeIfYouCan;

    return-object v0
.end method
