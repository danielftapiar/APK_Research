.class final Lcom/google/zxing/client/android/TimeoutTimer;
.super Ljava/lang/Object;
.source "TimeoutTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private registered:Z

.field timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/zxing/client/android/TimeoutTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/TimeoutTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "timeout"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->timeout:J

    .line 46
    iput-wide p2, p0, Lcom/google/zxing/client/android/TimeoutTimer;->timeout:J

    .line 47
    iput-object p1, p0, Lcom/google/zxing/client/android/TimeoutTimer;->activity:Landroid/app/Activity;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->registered:Z

    .line 50
    invoke-virtual {p0}, Lcom/google/zxing/client/android/TimeoutTimer;->onActivity()V

    .line 51
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/zxing/client/android/TimeoutTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/TimeoutTimer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/TimeoutTimer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->inactivityTask:Landroid/os/AsyncTask;

    .line 87
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/TimeoutTimer;->inactivityTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized onActivity()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/TimeoutTimer;->cancel()V

    .line 60
    new-instance v0, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/TimeoutTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/client/android/TimeoutTimer;Lcom/google/zxing/client/android/TimeoutTimer$1;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->inactivityTask:Landroid/os/AsyncTask;

    .line 62
    iget-object v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->inactivityTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;->executeOnThreadPoolExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/TimeoutTimer;->cancel()V

    .line 67
    iget-boolean v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->registered:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/zxing/client/android/TimeoutTimer;->TAG:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->registered:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/google/zxing/client/android/TimeoutTimer;->TAG:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/TimeoutTimer;->onActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/zxing/client/android/TimeoutTimer;->registered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/zxing/client/android/TimeoutTimer;->cancel()V

    .line 95
    return-void
.end method
