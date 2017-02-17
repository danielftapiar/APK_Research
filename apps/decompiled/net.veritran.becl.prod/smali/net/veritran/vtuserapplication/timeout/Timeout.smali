.class public Lnet/veritran/vtuserapplication/timeout/Timeout;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private a:J

.field private b:Lnet/veritran/vtuserapplication/timeout/TimeoutListener;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->h:I

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->i:I

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->j:I

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    int-to-long v0, p1

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lnet/veritran/vtuserapplication/timeout/Timeout;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/timeout/Timeout;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->g:J

    iput-wide p1, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    iget-wide v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    int-to-long v2, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    iput-boolean v4, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z

    iput-boolean v4, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->f:Z

    return-void
.end method


# virtual methods
.method public getListener()Lnet/veritran/vtuserapplication/timeout/TimeoutListener;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->b:Lnet/veritran/vtuserapplication/timeout/TimeoutListener;

    return-object v0
.end method

.method public restart()V
    .locals 0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->stop()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/timeout/Timeout;->start()V

    return-void
.end method

.method public run()V
    .locals 10

    const/16 v1, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->g:J

    iget-object v2, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_1
    iget-wide v6, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    add-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->d:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    long-to-int v0, v6

    div-int/lit8 v0, v0, 0x64

    if-ge v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v3, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Timeout"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_4
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->b:Lnet/veritran/vtuserapplication/timeout/TimeoutListener;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "THREAD NOTIFING (TIMEOUT["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MILLISECS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->g:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MUTEX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->b:Lnet/veritran/vtuserapplication/timeout/TimeoutListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/timeout/TimeoutListener;->notifyTimedOut()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "Timeout"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    goto :goto_2

    :catchall_1
    move-exception v0

    sget v1, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnet/veritran/vtuserapplication/timeout/Timeout;->k:I

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setListener(Lnet/veritran/vtuserapplication/timeout/TimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->b:Lnet/veritran/vtuserapplication/timeout/TimeoutListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->f:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->j:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->i:I

    iget-object v1, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->f:Z

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/timeout/Timeout;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->d:Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lnet/veritran/vtuserapplication/timeout/Timeout;->e:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
