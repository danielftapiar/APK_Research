.class public final Lmin3d/core/UvBufferList;
.super Ljava/lang/Object;
.source "UvBufferList.java"


# instance fields
.field private _b:Ljava/nio/FloatBuffer;

.field private _numElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "$maxElements"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Lmin3d/core/UvBufferList;->_numElements:I

    .line 29
    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x4

    .line 30
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "$b"    # Ljava/nio/FloatBuffer;
    .param p2, "$size"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Lmin3d/core/UvBufferList;->_numElements:I

    .line 20
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    .line 23
    iget-object v1, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 24
    iput p2, p0, Lmin3d/core/UvBufferList;->_numElements:I

    .line 25
    return-void
.end method


# virtual methods
.method public final add(Lmin3d/vos/Uv;)V
    .locals 2
    .param p1, "$uv"    # Lmin3d/vos/Uv;

    .prologue
    .line 89
    iget v0, p0, Lmin3d/core/UvBufferList;->_numElements:I

    iget-object v1, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lmin3d/vos/Uv;->u:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lmin3d/vos/Uv;->v:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 90
    iget v0, p0, Lmin3d/core/UvBufferList;->_numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmin3d/core/UvBufferList;->_numElements:I

    .line 91
    return-void
.end method

.method public final buffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 59
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
    invoke-virtual {p0}, Lmin3d/core/UvBufferList;->clone()Lmin3d/core/UvBufferList;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/core/UvBufferList;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    new-instance v0, Lmin3d/core/UvBufferList;

    iget-object v1, p0, Lmin3d/core/UvBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v2, p0, Lmin3d/core/UvBufferList;->_numElements:I

    invoke-direct {v0, v1, v2}, Lmin3d/core/UvBufferList;-><init>(Ljava/nio/FloatBuffer;I)V

    .line 135
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lmin3d/core/UvBufferList;->_numElements:I

    return v0
.end method
