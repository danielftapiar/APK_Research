.class public final Lmin3d/core/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private _activityManager:Landroid/app/ActivityManager;

.field private _fps:F

.field private _frameCount:J

.field private _gl:Ljavax/microedition/khronos/opengles/GL10;

.field private _logFps:Z

.field private _memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private _scene:Lmin3d/core/Scene;

.field private _scratchB:Z

.field private _scratchFloatBuffer:Ljava/nio/FloatBuffer;

.field private _scratchIntBuffer:Ljava/nio/IntBuffer;

.field private _surfaceAspectRatio:F

.field private _textureManager:Lmin3d/core/TextureManager;

.field private _timeLastSample:J


# direct methods
.method public constructor <init>(Lmin3d/core/Scene;)V
    .locals 3
    .param p1, "$scene"    # Lmin3d/core/Scene;

    .prologue
    const/4 v2, 0x4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmin3d/core/Renderer;->_logFps:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmin3d/core/Renderer;->_frameCount:J

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lmin3d/core/Renderer;->_fps:F

    .line 53
    iput-object p1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    .line 55
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lmin3d/core/Renderer;->_scratchIntBuffer:Ljava/nio/IntBuffer;

    .line 56
    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lmin3d/core/Renderer;->_scratchFloatBuffer:Ljava/nio/FloatBuffer;

    .line 58
    new-instance v0, Lmin3d/core/TextureManager;

    invoke-direct {v0}, Lmin3d/core/TextureManager;-><init>()V

    iput-object v0, p0, Lmin3d/core/Renderer;->_textureManager:Lmin3d/core/TextureManager;

    .line 59
    iget-object v0, p0, Lmin3d/core/Renderer;->_textureManager:Lmin3d/core/TextureManager;

    invoke-static {v0}, Lmin3d/Shared;->textureManager(Lmin3d/core/TextureManager;)V

    .line 61
    invoke-static {}, Lmin3d/Shared;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lmin3d/core/Renderer;->_activityManager:Landroid/app/ActivityManager;

    .line 62
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lmin3d/core/Renderer;->_memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 63
    return-void
.end method

