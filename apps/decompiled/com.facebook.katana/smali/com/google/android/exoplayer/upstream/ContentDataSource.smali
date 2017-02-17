.class public final Lcom/google/android/exoplayer/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 69
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 99
    const/4 v0, -0x1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    if-lez v0, :cond_0

    .line 109
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->a(I)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 74
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->d:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 78
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 79
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    .line 81
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 82
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 88
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->f:Z

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->b()V

    .line 93
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->e:J

    return-wide v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->d:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_0

    .line 135
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->f:Z

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->c()V

    .line 142
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->c:Ljava/io/InputStream;

    .line 134
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->f:Z

    if-eqz v1, :cond_1

    .line 135
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->f:Z

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->c()V

    :cond_1
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->d:Ljava/lang/String;

    return-object v0
.end method
