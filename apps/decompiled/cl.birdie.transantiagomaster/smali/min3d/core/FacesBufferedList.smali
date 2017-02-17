.class public final Lmin3d/core/FacesBufferedList;
.super Ljava/lang/Object;
.source "FacesBufferedList.java"


# instance fields
.field private _b:Ljava/nio/ShortBuffer;

.field private _numElements:I

.field private _renderSubsetEnabled:Z

.field private _renderSubsetLength:I

.field private _renderSubsetStartIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "$maxElements"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v2, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetStartIndex:I

    .line 18
    const/4 v1, 0x1

    iput v1, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetLength:I

    .line 19
    iput-boolean v2, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetEnabled:Z

    .line 32
    mul-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/nio/ShortBuffer;I)V
    .locals 3
    .param p1, "$b"    # Ljava/nio/ShortBuffer;
    .param p2, "$size"    # I

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v2, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetStartIndex:I

    .line 18
    const/4 v1, 0x1

    iput v1, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetLength:I

    .line 19
    iput-boolean v2, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetEnabled:Z

    .line 23
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    .line 26
    iget-object v1, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 27
    iput p2, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    .line 28
    return-void
.end method


# virtual methods
.method public final add(Lmin3d/vos/Face;)V
    .locals 2
    .param p1, "$f"    # Lmin3d/vos/Face;

    .prologue
    .line 131
    iget v0, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    iget-object v1, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    iget-short v1, p1, Lmin3d/vos/Face;->a:S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    iget-short v1, p1, Lmin3d/vos/Face;->b:S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    iget-short v1, p1, Lmin3d/vos/Face;->c:S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 132
    iget v0, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    .line 133
    return-void
.end method

.method public final buffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    return-object v0
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
    invoke-virtual {p0}, Lmin3d/core/FacesBufferedList;->clone()Lmin3d/core/FacesBufferedList;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/core/FacesBufferedList;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    new-instance v0, Lmin3d/core/FacesBufferedList;

    iget-object v1, p0, Lmin3d/core/FacesBufferedList;->_b:Ljava/nio/ShortBuffer;

    iget v2, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    invoke-direct {v0, v1, v2}, Lmin3d/core/FacesBufferedList;-><init>(Ljava/nio/ShortBuffer;I)V

    .line 188
    return-object v0
.end method

.method public final renderSubsetEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetEnabled:Z

    return v0
.end method

.method public final renderSubsetLength()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetLength:I

    return v0
.end method

.method public final renderSubsetStartIndex()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lmin3d/core/FacesBufferedList;->_renderSubsetStartIndex:I

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmin3d/core/FacesBufferedList;->_numElements:I

    return v0
.end method
