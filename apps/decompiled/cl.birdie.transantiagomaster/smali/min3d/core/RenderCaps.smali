.class public final Lmin3d/core/RenderCaps;
.super Ljava/lang/Object;
.source "RenderCaps.java"


# static fields
.field private static _aliasedLineSizeMax:I

.field private static _aliasedLineSizeMin:I

.field private static _aliasedPointSizeMax:I

.field private static _aliasedPointSizeMin:I

.field private static _maxLights:I

.field private static _maxTextureSize:I

.field private static _maxTextureUnits:I

.field private static _openGlVersion:F

.field private static _smoothLineSizeMax:I

.field private static _smoothLineSizeMin:I

.field private static _smoothPointSizeMax:I

.field private static _smoothPointSizeMin:I


# direct methods
.method public static maxTextureUnits()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lmin3d/core/RenderCaps;->_maxTextureUnits:I

    return v0
.end method

.method static setRenderCaps(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p0, "$gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    instance-of v1, p0, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 103
    const v1, 0x3f8ccccd    # 1.1f

    sput v1, Lmin3d/core/RenderCaps;->_openGlVersion:F

    .line 110
    :goto_0
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 111
    .local v0, "i":Ljava/nio/IntBuffer;
    const v1, 0x84e2

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 112
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_maxTextureUnits:I

    .line 115
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 116
    const/16 v1, 0xd33

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 117
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_maxTextureSize:I

    .line 120
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 121
    const v1, 0x846d

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 122
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_aliasedPointSizeMin:I

    .line 123
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_aliasedPointSizeMax:I

    .line 126
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 127
    const/16 v1, 0xb12

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 128
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_smoothPointSizeMin:I

    .line 129
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_smoothPointSizeMax:I

    .line 132
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 133
    const v1, 0x846e

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 134
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_aliasedLineSizeMin:I

    .line 135
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_aliasedLineSizeMax:I

    .line 138
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 139
    const/16 v1, 0xb22

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 140
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_smoothLineSizeMin:I

    .line 141
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_smoothLineSizeMax:I

    .line 144
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 145
    const/16 v1, 0xd31

    invoke-interface {p0, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 146
    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lmin3d/core/RenderCaps;->_maxLights:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RenderCaps - openGLVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmin3d/core/RenderCaps;->_openGlVersion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RenderCaps - maxTextureUnits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmin3d/core/RenderCaps;->_maxTextureUnits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RenderCaps - maxTextureSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmin3d/core/RenderCaps;->_maxTextureSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RenderCaps - maxLights: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmin3d/core/RenderCaps;->_maxLights:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    return-void

    .line 106
    .end local v0    # "i":Ljava/nio/IntBuffer;
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lmin3d/core/RenderCaps;->_openGlVersion:F

    goto/16 :goto_0
.end method
