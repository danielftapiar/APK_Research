.class public Lcom/mwr/jdiesel/api/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final SIZE_SIZE:I = 0x4

.field private static final VERSION:I = 0x2

.field private static final VERSION_SIZE:I = 0x4


# instance fields
.field private payload:Lcom/mwr/jdiesel/api/Protobuf$Message;

.field private size:I

.field private version:I


# direct methods
.method public constructor <init>(ILcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "payload"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/mwr/jdiesel/api/Frame;->version:I

    .line 28
    invoke-direct {p0, p2}, Lcom/mwr/jdiesel/api/Frame;->setPayload(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "payload"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/mwr/jdiesel/api/Frame;->version:I

    .line 23
    invoke-direct {p0, p1}, Lcom/mwr/jdiesel/api/Frame;->setPayload(Lcom/mwr/jdiesel/api/Protobuf$Message;)V

    .line 24
    return-void
.end method

.method public static readFrom(Ljava/io/InputStream;)Lcom/mwr/jdiesel/api/Frame;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mwr/jdiesel/api/APIVersionException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 44
    new-array v1, v8, [B

    .line 45
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 47
    .local v3, "length":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 48
    new-instance v7, Ljava/io/IOException;

    const-string v8, "invalid input stream"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 49
    :cond_0
    if-eq v3, v8, :cond_1

    .line 50
    const/4 v7, 0x0

    .line 66
    :goto_0
    return-object v7

    .line 52
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 55
    .local v6, "version":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 57
    .local v5, "size":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 58
    new-instance v7, Lcom/mwr/jdiesel/api/APIVersionException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "expected version 2, got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mwr/jdiesel/api/APIVersionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 60
    :cond_2
    new-array v4, v5, [B

    .line 62
    .local v4, "message":[B
    const/4 v2, 0x0

    .line 63
    .local v2, "bytes_read":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 66
    new-instance v7, Lcom/mwr/jdiesel/api/Frame;

    invoke-static {v4}, Lcom/mwr/jdiesel/api/Protobuf$Message;->parseFrom([B)Lcom/mwr/jdiesel/api/Protobuf$Message;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/mwr/jdiesel/api/Frame;-><init>(ILcom/mwr/jdiesel/api/Protobuf$Message;)V

    goto :goto_0

    .line 64
    :cond_3
    sub-int v7, v5, v2

    invoke-virtual {p0, v4, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1
.end method

.method private setPayload(Lcom/mwr/jdiesel/api/Protobuf$Message;)V
    .locals 1
    .param p1, "payload"    # Lcom/mwr/jdiesel/api/Protobuf$Message;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mwr/jdiesel/api/Frame;->payload:Lcom/mwr/jdiesel/api/Protobuf$Message;

    .line 71
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/Protobuf$Message;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/mwr/jdiesel/api/Frame;->size:I

    .line 72
    return-void
.end method


# virtual methods
.method public getPayload()Lcom/mwr/jdiesel/api/Protobuf$Message;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mwr/jdiesel/api/Frame;->payload:Lcom/mwr/jdiesel/api/Protobuf$Message;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/mwr/jdiesel/api/Frame;->size:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/mwr/jdiesel/api/Frame;->version:I

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Frame;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 77
    .local v1, "bytes":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Frame;->getVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/Frame;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    iget-object v2, p0, Lcom/mwr/jdiesel/api/Frame;->payload:Lcom/mwr/jdiesel/api/Protobuf$Message;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/Protobuf$Message;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    return-object v1
.end method
