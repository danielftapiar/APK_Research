.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bn$a;


# instance fields
.field private final kX:Lcom/google/android/gms/internal/ah;

.field private final ky:Lcom/google/android/gms/internal/bq;

.field private final li:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final nn:Ljava/lang/String;

.field private final no:J

.field private final np:Lcom/google/android/gms/internal/bi;

.field private final nq:Lcom/google/android/gms/internal/ak;

.field private final nr:Lcom/google/android/gms/internal/dx;

.field private ns:Lcom/google/android/gms/internal/br;

.field private nt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dx;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/bm;->nt:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bm;->ky:Lcom/google/android/gms/internal/bq;

    iget-wide v0, p4, Lcom/google/android/gms/internal/bj;->nd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p4, Lcom/google/android/gms/internal/bj;->nd:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/bm;->no:J

    iput-object p5, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iput-object p6, p0, Lcom/google/android/gms/internal/bm;->kX:Lcom/google/android/gms/internal/ah;

    iput-object p7, p0, Lcom/google/android/gms/internal/bm;->nq:Lcom/google/android/gms/internal/ak;

    iput-object p8, p0, Lcom/google/android/gms/internal/bm;->nr:Lcom/google/android/gms/internal/dx;

    return-void

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/br;)Lcom/google/android/gms/internal/br;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->nr:Lcom/google/android/gms/internal/dx;

    iget v0, v0, Lcom/google/android/gms/internal/dx;->rs:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->nq:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->lT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->kX:Lcom/google/android/gms/internal/ah;

    iget-object v3, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v3, v3, Lcom/google/android/gms/internal/bi;->nb:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->nq:Lcom/google/android/gms/internal/ak;

    iget-object v3, p0, Lcom/google/android/gms/internal/bm;->kX:Lcom/google/android/gms/internal/ah;

    iget-object v4, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v4, v4, Lcom/google/android/gms/internal/bi;->nb:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bm;->f(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->nq:Lcom/google/android/gms/internal/ak;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->lT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->kX:Lcom/google/android/gms/internal/ah;

    iget-object v3, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v3, v3, Lcom/google/android/gms/internal/bi;->nb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v4, v4, Lcom/google/android/gms/internal/bi;->mW:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->nq:Lcom/google/android/gms/internal/ak;

    iget-object v3, p0, Lcom/google/android/gms/internal/bm;->kX:Lcom/google/android/gms/internal/ah;

    iget-object v4, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v4, v4, Lcom/google/android/gms/internal/bi;->nb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v5, v5, Lcom/google/android/gms/internal/bi;->mW:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bs;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private aJ()Lcom/google/android/gms/internal/br;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiating mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ky:Lcom/google/android/gms/internal/bq;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bq;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/br;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->n(I)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bm;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bm;->nt:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bm;)Lcom/google/android/gms/internal/br;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bm;->aJ()Lcom/google/android/gms/internal/br;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bm;)Lcom/google/android/gms/internal/br;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    return-object v0
.end method


# virtual methods
.method public final b$3651953c(J)Lcom/google/android/gms/internal/bn;
    .locals 13

    iget-object v6, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v4, Lcom/google/android/gms/internal/bl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/bl;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/bm$1;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/bm$1;-><init>(Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/bm;->no:J

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/bm;->nt:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v0

    sub-long v9, v2, v9

    const-wide/32 v11, 0xea60

    sub-long/2addr v7, p1

    sub-long v7, v11, v7

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-gtz v5, :cond_1

    :cond_0
    const-string v5, "Timed out waiting for adapter."

    invoke-static {v5}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/google/android/gms/internal/bm;->nt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v5, -0x1

    :try_start_2
    iput v5, p0, Lcom/google/android/gms/internal/bm;->nt:I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/bn;

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->np:Lcom/google/android/gms/internal/bi;

    iget-object v2, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    iget-object v3, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/bm;->nt:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/br;Ljava/lang/String;Lcom/google/android/gms/internal/bl;I)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0
.end method

.method public final cancel()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->ns:Lcom/google/android/gms/internal/br;

    invoke-interface {v0}, Lcom/google/android/gms/internal/br;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/bm;->nt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/dw;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/bm;->nt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bm;->li:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
