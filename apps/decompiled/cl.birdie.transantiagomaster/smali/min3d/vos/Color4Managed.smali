.class public final Lmin3d/vos/Color4Managed;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "Color4Managed.java"


# instance fields
.field private _a:S

.field private _b:S

.field private _fb:Ljava/nio/FloatBuffer;

.field private _g:S

.field private _r:S


# direct methods
.method public constructor <init>(IIILmin3d/interfaces/IDirtyParent;)V
    .locals 5
    .param p1, "$r"    # I
    .param p2, "$g"    # I
    .param p3, "$b"    # I
    .param p4, "$parent"    # Lmin3d/interfaces/IDirtyParent;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 58
    invoke-direct {p0, p4}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 60
    int-to-short v0, p1

    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_r:S

    .line 61
    int-to-short v0, p2

    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_g:S

    .line 62
    int-to-short v0, p3

    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_b:S

    .line 63
    const/16 v0, 0xff

    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_a:S

    .line 65
    iget-short v0, p0, Lmin3d/vos/Color4Managed;->_r:S

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_g:S

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-short v2, p0, Lmin3d/vos/Color4Managed;->_b:S

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-short v3, p0, Lmin3d/vos/Color4Managed;->_a:S

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lmin3d/Utils;->makeFloatBuffer4(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lmin3d/vos/Color4Managed;->_fb:Ljava/nio/FloatBuffer;

    .line 67
    invoke-virtual {p0}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 143
    iget-short v0, p0, Lmin3d/vos/Color4Managed;->_a:S

    return v0
.end method

.method public final b()S
    .locals 1

    .prologue
    .line 133
    iget-short v0, p0, Lmin3d/vos/Color4Managed;->_b:S

    return v0
.end method

.method public final commitToFloatBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    .line 192
    iget-object v0, p0, Lmin3d/vos/Color4Managed;->_fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_r:S

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_g:S

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_b:S

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_a:S

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-void
.end method

.method public final floatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmin3d/vos/Color4Managed;->_fb:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final g()S
    .locals 1

    .prologue
    .line 123
    iget-short v0, p0, Lmin3d/vos/Color4Managed;->_g:S

    return v0
.end method

.method public final r()S
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lmin3d/vos/Color4Managed;->_r:S

    return v0
.end method

.method public final setAll$1349ef()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_a:S

    .line 99
    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_r:S

    .line 100
    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_g:S

    .line 101
    iput-short v0, p0, Lmin3d/vos/Color4Managed;->_b:S

    .line 103
    invoke-virtual {p0}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    .line 104
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_r:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_g:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4Managed;->_a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
