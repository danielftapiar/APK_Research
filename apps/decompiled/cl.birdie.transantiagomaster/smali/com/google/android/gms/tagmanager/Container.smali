.class public final Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# instance fields
.field private final WJ:Ljava/lang/String;

.field private WL:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method private declared-synchronized kd()Lcom/google/android/gms/tagmanager/cs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WL:Lcom/google/android/gms/tagmanager/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final bp(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->kd()Lcom/google/android/gms/tagmanager/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bp(Ljava/lang/String;)V

    return-void
.end method

.method public final getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->WJ:Ljava/lang/String;

    return-object v0
.end method
