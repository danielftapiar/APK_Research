.class public final Lcom/google/tagmanager/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/tagmanager/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 755
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 756
    iput v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->initialCapacity:I

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 761
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    .line 762
    return-void
.end method

.method private flushFullBuffer(I)V
    .locals 4
    .param p1, "minSize"    # I

    .prologue
    .line 863
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v2, v3}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 868
    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->initialCapacity:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 870
    .local v0, "newSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    .line 871
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    .line 872
    return-void
.end method

.method private declared-synchronized size()I
    .locals 2

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized toByteString()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 5

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/tagmanager/protobuf/LiteralByteString;

    invoke-direct {v2, v0}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    .line 800
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 799
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/tagmanager/protobuf/LiteralByteString;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/google/tagmanager/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/tagmanager/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 853
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 774
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    iget v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :goto_0
    monitor-exit p0

    return-void

    .line 780
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    sub-int v0, v1, v2

    .line 781
    .local v0, "copySize":I
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    add-int/2addr p2, v0

    .line 783
    sub-int/2addr p3, v0

    .line 786
    invoke-direct {p0, p3}, Lcom/google/tagmanager/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 787
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput p3, p0, Lcom/google/tagmanager/protobuf/ByteString$Output;->bufferPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    .end local v0    # "copySize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
