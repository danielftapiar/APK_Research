.class public Lmin3d/core/Object3d;
.super Ljava/lang/Object;
.source "Object3d.java"


# instance fields
.field protected _animationEnabled:Z

.field private _colorMaterialEnabled:Z

.field private _defaultColor:Lmin3d/vos/Color4;

.field private _doubleSidedEnabled:Z

.field protected _faces:Lmin3d/core/FacesBufferedList;

.field private _ignoreFaces:Z

.field private _isVisible:Z

.field private _lightingEnabled:Z

.field private _lineSmoothing:Z

.field private _lineWidth:F

.field private _name:Ljava/lang/String;

.field private _normalsEnabled:Z

.field private _parent:Lmin3d/interfaces/IObject3dContainer;

.field private _pointSize:F

.field private _pointSmoothing:Z

.field private _position:Lmin3d/vos/Number3d;

.field private _renderType:Lmin3d/vos/RenderType;

.field private _rotation:Lmin3d/vos/Number3d;

.field private _scale:Lmin3d/vos/Number3d;

.field private _scene:Lmin3d/core/Scene;

.field private _shadeModel:Lmin3d/vos/ShadeModel;

.field protected _textures:Lmin3d/core/TextureList;

.field private _texturesEnabled:Z

.field private _vertexColorsEnabled:Z

.field protected _vertices:Lmin3d/core/Vertices;


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "$maxVertices"    # I
    .param p2, "$maxFaces"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lmin3d/vos/RenderType;->TRIANGLES:Lmin3d/vos/RenderType;

    iput-object v0, p0, Lmin3d/core/Object3d;->_renderType:Lmin3d/vos/RenderType;

    .line 24
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_isVisible:Z

    .line 25
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_vertexColorsEnabled:Z

    .line 26
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_doubleSidedEnabled:Z

    .line 27
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_texturesEnabled:Z

    .line 28
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_normalsEnabled:Z

    .line 29
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_ignoreFaces:Z

    .line 30
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_colorMaterialEnabled:Z

    .line 31
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_lightingEnabled:Z

    .line 33
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v1, v1, v1}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    .line 34
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v1, v1, v1}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    .line 35
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v4, v4, v4}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    .line 37
    new-instance v0, Lmin3d/vos/Color4;

    invoke-direct {v0}, Lmin3d/vos/Color4;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3d;->_defaultColor:Lmin3d/vos/Color4;

    .line 39
    sget-object v0, Lmin3d/vos/ShadeModel;->SMOOTH:Lmin3d/vos/ShadeModel;

    iput-object v0, p0, Lmin3d/core/Object3d;->_shadeModel:Lmin3d/vos/ShadeModel;

    .line 40
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lmin3d/core/Object3d;->_pointSize:F

    .line 41
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_pointSmoothing:Z

    .line 42
    iput v4, p0, Lmin3d/core/Object3d;->_lineWidth:F

    .line 43
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_lineSmoothing:Z

    .line 52
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_animationEnabled:Z

    .line 62
    new-instance v0, Lmin3d/core/Vertices;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmin3d/core/Vertices;-><init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    .line 63
    new-instance v0, Lmin3d/core/FacesBufferedList;

    invoke-direct {v0, p2}, Lmin3d/core/FacesBufferedList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_faces:Lmin3d/core/FacesBufferedList;

    .line 64
    new-instance v0, Lmin3d/core/TextureList;

    invoke-direct {v0}, Lmin3d/core/TextureList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "$useUvs"    # Ljava/lang/Boolean;
    .param p2, "$useNormals"    # Ljava/lang/Boolean;
    .param p3, "$useVertexColors"    # Ljava/lang/Boolean;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lmin3d/vos/RenderType;->TRIANGLES:Lmin3d/vos/RenderType;

    iput-object v0, p0, Lmin3d/core/Object3d;->_renderType:Lmin3d/vos/RenderType;

    .line 24
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_isVisible:Z

    .line 25
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_vertexColorsEnabled:Z

    .line 26
    iput-boolean v1, p0, Lmin3d/core/Object3d;->_doubleSidedEnabled:Z

    .line 27
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_texturesEnabled:Z

    .line 28
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_normalsEnabled:Z

    .line 29
    iput-boolean v1, p0, Lmin3d/core/Object3d;->_ignoreFaces:Z

    .line 30
    iput-boolean v1, p0, Lmin3d/core/Object3d;->_colorMaterialEnabled:Z

    .line 31
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_lightingEnabled:Z

    .line 33
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v2, v2, v2}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    .line 34
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v2, v2, v2}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    .line 35
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v4, v4, v4}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    .line 37
    new-instance v0, Lmin3d/vos/Color4;

    invoke-direct {v0}, Lmin3d/vos/Color4;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3d;->_defaultColor:Lmin3d/vos/Color4;

    .line 39
    sget-object v0, Lmin3d/vos/ShadeModel;->SMOOTH:Lmin3d/vos/ShadeModel;

    iput-object v0, p0, Lmin3d/core/Object3d;->_shadeModel:Lmin3d/vos/ShadeModel;

    .line 40
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lmin3d/core/Object3d;->_pointSize:F

    .line 41
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_pointSmoothing:Z

    .line 42
    iput v4, p0, Lmin3d/core/Object3d;->_lineWidth:F

    .line 43
    iput-boolean v1, p0, Lmin3d/core/Object3d;->_lineSmoothing:Z

    .line 52
    iput-boolean v1, p0, Lmin3d/core/Object3d;->_animationEnabled:Z

    .line 72
    new-instance v0, Lmin3d/core/Vertices;

    invoke-direct {v0, v1, p1, p2, p3}, Lmin3d/core/Vertices;-><init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    .line 73
    new-instance v0, Lmin3d/core/FacesBufferedList;

    invoke-direct {v0, v1}, Lmin3d/core/FacesBufferedList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_faces:Lmin3d/core/FacesBufferedList;

    .line 74
    new-instance v0, Lmin3d/core/TextureList;

    invoke-direct {v0}, Lmin3d/core/TextureList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    .line 75
    return-void
