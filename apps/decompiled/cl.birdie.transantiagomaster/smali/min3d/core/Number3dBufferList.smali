.class public final Lmin3d/core/Number3dBufferList;
.super Ljava/lang/Object;
.source "Number3dBufferList.java"


# instance fields
.field private _b:Ljava/nio/FloatBuffer;

.field private _numElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "$maxElements"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    .line 28
    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/nio/FloatBuffer;I)V
    .locals 2
    .param p1, "$b"    # Ljava/nio/FloatBuffer;
    .param p2, "$size"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    .line 19
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    .line 22
    iget-object v1, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 23
    iput p2, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    .line 24
    return-void
.end method


# virtual methods
.method public final add(Lmin3d/vos/Number3d;)V
    .locals 2
    .param p1, "$n"    # Lmin3d/vos/Number3d;

    .prologue
    .line 96
    iget v0, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    iget-object v1, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v1, p1, Lmin3d/vos/Number3d;->z:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 97
    iget v0, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    .line 98
    return-void
.end method

.method public final buffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 58
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
    invoke-virtual {p0}, Lmin3d/core/Number3dBufferList;->clone()Lmin3d/core/Number3dBufferList;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/core/Number3dBufferList;
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    new-instance v0, Lmin3d/core/Number3dBufferList;

    iget-object v1, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    iget v2, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    invoke-direct {v0, v1, v2}, Lmin3d/core/Number3dBufferList;-><init>(Ljava/nio/FloatBuffer;I)V

    .line 155
    return-object v0
.end method

.method public final overwrite([F)V
    .locals 2
    .param p1, "$newVals"    # [F

    .prologue
    .line 147
    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v0, p0, Lmin3d/core/Number3dBufferList;->_b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 149
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lmin3d/core/Number3dBufferList;->_numElements:I

    return v0
.end method
