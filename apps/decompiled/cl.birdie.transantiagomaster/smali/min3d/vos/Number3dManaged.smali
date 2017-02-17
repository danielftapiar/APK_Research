.class public final Lmin3d/vos/Number3dManaged;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "Number3dManaged.java"


# instance fields
.field private _fb:Ljava/nio/FloatBuffer;

.field private _x:F

.field private _y:F

.field private _z:F


# direct methods
.method public constructor <init>(FFLmin3d/interfaces/IDirtyParent;)V
    .locals 5
    .param p1, "$x"    # F
    .param p2, "$z"    # F
    .param p3, "$parent"    # Lmin3d/interfaces/IDirtyParent;

    .prologue
    .line 34
    invoke-direct {p0, p3}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 35
    iput p1, p0, Lmin3d/vos/Number3dManaged;->_x:F

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lmin3d/vos/Number3dManaged;->_y:F

    .line 37
    iput p2, p0, Lmin3d/vos/Number3dManaged;->_z:F

    .line 38
    iget v0, p0, Lmin3d/vos/Number3dManaged;->_x:F

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_y:F

    iget v2, p0, Lmin3d/vos/Number3dManaged;->_z:F

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v3, p0, Lmin3d/vos/Number3dManaged;->_fb:Ljava/nio/FloatBuffer;

    .line 39
    invoke-virtual {p0}, Lmin3d/vos/Number3dManaged;->setDirtyFlag()V

    .line 40
    return-void
.end method


# virtual methods
.method public final commitToFloatBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lmin3d/vos/Number3dManaged;->_fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_x:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_z:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    return-void
.end method

.method public final floatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmin3d/vos/Number3dManaged;->_fb:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lmin3d/vos/Number3dManaged;->_x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lmin3d/vos/Number3dManaged;->_y:F

    return v0
.end method

.method public final getZ()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lmin3d/vos/Number3dManaged;->_z:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmin3d/vos/Number3dManaged;->_z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