.end method

.method public constructor <init>(Lmin3d/core/Vertices;Lmin3d/core/FacesBufferedList;Lmin3d/core/TextureList;)V
    .locals 5
    .param p1, "$vertices"    # Lmin3d/core/Vertices;
    .param p2, "$faces"    # Lmin3d/core/FacesBufferedList;
    .param p3, "$textures"    # Lmin3d/core/TextureList;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lmin3d/vos/RenderType;->TRIANGLES:Lmin3d/vos/RenderType;

    iput-object v0, p0, Lmin3d/core/Object3d;->_renderType:Lmin3d/vos/RenderType;

    .line 24
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_isVisible:Z

    .line 25
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_vertexColorsEnabled:Z

    .line 26
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_doubleSidedEnabled:Z

    .line 27
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_texturesEnabled:Z

    .line 28
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_normalsEnabled:Z

    .line 29
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_ignoreFaces:Z

    .line 30
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_colorMaterialEnabled:Z

    .line 31
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_lightingEnabled:Z

    .line 33
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v1, v1, v1}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    .line 34
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v1, v1, v1}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    .line 35
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v4, v4, v4}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    .line 37
    new-instance v0, Lmin3d/vos/Color4;

    invoke-direct {v0}, Lmin3d/vos/Color4;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3d;->_defaultColor:Lmin3d/vos/Color4;

    .line 39
    sget-object v0, Lmin3d/vos/ShadeModel;->SMOOTH:Lmin3d/vos/ShadeModel;

    iput-object v0, p0, Lmin3d/core/Object3d;->_shadeModel:Lmin3d/vos/ShadeModel;

    .line 40
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lmin3d/core/Object3d;->_pointSize:F

    .line 41
    iput-boolean v2, p0, Lmin3d/core/Object3d;->_pointSmoothing:Z

    .line 42
    iput v4, p0, Lmin3d/core/Object3d;->_lineWidth:F

    .line 43
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_lineSmoothing:Z

    .line 52
    iput-boolean v3, p0, Lmin3d/core/Object3d;->_animationEnabled:Z

    .line 82
    iput-object p1, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    .line 83
    iput-object p2, p0, Lmin3d/core/Object3d;->_faces:Lmin3d/core/FacesBufferedList;

    .line 84
    iput-object p3, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    .line 85
    return-void
