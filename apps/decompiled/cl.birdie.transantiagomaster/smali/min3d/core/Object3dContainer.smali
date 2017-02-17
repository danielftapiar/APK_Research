.class public final Lmin3d/core/Object3dContainer;
.super Lmin3d/core/Object3d;
.source "Object3dContainer.java"

# interfaces
.implements Lmin3d/interfaces/IObject3dContainer;


# instance fields
.field protected _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/core/Object3d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmin3d/core/Object3d;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public constructor <init>(B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmin3d/core/Object3d;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private constructor <init>(Lmin3d/core/Vertices;Lmin3d/core/FacesBufferedList;Lmin3d/core/TextureList;)V
    .locals 1
    .param p1, "$vertices"    # Lmin3d/core/Vertices;
    .param p2, "$faces"    # Lmin3d/core/FacesBufferedList;
    .param p3, "$textures"    # Lmin3d/core/TextureList;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lmin3d/core/Object3d;-><init>(Lmin3d/core/Vertices;Lmin3d/core/FacesBufferedList;Lmin3d/core/TextureList;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public final addChild(Lmin3d/core/Object3d;)V
    .locals 1
    .param p1, "$o"    # Lmin3d/core/Object3d;

    .prologue
    .line 44
    iget-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1, p0}, Lmin3d/core/Object3d;->parent(Lmin3d/interfaces/IObject3dContainer;)V

    .line 47
    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->scene()Lmin3d/core/Scene;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmin3d/core/Object3d;->scene(Lmin3d/core/Scene;)V

    .line 48
    return-void
.end method

.method final children()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/core/Object3d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final bridge synthetic clone()Lmin3d/core/Object3d;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lmin3d/core/Object3dContainer;->_vertices:Lmin3d/core/Vertices;

    invoke-virtual {v0}, Lmin3d/core/Vertices;->clone()Lmin3d/core/Vertices;

    move-result-object v0

    iget-object v1, p0, Lmin3d/core/Object3dContainer;->_faces:Lmin3d/core/FacesBufferedList;

    invoke-virtual {v1}, Lmin3d/core/FacesBufferedList;->clone()Lmin3d/core/FacesBufferedList;

    move-result-object v1

    new-instance v2, Lmin3d/core/Object3dContainer;

    iget-object v3, p0, Lmin3d/core/Object3dContainer;->_textures:Lmin3d/core/TextureList;

    invoke-direct {v2, v0, v1, v3}, Lmin3d/core/Object3dContainer;-><init>(Lmin3d/core/Vertices;Lmin3d/core/FacesBufferedList;Lmin3d/core/TextureList;)V

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->x:F

    iput v1, v0, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->y:F

    iput v1, v0, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->position()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->z:F

    iput v1, v0, Lmin3d/vos/Number3d;->z:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->x:F

    iput v1, v0, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->y:F

    iput v1, v0, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->z:F

    iput v1, v0, Lmin3d/vos/Number3d;->z:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->x:F

    iput v1, v0, Lmin3d/vos/Number3d;->x:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->y:F

    iput v1, v0, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v1

    iget v1, v1, Lmin3d/vos/Number3d;->z:F

    iput v1, v0, Lmin3d/vos/Number3d;->z:F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lmin3d/core/Object3dContainer;->getChildAt(I)Lmin3d/core/Object3d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmin3d/core/Object3dContainer;->addChild(Lmin3d/core/Object3d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getChildAt(I)Lmin3d/core/Object3d;
    .locals 1
    .param p1, "$index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmin3d/core/Object3d;

    return-object v0
.end method

.method public final numChildren()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final removeChild(Lmin3d/core/Object3d;)Z
    .locals 3
    .param p1, "$o"    # Lmin3d/core/Object3d;

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lmin3d/core/Object3dContainer;->_children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v2}, Lmin3d/core/Object3d;->parent(Lmin3d/interfaces/IObject3dContainer;)V

    .line 64
    invoke-virtual {p1, v2}, Lmin3d/core/Object3d;->scene(Lmin3d/core/Scene;)V

    .line 66
    :cond_0
    return v0
.end method
