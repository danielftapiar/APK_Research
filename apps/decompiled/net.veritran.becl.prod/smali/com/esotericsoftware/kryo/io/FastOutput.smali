.class public final Lcom/esotericsoftware/kryo/io/FastOutput;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "FastOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p1}, Lcom/esotericsoftware/kryo/io/FastOutput;-><init>(II)V

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    .line 57
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 39
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/FastOutput;-><init>([BI)V

    .line 40
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>([BI)V

    .line 47
    return-void
.end method


# virtual methods
.method public writeInt(IZ)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/FastOutput;->writeInt(I)V

    .line 61
    const/4 v0, 0x4

    return v0
.end method

.method public writeLong(JZ)I
    .locals 1
    .param p1, "value"    # J
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/FastOutput;->writeLong(J)V

    .line 66
    const/16 v0, 0x8

    return v0
.end method