.end method


# virtual methods
.method public final animationEnabled()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_animationEnabled:Z

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->points()Lmin3d/core/Number3dBufferList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->points()Lmin3d/core/Number3dBufferList;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/Number3dBufferList;->clear()V

    .line 316
    :cond_0
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->uvs()Lmin3d/core/UvBufferList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->uvs()Lmin3d/core/UvBufferList;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/UvBufferList;->clear()V

    .line 317
    :cond_1
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->normals()Lmin3d/core/Number3dBufferList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->normals()Lmin3d/core/Number3dBufferList;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/Number3dBufferList;->clear()V

    .line 318
    :cond_2
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->colors()Lmin3d/core/Color4BufferList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->colors()Lmin3d/core/Color4BufferList;

    move-result-object v0

    invoke-virtual {v0}, Lmin3d/core/Color4BufferList;->clear()V

    .line 319
    :cond_3
    iget-object v0, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    invoke-virtual {v0}, Lmin3d/core/TextureList;->clear()V

    .line 321
    :cond_4
    iget-object v0, p0, Lmin3d/core/Object3d;->_parent:Lmin3d/interfaces/IObject3dContainer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmin3d/core/Object3d;->_parent:Lmin3d/interfaces/IObject3dContainer;

    invoke-interface {v0, p0}, Lmin3d/interfaces/IObject3dContainer;->removeChild(Lmin3d/core/Object3d;)Z

    .line 322
    :cond_5
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lmin3d/core/Object3d;->clone()Lmin3d/core/Object3d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lmin3d/core/Object3d;
    .locals 5

    .prologue
    .line 472
    iget-object v3, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v3}, Lmin3d/core/Vertices;->clone()Lmin3d/core/Vertices;

    move-result-object v2

    .line 473
    .local v2, "v":Lmin3d/core/Vertices;
    iget-object v3, p0, Lmin3d/core/Object3d;->_faces:Lmin3d/core/FacesBufferedList;

    invoke-virtual {v3}, Lmin3d/core/FacesBufferedList;->clone()Lmin3d/core/FacesBufferedList;

    move-result-object v1

    .line 475
    .local v1, "f":Lmin3d/core/FacesBufferedList;
    new-instance v0, Lmin3d/core/Object3d;

    iget-object v3, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    invoke-direct {v0, v2, v1, v3}, Lmin3d/core/Object3d;-><init>(Lmin3d/core/Vertices;Lmin3d/core/FacesBufferedList;Lmin3d/core/TextureList;)V

    .line 477
    .local v0, "clone":Lmin3d/core/Object3d;
    iget-object v3, v0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->x:F

    iput v4, v3, Lmin3d/vos/Number3d;->x:F

    .line 478
    iget-object v3, v0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->y:F

    iput v4, v3, Lmin3d/vos/Number3d;->y:F

    .line 479
    iget-object v3, v0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->z:F

    iput v4, v3, Lmin3d/vos/Number3d;->z:F

    .line 481
    iget-object v3, v0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->x:F

    iput v4, v3, Lmin3d/vos/Number3d;->x:F

    .line 482
    iget-object v3, v0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->y:F

    iput v4, v3, Lmin3d/vos/Number3d;->y:F

    .line 483
    iget-object v3, v0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->z:F

    iput v4, v3, Lmin3d/vos/Number3d;->z:F

    .line 485
    iget-object v3, v0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->x:F

    iput v4, v3, Lmin3d/vos/Number3d;->x:F

    .line 486
    iget-object v3, v0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->y:F

    iput v4, v3, Lmin3d/vos/Number3d;->y:F

    .line 487
    iget-object v3, v0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget-object v4, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    iget v4, v4, Lmin3d/vos/Number3d;->z:F

    iput v4, v3, Lmin3d/vos/Number3d;->z:F

    .line 489
    return-object v0
