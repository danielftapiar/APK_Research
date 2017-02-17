.class Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
.super Lcom/google/android/exoplayer/chunk/DataChunk;
.source "HlsChunkSource.java"


# instance fields
.field public final a:I

.field private final g:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

.field private final h:Ljava/lang/String;

.field private i:Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLcom/google/android/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer/chunk/DataChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;I[B)V

    .line 618
    iput p5, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->a:I

    .line 619
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->g:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    .line 620
    iput-object p6, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->h:Ljava/lang/String;

    .line 621
    return-void
.end method


# virtual methods
.method protected final a([BI)V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->g:Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->h:Ljava/lang/String;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/hls/HlsPlaylist;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->i:Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 627
    return-void
.end method

.method public final b()Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->i:Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    return-object v0
.end method
