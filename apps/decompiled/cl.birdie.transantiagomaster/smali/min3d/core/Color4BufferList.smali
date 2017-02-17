.class public final Lmin3d/core/Color4BufferList;
.super Ljava/lang/Object;
.source "Color4BufferList.java"


# instance fields
.field private _b:Ljava/nio/ByteBuffer;

.field private _numElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "$maxElements"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    mul-int/lit8 v1, p1, 0x4

    mul-int/lit8 v0, v1, 0x1

    .line 27
    .local v0, "numBytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    .line 28
    iget-object v1, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "$b"    # Ljava/nio/ByteBuffer;
    .param p2, "$size"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    .line 20
    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    iput p2, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    .line 22
    return-void
.end method


# virtual methods
.method public final add(Lmin3d/vos/Color4;)V
    .locals 2
    .param p1, "$c"    # Lmin3d/vos/Color4;

    .prologue
    .line 96
    iget v0, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    iget-object v1, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    iget-short v1, p1, Lmin3d/vos/Color4;->r:S

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    iget-short v1, p1, Lmin3d/vos/Color4;->g:S

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    iget-short v1, p1, Lmin3d/vos/Color4;->b:S

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    iget-short v1, p1, Lmin3d/vos/Color4;->a:S

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    iget v0, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    .line 98
    return-void
.end method

.method public final buffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lmin3d/core/Color4BufferList;->clone()Lmin3d/core/Color4BufferList;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/core/Color4BufferList;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    new-instance v0, Lmin3d/core/Color4BufferList;

    iget-object v1, p0, Lmin3d/core/Color4BufferList;->_b:Ljava/nio/ByteBuffer;

    iget v2, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    invoke-direct {v0, v1, v2}, Lmin3d/core/Color4BufferList;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 158
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmin3d/core/Color4BufferList;->_numElements:I

    return v0
.end method
