.class public final Lmin3d/core/Vertices;
.super Ljava/lang/Object;
.source "Vertices.java"


# instance fields
.field private _colors:Lmin3d/core/Color4BufferList;

.field private _hasColors:Z

.field private _hasNormals:Z

.field private _hasUvs:Z

.field private _normals:Lmin3d/core/Number3dBufferList;

.field private _points:Lmin3d/core/Number3dBufferList;

.field private _uvs:Lmin3d/core/UvBufferList;


# direct methods
.method public constructor <init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "$maxElements"    # I
    .param p2, "$useUvs"    # Ljava/lang/Boolean;
    .param p3, "$useNormals"    # Ljava/lang/Boolean;
    .param p4, "$useColors"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lmin3d/core/Number3dBufferList;

    invoke-direct {v0, p1}, Lmin3d/core/Number3dBufferList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmin3d/core/Vertices;->_hasUvs:Z

    .line 50
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmin3d/core/Vertices;->_hasNormals:Z

    .line 51
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmin3d/core/Vertices;->_hasColors:Z

    .line 53
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasUvs:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmin3d/core/UvBufferList;

    invoke-direct {v0, p1}, Lmin3d/core/UvBufferList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    .line 54
    :cond_0
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasNormals:Z

    if-eqz v0, :cond_1

    new-instance v0, Lmin3d/core/Number3dBufferList;

    invoke-direct {v0, p1}, Lmin3d/core/Number3dBufferList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    .line 55
    :cond_1
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasColors:Z

    if-eqz v0, :cond_2

    new-instance v0, Lmin3d/core/Color4BufferList;

    invoke-direct {v0, p1}, Lmin3d/core/Color4BufferList;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    .line 56
    :cond_2
    return-void
.end method

.method private constructor <init>(Lmin3d/core/Number3dBufferList;Lmin3d/core/UvBufferList;Lmin3d/core/Number3dBufferList;Lmin3d/core/Color4BufferList;)V
    .locals 3
    .param p1, "$points"    # Lmin3d/core/Number3dBufferList;
    .param p2, "$uvs"    # Lmin3d/core/UvBufferList;
    .param p3, "$normals"    # Lmin3d/core/Number3dBufferList;
    .param p4, "$colors"    # Lmin3d/core/Color4BufferList;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    .line 62
    iput-object p2, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    .line 63
    iput-object p3, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    .line 64
    iput-object p4, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    .line 66
    iget-object v0, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    invoke-virtual {v0}, Lmin3d/core/UvBufferList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmin3d/core/Vertices;->_hasUvs:Z

    .line 67
    iget-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0}, Lmin3d/core/Number3dBufferList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmin3d/core/Vertices;->_hasNormals:Z

    .line 68
    iget-object v0, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    invoke-virtual {v0}, Lmin3d/core/Color4BufferList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lmin3d/core/Vertices;->_hasColors:Z

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v0, v2

    .line 67
    goto :goto_1

    :cond_2
    move v1, v2

    .line 68
    goto :goto_2
.end method


# virtual methods
.method public final addVertex(Lmin3d/vos/Number3d;Lmin3d/vos/Uv;Lmin3d/vos/Number3d;Lmin3d/vos/Color4;)S
    .locals 1
    .param p1, "$point"    # Lmin3d/vos/Number3d;
    .param p2, "$textureUv"    # Lmin3d/vos/Uv;
    .param p3, "$normal"    # Lmin3d/vos/Number3d;
    .param p4, "$color"    # Lmin3d/vos/Color4;

    .prologue
    .line 130
    iget-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0, p1}, Lmin3d/core/Number3dBufferList;->add(Lmin3d/vos/Number3d;)V

    .line 132
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasUvs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    invoke-virtual {v0, p2}, Lmin3d/core/UvBufferList;->add(Lmin3d/vos/Uv;)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasNormals:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0, p3}, Lmin3d/core/Number3dBufferList;->add(Lmin3d/vos/Number3d;)V

    .line 134
    :cond_1
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasColors:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    invoke-virtual {v0, p4}, Lmin3d/core/Color4BufferList;->add(Lmin3d/vos/Color4;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0}, Lmin3d/core/Number3dBufferList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0
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
    invoke-virtual {p0}, Lmin3d/core/Vertices;->clone()Lmin3d/core/Vertices;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/core/Vertices;
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lmin3d/core/Vertices;

    iget-object v1, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v1}, Lmin3d/core/Number3dBufferList;->clone()Lmin3d/core/Number3dBufferList;

    move-result-object v1

    iget-object v2, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    invoke-virtual {v2}, Lmin3d/core/UvBufferList;->clone()Lmin3d/core/UvBufferList;

    move-result-object v2

    iget-object v3, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v3}, Lmin3d/core/Number3dBufferList;->clone()Lmin3d/core/Number3dBufferList;

    move-result-object v3

    iget-object v4, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    invoke-virtual {v4}, Lmin3d/core/Color4BufferList;->clone()Lmin3d/core/Color4BufferList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmin3d/core/Vertices;-><init>(Lmin3d/core/Number3dBufferList;Lmin3d/core/UvBufferList;Lmin3d/core/Number3dBufferList;Lmin3d/core/Color4BufferList;)V

    .line 181
    return-object v0
.end method

.method final colors()Lmin3d/core/Color4BufferList;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmin3d/core/Vertices;->_colors:Lmin3d/core/Color4BufferList;

    return-object v0
.end method

.method public final hasColors()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasColors:Z

    return v0
.end method

.method public final hasNormals()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasNormals:Z

    return v0
.end method

.method public final hasUvs()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lmin3d/core/Vertices;->_hasUvs:Z

    return v0
.end method

.method final normals()Lmin3d/core/Number3dBufferList;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    return-object v0
.end method

.method public final overwriteNormals([F)V
    .locals 1
    .param p1, "$newNormals"    # [F

    .prologue
    .line 146
    iget-object v0, p0, Lmin3d/core/Vertices;->_normals:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0, p1}, Lmin3d/core/Number3dBufferList;->overwrite([F)V

    .line 147
    return-void
.end method

.method public final overwriteVerts([F)V
    .locals 1
    .param p1, "$newVerts"    # [F

    .prologue
    .line 141
    iget-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0, p1}, Lmin3d/core/Number3dBufferList;->overwrite([F)V

    .line 142
    return-void
.end method

.method final points()Lmin3d/core/Number3dBufferList;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmin3d/core/Vertices;->_points:Lmin3d/core/Number3dBufferList;

    invoke-virtual {v0}, Lmin3d/core/Number3dBufferList;->size()I

    move-result v0

    return v0
.end method

.method final uvs()Lmin3d/core/UvBufferList;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmin3d/core/Vertices;->_uvs:Lmin3d/core/UvBufferList;

    return-object v0
.end method