.end method

.method public final colorMaterialEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_colorMaterialEnabled:Z

    return v0
.end method

.method public final defaultColor()Lmin3d/vos/Color4;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lmin3d/core/Object3d;->_defaultColor:Lmin3d/vos/Color4;

    return-object v0
.end method

.method public final doubleSidedEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_doubleSidedEnabled:Z

    return v0
.end method

.method public final faces()Lmin3d/core/FacesBufferedList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmin3d/core/Object3d;->_faces:Lmin3d/core/FacesBufferedList;

    return-object v0
.end method

.method public final hasNormals()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->hasNormals()Z

    move-result v0

    return v0
.end method

.method public final hasUvs()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->hasUvs()Z

    move-result v0

    return v0
.end method

.method public final hasVertexColors()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->hasColors()Z

    move-result v0

    return v0
.end method

.method public final ignoreFaces()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_ignoreFaces:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_isVisible:Z

    return v0
.end method

.method public final lightingEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_lightingEnabled:Z

    return v0
.end method

.method public final lineSmoothing()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_lineSmoothing:Z

    return v0
.end method

.method public final lineWidth()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lmin3d/core/Object3d;->_lineWidth:F

    return v0
.end method

.method public final name(Ljava/lang/String;)V
    .locals 0
    .param p1, "$s"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lmin3d/core/Object3d;->_name:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public final normalsEnabled()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_normalsEnabled:Z

    return v0
.end method

.method final parent(Lmin3d/interfaces/IObject3dContainer;)V
    .locals 0
    .param p1, "$container"    # Lmin3d/interfaces/IObject3dContainer;

    .prologue
    .line 441
    iput-object p1, p0, Lmin3d/core/Object3d;->_parent:Lmin3d/interfaces/IObject3dContainer;

    .line 442
    return-void
.end method

.method public final pointSize()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lmin3d/core/Object3d;->_pointSize:F

    return v0
.end method

.method public final pointSmoothing()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_pointSmoothing:Z

    return v0
.end method

.method public final position()Lmin3d/vos/Number3d;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lmin3d/core/Object3d;->_position:Lmin3d/vos/Number3d;

    return-object v0
.end method

.method public final renderType()Lmin3d/vos/RenderType;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lmin3d/core/Object3d;->_renderType:Lmin3d/vos/RenderType;

    return-object v0
.end method

.method public final rotation()Lmin3d/vos/Number3d;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lmin3d/core/Object3d;->_rotation:Lmin3d/vos/Number3d;

    return-object v0
.end method

.method public final scale()Lmin3d/vos/Number3d;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lmin3d/core/Object3d;->_scale:Lmin3d/vos/Number3d;

    return-object v0
.end method

.method final scene()Lmin3d/core/Scene;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lmin3d/core/Object3d;->_scene:Lmin3d/core/Scene;

    return-object v0
.end method

.method final scene(Lmin3d/core/Scene;)V
    .locals 0
    .param p1, "$scene"    # Lmin3d/core/Scene;

    .prologue
    .line 449
    iput-object p1, p0, Lmin3d/core/Object3d;->_scene:Lmin3d/core/Scene;

    .line 450
    return-void
.end method

.method public final shadeModel()Lmin3d/vos/ShadeModel;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lmin3d/core/Object3d;->_shadeModel:Lmin3d/vos/ShadeModel;

    return-object v0
.end method

.method public final textures()Lmin3d/core/TextureList;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmin3d/core/Object3d;->_textures:Lmin3d/core/TextureList;

    return-object v0
.end method

.method public final texturesEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_texturesEnabled:Z

    return v0
.end method

.method public final vertexColorsEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lmin3d/core/Object3d;->_vertexColorsEnabled:Z

    return v0
.end method

.method public final vertices()Lmin3d/core/Vertices;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmin3d/core/Object3d;->_vertices:Lmin3d/core/Vertices;

    return-object v0
.end method
