.class public final Lnet/veritran/vtuserapplication/utils/threads/VTThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static e:Ljava/util/Hashtable;

.field private static f:I

.field private static g:I


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    sput v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    sput v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->b:Ljava/lang/Runnable;

    sget v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->g:I

    iput v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->c:I

    sget-object v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->g:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()V
    .locals 2

    sget-object v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(I)V
    .locals 3

    sget-object v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    sget-object v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static threadsRunning()I
    .locals 2

    sget-object v1, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->e:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget v0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->f:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getID()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->c:I

    return v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public final run()V
    .locals 2

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->c:I

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a()V

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->c:I

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->d:Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->d:Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setErrorHandler(Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->d:Lnet/veritran/vtuserapplication/utils/threads/VTThreadErrorHandler;

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/utils/threads/VTThread;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
