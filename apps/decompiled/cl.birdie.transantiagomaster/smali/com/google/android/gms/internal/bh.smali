.class public final Lcom/google/android/gms/internal/bh;
.super Ljava/lang/Object;


# instance fields
.field private final ky:Lcom/google/android/gms/internal/bq;

.field private final li:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mQ:Lcom/google/android/gms/internal/cx;

.field private final mR:Lcom/google/android/gms/internal/bj;

.field private mS:Z

.field private mT:Lcom/google/android/gms/internal/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bh;->mS:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    iput-object p3, p0, Lcom/google/android/gms/internal/bh;->ky:Lcom/google/android/gms/internal/bq;

    iput-object p4, p0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    return-void
.end method


# virtual methods
.method public final a$3651953c(J)Lcom/google/android/gms/internal/bn;
    .locals 13

    const/4 v12, 0x3

    invoke-static {v12}, Lcom/google/android/gms/internal/dw;->n(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->nc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/bi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying mediation network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/bi;->mX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/google/android/gms/internal/bi;->mY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bh;->mS:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bn;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    monitor-exit v11

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/bm;

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/bh;->ky:Lcom/google/android/gms/internal/bq;

    iget-object v4, p0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    iget-object v6, p0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    iget-object v6, v6, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    iget-object v7, p0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    iget-object v7, v7, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    iget-object v8, p0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    iget-object v8, v8, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/bm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bm;->b$3651953c(J)Lcom/google/android/gms/internal/bn;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/bn;->nw:I

    if-nez v1, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/dw;->n(I)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/bn;->ny:Lcom/google/android/gms/internal/br;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/bh$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/bh$1;-><init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/bn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    goto :goto_1
.end method

.method public final cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bh;->mS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bm;->cancel()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
