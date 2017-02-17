.class Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lcom/google/android/exoplayer/chunk/DataChunk;
.source "HlsChunkSource.java"


# instance fields
.field public final a:Ljava/lang/String;

.field private g:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;[BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer/chunk/DataChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;I[B)V

    .line 644
    iput-object p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->a:Ljava/lang/String;

    .line 645
    return-void
.end method


# virtual methods
.method protected final a([BI)V
    .locals 1

    .prologue
    .line 649
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->g:[B

    .line 650
    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->g:[B

    return-object v0
.end method
