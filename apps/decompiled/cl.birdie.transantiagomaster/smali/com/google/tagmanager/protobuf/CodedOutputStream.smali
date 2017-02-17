.class public final Lcom/google/tagmanager/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I

.field private totalBytesWritten:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 58
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    .line 60
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 61
    array-length v0, p2

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    .line 62
    return-void
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 69
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iput v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 941
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 951
    :cond_0
    return-void
.end method

.method public final writeRawByte(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1017
    return-void
.end method

.method public final writeRawBytes$4d83c943(Lcom/google/tagmanager/protobuf/ByteString;I)V
    .locals 5
    .param p1, "value"    # Lcom/google/tagmanager/protobuf/ByteString;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1121
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v2, v3

    if-lt v2, p2, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v2, v4, v3, p2}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 1124
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1147
    :goto_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1149
    return-void

    .line 1129
    :cond_0
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    sub-int v0, v2, v3

    .line 1130
    .local v0, "bytesWritten":I
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v2, v4, v3, v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 1131
    add-int/lit8 v1, v0, 0x0

    .line 1132
    .local v1, "offset":I
    sub-int/2addr p2, v0

    .line 1133
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    .line 1134
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1135
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1140
    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->limit:I

    if-gt p2, v2, :cond_1

    .line 1142
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->buffer:[B

    invoke-virtual {p1, v2, v1, v4, p2}, Lcom/google/tagmanager/protobuf/ByteString;->copyTo([BIII)V

    .line 1143
    iput p2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/tagmanager/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;II)V

    goto :goto_0
.end method

.method public final writeRawVarint32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1170
    return-void

    .line 1172
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1173
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