.method private drawObject(Lmin3d/core/Object3d;)V
    .locals 12
    .param p1, "$o"    # Lmin3d/core/Object3d;

    .prologue
    .line 302
    invoke-virtual {p1}, Lmin3d/core/Object3d;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 475
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p1}, Lmin3d/core/Object3d;->hasNormals()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lmin3d/core/Object3d;->normalsEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 309
    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Vertices;->normals()Lmin3d/core/Number3dBufferList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Number3dBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v8

    invoke-virtual {v8}, Lmin3d/core/Vertices;->normals()Lmin3d/core/Number3dBufferList;

    move-result-object v8

    invoke-virtual {v8}, Lmin3d/core/Number3dBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 311
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v6, 0x8075

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 333
    :goto_1
    iget-object v5, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v5}, Lmin3d/core/Scene;->lightingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lmin3d/core/Object3d;->hasNormals()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lmin3d/core/Object3d;->normalsEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lmin3d/core/Object3d;->lightingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .line 334
    :goto_2
    if-eqz v5, :cond_9

    .line 335
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb50

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 342
    :goto_3
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb54

    iget-object v7, p0, Lmin3d/core/Renderer;->_scratchIntBuffer:Ljava/nio/IntBuffer;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 343
    invoke-virtual {p1}, Lmin3d/core/Object3d;->shadeModel()Lmin3d/vos/ShadeModel;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/vos/ShadeModel;->glConstant()I

    move-result v5

    iget-object v6, p0, Lmin3d/core/Renderer;->_scratchIntBuffer:Ljava/nio/IntBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 344
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->shadeModel()Lmin3d/vos/ShadeModel;

    move-result-object v6

    invoke-virtual {v6}, Lmin3d/vos/ShadeModel;->glConstant()I

    move-result v6

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 349
    :cond_1
    invoke-virtual {p1}, Lmin3d/core/Object3d;->hasVertexColors()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertexColorsEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 350
    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Vertices;->colors()Lmin3d/core/Color4BufferList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Color4BufferList;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v6, 0x4

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v9

    invoke-virtual {v9}, Lmin3d/core/Vertices;->colors()Lmin3d/core/Color4BufferList;

    move-result-object v9

    invoke-virtual {v9}, Lmin3d/core/Color4BufferList;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 352
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v6, 0x8076

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 366
    :goto_4
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb57

    iget-object v7, p0, Lmin3d/core/Renderer;->_scratchIntBuffer:Ljava/nio/IntBuffer;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 367
    iget-object v5, p0, Lmin3d/core/Renderer;->_scratchIntBuffer:Ljava/nio/IntBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, p0, Lmin3d/core/Renderer;->_scratchB:Z

    .line 368
    invoke-virtual {p1}, Lmin3d/core/Object3d;->colorMaterialEnabled()Z

    move-result v5

    iget-boolean v6, p0, Lmin3d/core/Renderer;->_scratchB:Z

    if-eq v5, v6, :cond_2

    .line 369
    invoke-virtual {p1}, Lmin3d/core/Object3d;->colorMaterialEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 370
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb57

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 377
    :cond_2
    :goto_6
    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v5

    sget-object v6, Lmin3d/vos/RenderType;->POINTS:Lmin3d/vos/RenderType;

    if-ne v5, v6, :cond_3

    .line 379
    invoke-virtual {p1}, Lmin3d/core/Object3d;->pointSmoothing()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 380
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb10

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 384
    :goto_7
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->pointSize()F

    move-result v6

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 389
    :cond_3
    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v5

    sget-object v6, Lmin3d/vos/RenderType;->LINES:Lmin3d/vos/RenderType;

    if-eq v5, v6, :cond_4

    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v5

    sget-object v6, Lmin3d/vos/RenderType;->LINE_STRIP:Lmin3d/vos/RenderType;

    if-eq v5, v6, :cond_4

    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v5

    sget-object v6, Lmin3d/vos/RenderType;->LINE_LOOP:Lmin3d/vos/RenderType;

    if-ne v5, v6, :cond_5

    .line 391
    :cond_4
    invoke-virtual {p1}, Lmin3d/core/Object3d;->lineSmoothing()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 392
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb20

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 398
    :goto_8
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->lineWidth()F

    move-result v6

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 403
    :cond_5
    invoke-virtual {p1}, Lmin3d/core/Object3d;->doubleSidedEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 404
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb44

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 411
    :goto_9
    const/4 v5, 0x0

    move v6, v5

    :goto_a
    invoke-static {}, Lmin3d/core/RenderCaps;->maxTextureUnits()I

    move-result v5

    if-lt v6, v5, :cond_10

    .line 416
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 418
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->position()Lmin3d/vos/Number3d;

    move-result-object v6

    iget v6, v6, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {p1}, Lmin3d/core/Object3d;->position()Lmin3d/vos/Number3d;

    move-result-object v7

    iget v7, v7, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {p1}, Lmin3d/core/Object3d;->position()Lmin3d/vos/Number3d;

    move-result-object v8

    iget v8, v8, Lmin3d/vos/Number3d;->z:F

    invoke-interface {v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 420
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->rotation()Lmin3d/vos/Number3d;

    move-result-object v6

    iget v6, v6, Lmin3d/vos/Number3d;->x:F

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 421
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->rotation()Lmin3d/vos/Number3d;

    move-result-object v6

    iget v6, v6, Lmin3d/vos/Number3d;->y:F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 422
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->rotation()Lmin3d/vos/Number3d;

    move-result-object v6

    iget v6, v6, Lmin3d/vos/Number3d;->z:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 424
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->scale()Lmin3d/vos/Number3d;

    move-result-object v6

    iget v6, v6, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {p1}, Lmin3d/core/Object3d;->scale()Lmin3d/vos/Number3d;

    move-result-object v7

    iget v7, v7, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {p1}, Lmin3d/core/Object3d;->scale()Lmin3d/vos/Number3d;

    move-result-object v8

    iget v8, v8, Lmin3d/vos/Number3d;->z:F

    invoke-interface {v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 428
    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Vertices;->points()Lmin3d/core/Number3dBufferList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Number3dBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 429
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v9

    invoke-virtual {v9}, Lmin3d/core/Vertices;->points()Lmin3d/core/Number3dBufferList;

    move-result-object v9

    invoke-virtual {v9}, Lmin3d/core/Number3dBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 431
    invoke-virtual {p1}, Lmin3d/core/Object3d;->ignoreFaces()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 435
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/FacesBufferedList;->renderSubsetEnabled()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 436
    const/4 v4, 0x0

    .line 437
    .local v4, "pos":I
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/FacesBufferedList;->size()I

    move-result v2

    .line 444
    .local v2, "len":I
    :goto_b
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/FacesBufferedList;->buffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 447
    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v6

    invoke-virtual {v6}, Lmin3d/vos/RenderType;->glValue()I

    move-result v6

    .line 448
    mul-int/lit8 v7, v2, 0x3

    .line 449
    const/16 v8, 0x1403

    .line 450
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v9

    invoke-virtual {v9}, Lmin3d/core/FacesBufferedList;->buffer()Ljava/nio/ShortBuffer;

    move-result-object v9

    .line 446
    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 461
    .end local v2    # "len":I
    .end local v4    # "pos":I
    :goto_c
    instance-of v5, p1, Lmin3d/core/Object3dContainer;

    if-eqz v5, :cond_6

    move-object v0, p1

    .line 463
    check-cast v0, Lmin3d/core/Object3dContainer;

    .line 465
    .local v0, "container":Lmin3d/core/Object3dContainer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {v0}, Lmin3d/core/Object3dContainer;->children()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1c

    .line 474
    .end local v0    # "container":Lmin3d/core/Object3dContainer;
    .end local v1    # "i":I
    :cond_6
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 314
    :cond_7
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v6, 0x8075

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto/16 :goto_1

    .line 333
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 337
    :cond_9
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb50

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_3

    .line 355
    :cond_a
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 356
    invoke-virtual {p1}, Lmin3d/core/Object3d;->defaultColor()Lmin3d/vos/Color4;

    move-result-object v6

    iget-short v6, v6, Lmin3d/vos/Color4;->r:S

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    .line 357
    invoke-virtual {p1}, Lmin3d/core/Object3d;->defaultColor()Lmin3d/vos/Color4;

    move-result-object v7

    iget-short v7, v7, Lmin3d/vos/Color4;->g:S

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    .line 358
    invoke-virtual {p1}, Lmin3d/core/Object3d;->defaultColor()Lmin3d/vos/Color4;

    move-result-object v8

    iget-short v8, v8, Lmin3d/vos/Color4;->b:S

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v8, v9

    .line 359
    invoke-virtual {p1}, Lmin3d/core/Object3d;->defaultColor()Lmin3d/vos/Color4;

    move-result-object v9

    iget-short v9, v9, Lmin3d/vos/Color4;->a:S

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    .line 355
    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 361
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v6, 0x8076

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto/16 :goto_4

    .line 367
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 372
    :cond_c
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb57

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_6

    .line 382
    :cond_d
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb10

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_7

    .line 395
    :cond_e
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb20

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_8

    .line 407
    :cond_f
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0xb44

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_9

    .line 411
    :cond_10
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v7, 0x84c0

    add-int/2addr v7, v6

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v7, 0x84c0

    add-int/2addr v7, v6

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-virtual {p1}, Lmin3d/core/Object3d;->hasUvs()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p1}, Lmin3d/core/Object3d;->texturesEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/Vertices;->uvs()Lmin3d/core/UvBufferList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/UvBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v10

    invoke-virtual {v10}, Lmin3d/core/Vertices;->uvs()Lmin3d/core/UvBufferList;

    move-result-object v10

    invoke-virtual {v10}, Lmin3d/core/UvBufferList;->buffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-virtual {p1}, Lmin3d/core/Object3d;->textures()Lmin3d/core/TextureList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/TextureList;->size()I

    move-result v5

    if-ge v6, v5, :cond_13

    invoke-virtual {p1}, Lmin3d/core/Object3d;->textures()Lmin3d/core/TextureList;

    move-result-object v5

    invoke-virtual {v5, v6}, Lmin3d/core/TextureList;->get(I)Lmin3d/vos/TextureVo;

    move-result-object v5

    move-object v8, v5

    :goto_e
    if-eqz v8, :cond_18

    iget-object v5, p0, Lmin3d/core/Renderer;->_textureManager:Lmin3d/core/TextureManager;

    iget-object v7, v8, Lmin3d/vos/TextureVo;->textureId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmin3d/core/TextureManager;->getGlTextureId(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v9, 0xde1

    invoke-interface {v7, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v7, 0x8078

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_textureManager:Lmin3d/core/TextureManager;

    iget-object v7, v8, Lmin3d/vos/TextureVo;->textureId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmin3d/core/TextureManager;->hasMipMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v5, 0x2701

    :goto_f
    iget-object v7, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v9, 0xde1

    const/16 v10, 0x2801

    int-to-float v5, v5

    invoke-interface {v7, v9, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    const/16 v9, 0x2800

    const v10, 0x46180400    # 9729.0f

    invoke-interface {v5, v7, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/4 v5, 0x0

    move v7, v5

    :goto_10
    iget-object v5, v8, Lmin3d/vos/TextureVo;->textureEnvs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v7, v5, :cond_15

    iget-object v7, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v9, 0xde1

    const/16 v10, 0x2802

    iget-boolean v5, v8, Lmin3d/vos/TextureVo;->repeatU:Z

    if-eqz v5, :cond_16

    const/16 v5, 0x2901

    :goto_11
    invoke-interface {v7, v9, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    iget-object v7, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v9, 0xde1

    const/16 v10, 0x2803

    iget-boolean v5, v8, Lmin3d/vos/TextureVo;->repeatV:Z

    if-eqz v5, :cond_17

    const/16 v5, 0x2901

    :goto_12
    invoke-interface {v7, v9, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    iget v5, v8, Lmin3d/vos/TextureVo;->offsetU:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_11

    iget v5, v8, Lmin3d/vos/TextureVo;->offsetV:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_12

    :cond_11
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1702

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    iget v7, v8, Lmin3d/vos/TextureVo;->offsetU:F

    iget v8, v8, Lmin3d/vos/TextureVo;->offsetV:F

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0x1700

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_12
    :goto_13
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_a

    :cond_13
    const/4 v5, 0x0

    move-object v8, v5

    goto/16 :goto_e

    :cond_14
    const/16 v5, 0x2600

    goto :goto_f

    :cond_15
    iget-object v9, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v10, 0x2300

    iget-object v5, v8, Lmin3d/vos/TextureVo;->textureEnvs:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmin3d/vos/TexEnvxVo;

    iget v11, v5, Lmin3d/vos/TexEnvxVo;->pname:I

    iget-object v5, v8, Lmin3d/vos/TextureVo;->textureEnvs:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmin3d/vos/TexEnvxVo;

    iget v5, v5, Lmin3d/vos/TexEnvxVo;->param:I

    invoke-interface {v9, v10, v11, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_10

    :cond_16
    const v5, 0x812f

    goto :goto_11

    :cond_17
    const v5, 0x812f

    goto :goto_12

    :cond_18
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v7, 0x8078

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_13

    :cond_19
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v7, 0xde1

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v7, 0x8078

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_13

    .line 440
    :cond_1a
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/FacesBufferedList;->renderSubsetStartIndex()I

    move-result v5

    mul-int/lit8 v4, v5, 0x3

    .line 441
    .restart local v4    # "pos":I
    invoke-virtual {p1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v5

    invoke-virtual {v5}, Lmin3d/core/FacesBufferedList;->renderSubsetLength()I

    move-result v2

    .restart local v2    # "len":I
    goto/16 :goto_b

    .line 454
    .end local v2    # "len":I
    .end local v4    # "pos":I
    :cond_1b
    iget-object v5, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lmin3d/core/Object3d;->renderType()Lmin3d/vos/RenderType;

    move-result-object v6

    invoke-virtual {v6}, Lmin3d/vos/RenderType;->glValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v8

    invoke-virtual {v8}, Lmin3d/core/Vertices;->size()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_c

    .line 467
    .restart local v0    # "container":Lmin3d/core/Object3dContainer;
    .restart local v1    # "i":I
    :cond_1c
    invoke-virtual {v0}, Lmin3d/core/Object3dContainer;->children()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmin3d/core/Object3d;

    .line 468
    .local v3, "o":Lmin3d/core/Object3d;
    invoke-direct {p0, v3}, Lmin3d/core/Renderer;->drawObject(Lmin3d/core/Object3d;)V

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d
.end method

.method private updateViewFrustrum()V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 577
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v0

    iget-object v8, v0, Lmin3d/vos/CameraVo;->frustum:Lmin3d/vos/FrustumManaged;

    .line 578
    .local v8, "vf":Lmin3d/vos/FrustumManaged;
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->shortSideLength()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v7, v0, v5

    .line 582
    .local v7, "n":F
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->horizontalCenter()F

    move-result v0

    iget v5, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    mul-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 583
    .local v1, "lt":F
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->horizontalCenter()F

    move-result v0

    iget v5, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    mul-float/2addr v5, v7

    add-float v2, v0, v5

    .line 584
    .local v2, "rt":F
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->verticalCenter()F

    move-result v0

    mul-float v5, v7, v6

    sub-float v3, v0, v5

    .line 585
    .local v3, "btm":F
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->verticalCenter()F

    move-result v0

    mul-float v5, v7, v6

    add-float v4, v0, v5

    .line 587
    .local v4, "top":F
    iget v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 588
    iget v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    div-float v0, v6, v0

    mul-float/2addr v1, v0

    .line 589
    iget v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    div-float v0, v6, v0

    mul-float/2addr v2, v0

    .line 590
    iget v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    div-float v0, v6, v0

    mul-float/2addr v3, v0

    .line 591
    iget v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    div-float v0, v6, v0

    mul-float/2addr v4, v0

    .line 594
    :cond_0
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1701

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 595
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 596
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->zNear()F

    move-result v5

    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->zFar()F

    move-result v6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 598
    invoke-virtual {v8}, Lmin3d/vos/FrustumManaged;->clearDirtyFlag()V

    .line 599
    return-void
.end method


# virtual methods
.method final deleteTexture(I)V
    .locals 4
    .param p1, "$glTextureId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    new-array v0, v3, [I

    .line 571
    .local v0, "a":[I
    aput p1, v0, v2

    .line 572
    iget-object v1, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 573
    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v12, 0xb60

    const/4 v10, 0x0

    const/high16 v11, 0x437f0000    # 255.0f

    .line 95
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->update()V

    .line 98
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v0

    iget-object v0, v0, Lmin3d/vos/CameraVo;->frustum:Lmin3d/vos/FrustumManaged;

    invoke-virtual {v0}, Lmin3d/vos/FrustumManaged;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmin3d/core/Renderer;->updateViewFrustrum()V

    :cond_0
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v1

    iget-object v1, v1, Lmin3d/vos/CameraVo;->position:Lmin3d/vos/Number3d;

    iget v1, v1, Lmin3d/vos/Number3d;->x:F

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v2

    iget-object v2, v2, Lmin3d/vos/CameraVo;->position:Lmin3d/vos/Number3d;

    iget v2, v2, Lmin3d/vos/Number3d;->y:F

    iget-object v3, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v3}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v3

    iget-object v3, v3, Lmin3d/vos/CameraVo;->position:Lmin3d/vos/Number3d;

    iget v3, v3, Lmin3d/vos/Number3d;->z:F

    iget-object v4, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v4}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v4

    iget-object v4, v4, Lmin3d/vos/CameraVo;->target:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->x:F

    iget-object v5, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v5}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v5

    iget-object v5, v5, Lmin3d/vos/CameraVo;->target:Lmin3d/vos/Number3d;

    iget v5, v5, Lmin3d/vos/Number3d;->y:F

    iget-object v6, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v6}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v6

    iget-object v6, v6, Lmin3d/vos/CameraVo;->target:Lmin3d/vos/Number3d;

    iget v6, v6, Lmin3d/vos/Number3d;->z:F

    iget-object v7, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v7}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v7

    iget-object v7, v7, Lmin3d/vos/CameraVo;->upAxis:Lmin3d/vos/Number3d;

    iget v7, v7, Lmin3d/vos/Number3d;->x:F

    iget-object v8, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v8}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v8

    iget-object v8, v8, Lmin3d/vos/CameraVo;->upAxis:Lmin3d/vos/Number3d;

    iget v8, v8, Lmin3d/vos/Number3d;->y:F

    iget-object v9, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v9}, Lmin3d/core/Scene;->camera()Lmin3d/vos/CameraVo;

    move-result-object v9

    iget-object v9, v9, Lmin3d/vos/CameraVo;->upAxis:Lmin3d/vos/Number3d;

    iget v9, v9, Lmin3d/vos/Number3d;->z:F

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/vos/Color4Managed;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v1

    invoke-virtual {v1}, Lmin3d/vos/Color4Managed;->r()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v2

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->g()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    iget-object v3, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v3}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v3

    invoke-virtual {v3}, Lmin3d/vos/Color4Managed;->b()S

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    iget-object v4, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v4}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v4

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->a()S

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v11

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/vos/Color4Managed;->clearDirtyFlag()V

    :cond_1
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    move v0, v10

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/ManagedLightList;->toArray()[Lmin3d/vos/Light;

    move-result-object v1

    move v0, v10

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 99
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->fogEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb65

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->fogType()Lmin3d/vos/FogType;

    move-result-object v2

    invoke-virtual {v2}, Lmin3d/vos/FogType;->glValue()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb63

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->fogNear()F

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb64

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->fogFar()F

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb66

    iget-object v2, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->fogColor()Lmin3d/vos/Color4;

    move-result-object v2

    iget-short v3, v2, Lmin3d/vos/Color4;->r:S

    int-to-float v3, v3

    iget-short v4, v2, Lmin3d/vos/Color4;->g:S

    int-to-float v4, v4

    iget-short v5, v2, Lmin3d/vos/Color4;->b:S

    int-to-float v5, v5

    iget-short v2, v2, Lmin3d/vos/Color4;->a:S

    int-to-float v2, v2

    invoke-static {v3, v4, v5, v2}, Lmin3d/Utils;->makeFloatBuffer4(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v12}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :goto_2
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->children()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_14

    .line 101
    iget-boolean v0, p0, Lmin3d/core/Renderer;->_logFps:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lmin3d/core/Renderer;->_frameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmin3d/core/Renderer;->_frameCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmin3d/core/Renderer;->_timeLastSample:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lmin3d/core/Renderer;->_frameCount:J

    long-to-float v4, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    div-float v2, v4, v2

    iput v2, p0, Lmin3d/core/Renderer;->_fps:F

    iget-object v2, p0, Lmin3d/core/Renderer;->_activityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lmin3d/core/Renderer;->_memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FPS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmin3d/core/Renderer;->_fps:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", availMem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmin3d/core/Renderer;->_memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-wide v0, p0, Lmin3d/core/Renderer;->_timeLastSample:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmin3d/core/Renderer;->_frameCount:J

    .line 102
    :cond_2
    return-void

    .line 98
    :cond_3
    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v1

    invoke-virtual {v1}, Lmin3d/core/ManagedLightList;->glIndexEnabledDirty()[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v1

    invoke-virtual {v1}, Lmin3d/core/ManagedLightList;->glIndexEnabled()[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    add-int/lit16 v2, v0, 0x4000

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmin3d/core/ManagedLightList;->getLightByGlIndex(I)Lmin3d/vos/Light;

    move-result-object v1

    iget-object v2, v1, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v2}, Lmin3d/vos/Number3dManaged;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v2}, Lmin3d/vos/Number3dManaged;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->_spotCutoffAngle:Lmin3d/vos/FloatManaged;

    invoke-virtual {v2}, Lmin3d/vos/FloatManaged;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->_spotExponent:Lmin3d/vos/FloatManaged;

    invoke-virtual {v2}, Lmin3d/vos/FloatManaged;->setDirtyFlag()V

    iget-object v2, v1, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v2}, Lmin3d/vos/Number3dManaged;->setDirtyFlag()V

    iget-object v1, v1, Lmin3d/vos/Light;->_isVisible:Lmin3d/vos/BooleanManaged;

    invoke-virtual {v1}, Lmin3d/vos/BooleanManaged;->setDirtyFlag()V

    :goto_3
    iget-object v1, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v1}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v1

    invoke-virtual {v1}, Lmin3d/core/ManagedLightList;->glIndexEnabledDirty()[Z

    move-result-object v1

    aput-boolean v10, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    add-int/lit16 v2, v0, 0x4000

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_3

    :cond_6
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lmin3d/vos/Light;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v3}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmin3d/core/ManagedLightList;->getGlIndexByLight(Lmin3d/vos/Light;)I

    move-result v3

    add-int/lit16 v3, v3, 0x4000

    iget-object v4, v2, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lmin3d/vos/Light;->commitPositionAndTypeBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1203

    iget-object v6, v2, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->clearDirtyFlag()V

    :cond_7
    iget-object v4, v2, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v2, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->commitToFloatBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1200

    iget-object v6, v2, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    invoke-virtual {v6}, Lmin3d/vos/Color4Managed;->floatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->clearDirtyFlag()V

    :cond_8
    iget-object v4, v2, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v2, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->commitToFloatBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1201

    iget-object v6, v2, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    invoke-virtual {v6}, Lmin3d/vos/Color4Managed;->floatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->clearDirtyFlag()V

    :cond_9
    iget-object v4, v2, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->commitToFloatBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1202

    iget-object v6, v2, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    invoke-virtual {v6}, Lmin3d/vos/Color4Managed;->floatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->clearDirtyFlag()V

    :cond_a
    iget-object v4, v2, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->commitToFloatBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1600

    iget-object v6, v2, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    invoke-virtual {v6}, Lmin3d/vos/Color4Managed;->floatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    invoke-virtual {v4}, Lmin3d/vos/Color4Managed;->clearDirtyFlag()V

    :cond_b
    iget-object v4, v2, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v2, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->commitToFloatBuffer()V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1204

    iget-object v6, v2, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v6}, Lmin3d/vos/Number3dManaged;->floatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    iget-object v4, v2, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->clearDirtyFlag()V

    :cond_c
    iget-object v4, v2, Lmin3d/vos/Light;->_spotCutoffAngle:Lmin3d/vos/FloatManaged;

    invoke-virtual {v4}, Lmin3d/vos/FloatManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1206

    iget-object v6, v2, Lmin3d/vos/Light;->_spotCutoffAngle:Lmin3d/vos/FloatManaged;

    invoke-virtual {v6}, Lmin3d/vos/FloatManaged;->get()F

    move-result v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    :cond_d
    iget-object v4, v2, Lmin3d/vos/Light;->_spotExponent:Lmin3d/vos/FloatManaged;

    invoke-virtual {v4}, Lmin3d/vos/FloatManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1205

    iget-object v6, v2, Lmin3d/vos/Light;->_spotExponent:Lmin3d/vos/FloatManaged;

    invoke-virtual {v6}, Lmin3d/vos/FloatManaged;->get()F

    move-result v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    :cond_e
    iget-object v4, v2, Lmin3d/vos/Light;->_isVisible:Lmin3d/vos/BooleanManaged;

    invoke-virtual {v4}, Lmin3d/vos/BooleanManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v2, Lmin3d/vos/Light;->_isVisible:Lmin3d/vos/BooleanManaged;

    invoke-virtual {v4}, Lmin3d/vos/BooleanManaged;->get()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :goto_4
    iget-object v4, v2, Lmin3d/vos/Light;->_isVisible:Lmin3d/vos/BooleanManaged;

    invoke-virtual {v4}, Lmin3d/vos/BooleanManaged;->clearDirtyFlag()V

    :cond_f
    iget-object v4, v2, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v4}, Lmin3d/vos/Number3dManaged;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1207

    iget-object v6, v2, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v6}, Lmin3d/vos/Number3dManaged;->getX()F

    move-result v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1208

    iget-object v6, v2, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v6}, Lmin3d/vos/Number3dManaged;->getY()F

    move-result v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1209

    iget-object v6, v2, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v6}, Lmin3d/vos/Number3dManaged;->getZ()F

    move-result v6

    invoke-interface {v4, v3, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    :cond_10
    invoke-virtual {v2}, Lmin3d/vos/Light;->clearDirtyFlag()V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object v4, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_4

    .line 99
    :cond_13
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v12}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->children()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmin3d/core/Object3d;

    invoke-virtual {v1}, Lmin3d/core/Object3d;->animationEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    check-cast v0, Lmin3d/animation/AnimationObject3d;

    invoke-virtual {v0}, Lmin3d/animation/AnimationObject3d;->update()V

    :cond_15
    invoke-direct {p0, v1}, Lmin3d/core/Renderer;->drawObject(Lmin3d/core/Object3d;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v0, "Min3D"

    const-string v1, "Renderer.onSurfaceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lmin3d/core/Renderer;->_surfaceAspectRatio:F

    .line 85
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2, v2, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 86
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 87
    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 89
    invoke-direct {p0}, Lmin3d/core/Renderer;->updateViewFrustrum()V

    .line 90
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "$gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/16 v3, 0xde1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    const-string v0, "Min3D"

    const-string v1, "Renderer.onSurfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lmin3d/core/RenderCaps;->setRenderCaps(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 71
    iput-object p1, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 73
    invoke-static {}, Lmin3d/Shared;->textureManager()Lmin3d/core/TextureManager;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/TextureManager;->reset()V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x201

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-interface {v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x901

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x405

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    iget-object v0, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x4000

    :goto_0
    const/16 v1, 0x4008

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lmin3d/core/Renderer;->_scene:Lmin3d/core/Scene;

    invoke-virtual {v0}, Lmin3d/core/Scene;->init()V

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final uploadTextureAndReturnId(Landroid/graphics/Bitmap;Z)I
    .locals 7
    .param p1, "$bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "$generateMipMap"    # Z

    .prologue
    const v6, 0x8191

    const/4 v3, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    .line 547
    new-array v0, v3, [I

    .line 548
    .local v0, "a":[I
    iget-object v2, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v3, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 549
    aget v1, v0, v4

    .line 550
    .local v1, "glTextureId":I
    iget-object v2, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 552
    if-eqz p2, :cond_0

    iget-object v2, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v2, v2, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v5, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 559
    :goto_0
    invoke-static {v5, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 561
    return v1

    .line 555
    :cond_0
    iget-object v2, p0, Lmin3d/core/Renderer;->_gl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v3, 0x0

    invoke-interface {v2, v5, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_0
.end method
