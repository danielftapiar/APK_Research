.class public Lcom/facebook/tools/dextr/runtime/logger/Trace;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:I

.field private final c:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/LogWriter;ILcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V
    .locals 0
    .param p4    # Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->a:Ljava/io/File;

    .line 50
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->d:Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

    .line 51
    iput p3, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->b:I

    .line 52
    iput-object p4, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->c:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH-mm-ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s-%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    const-string v4, ".tmp"

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Lcom/facebook/tools/dextr/runtime/logger/LogWriter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->d:Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->a:Ljava/io/File;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->b:I

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/tools/dextr/runtime/logger/Trace;->a()Lcom/facebook/tools/dextr/runtime/logger/LogWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/Closeables;->a(Ljava/io/Closeable;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->c:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->c:Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;

    invoke-interface {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;->a(Lcom/facebook/tools/dextr/runtime/logger/Trace;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/logger/Trace;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
