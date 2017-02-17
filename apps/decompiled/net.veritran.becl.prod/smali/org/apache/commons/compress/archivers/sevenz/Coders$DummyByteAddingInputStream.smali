.class Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;
.super Ljava/io/FilterInputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyByteAddingInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coders$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/apache/commons/compress/archivers/sevenz/Coders$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 260
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    .line 262
    const/4 v0, 0x0

    .line 264
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 270
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    if-eqz v1, :cond_0

    .line 271
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;->addDummyByte:Z

    .line 272
    aput-byte v2, p1, p2

    .line 273
    const/4 v0, 0x1

    .line 275
    .end local v0    # "result":I
    :cond_0
    return v0
.end method
