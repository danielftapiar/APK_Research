.class public final Lcom/google/android/exoplayer/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->a:Landroid/content/res/AssetManager;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 67
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 102
    const/4 v0, -0x1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    if-lez v0, :cond_0

    .line 112
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->a(I)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->c:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->c:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->a:Landroid/content/res/AssetManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 82
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 83
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    :goto_2
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 86
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 76
    :cond_1
    :try_start_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :cond_3
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->f:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->b()V

    .line 96
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->e:J

    return-wide v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->c:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    .line 137
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->f:Z

    if-eqz v0, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->f:Z

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->c()V

    .line 145
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->d:Ljava/io/InputStream;

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->f:Z

    if-eqz v1, :cond_1

    .line 138
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->f:Z

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->b:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->c()V

    :cond_1
    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->c:Ljava/lang/String;

    return-object v0
.end method
