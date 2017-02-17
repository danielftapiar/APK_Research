.class public final Lmin3d/core/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lmin3d/interfaces/IDirtyParent;
.implements Lmin3d/interfaces/IObject3dContainer;


# instance fields
.field private _backgroundColor:Lmin3d/vos/Color4Managed;

.field private _camera:Lmin3d/vos/CameraVo;

.field private _children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/core/Object3d;",
            ">;"
        }
    .end annotation
.end field

.field private _fogColor:Lmin3d/vos/Color4;

.field private _fogEnabled:Z

.field private _fogFar:F

.field private _fogNear:F

.field private _fogType:Lmin3d/vos/FogType;

.field private _lightingEnabled:Z

.field private _lights:Lmin3d/core/ManagedLightList;

.field private _sceneController:Lmin3d/interfaces/ISceneController;


# direct methods
.method public constructor <init>(Lmin3d/interfaces/ISceneController;)V
    .locals 2
    .param p1, "$sceneController"    # Lmin3d/interfaces/ISceneController;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    .line 38
    new-instance v0, Lmin3d/core/ManagedLightList;

    invoke-direct {v0}, Lmin3d/core/ManagedLightList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Scene;->_lights:Lmin3d/core/ManagedLightList;

    .line 39
    new-instance v0, Lmin3d/vos/Color4;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lmin3d/vos/Color4;-><init>(I)V

    iput-object v0, p0, Lmin3d/core/Scene;->_fogColor:Lmin3d/vos/Color4;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lmin3d/core/Scene;->_fogNear:F

    .line 41
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lmin3d/core/Scene;->_fogFar:F

    .line 42
    sget-object v0, Lmin3d/vos/FogType;->LINEAR:Lmin3d/vos/FogType;

    iput-object v0, p0, Lmin3d/core/Scene;->_fogType:Lmin3d/vos/FogType;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmin3d/core/Scene;->_fogEnabled:Z

    .line 44
    return-void
.end method

.method private clearChildren(Lmin3d/interfaces/IObject3dContainer;)V
    .locals 3
    .param p1, "$c"    # Lmin3d/interfaces/IObject3dContainer;

    .prologue
    .line 274
    invoke-interface {p1}, Lmin3d/interfaces/IObject3dContainer;->numChildren()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 284
    return-void

    .line 276
    :cond_0
    invoke-interface {p1, v0}, Lmin3d/interfaces/IObject3dContainer;->getChildAt(I)Lmin3d/core/Object3d;

    move-result-object v1

    .line 277
    .local v1, "o":Lmin3d/core/Object3d;
    invoke-virtual {v1}, Lmin3d/core/Object3d;->clear()V

    .line 279
    instance-of v2, v1, Lmin3d/core/Object3dContainer;

    if-eqz v2, :cond_1

    .line 281
    check-cast v1, Lmin3d/core/Object3dContainer;

    .end local v1    # "o":Lmin3d/core/Object3d;
    invoke-direct {p0, v1}, Lmin3d/core/Scene;->clearChildren(Lmin3d/interfaces/IObject3dContainer;)V

    .line 274
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final addChild(Lmin3d/core/Object3d;)V
    .locals 1
    .param p1, "$o"    # Lmin3d/core/Object3d;

    .prologue
    .line 88
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p1, p0}, Lmin3d/core/Object3d;->parent(Lmin3d/interfaces/IObject3dContainer;)V

    .line 93
    invoke-virtual {p1, p0}, Lmin3d/core/Object3d;->scene(Lmin3d/core/Scene;)V

    goto :goto_0
.end method

.method public final backgroundColor()Lmin3d/vos/Color4Managed;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmin3d/core/Scene;->_backgroundColor:Lmin3d/vos/Color4Managed;

    return-object v0
.end method

.method public final camera()Lmin3d/vos/CameraVo;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmin3d/core/Scene;->_camera:Lmin3d/vos/CameraVo;

    return-object v0
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
    .line 269
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final fogColor()Lmin3d/vos/Color4;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lmin3d/core/Scene;->_fogColor:Lmin3d/vos/Color4;

    return-object v0
.end method

.method public final fogEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lmin3d/core/Scene;->_fogEnabled:Z

    return v0
.end method

.method public final fogFar()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lmin3d/core/Scene;->_fogFar:F

    return v0
.end method

.method public final fogNear()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lmin3d/core/Scene;->_fogNear:F

    return v0
.end method

.method public final fogType()Lmin3d/vos/FogType;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmin3d/core/Scene;->_fogType:Lmin3d/vos/FogType;

    return-object v0
.end method

.method public final getChildAt(I)Lmin3d/core/Object3d;
    .locals 1
    .param p1, "$index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmin3d/core/Object3d;

    return-object v0
.end method

.method final init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const-string v0, "Min3D"

    const-string v1, "Scene.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p0}, Lmin3d/core/Scene;->clearChildren(Lmin3d/interfaces/IObject3dContainer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    new-instance v0, Lmin3d/vos/CameraVo;

    invoke-direct {v0}, Lmin3d/vos/CameraVo;-><init>()V

    iput-object v0, p0, Lmin3d/core/Scene;->_camera:Lmin3d/vos/CameraVo;

    new-instance v0, Lmin3d/vos/Color4Managed;

    invoke-direct {v0, v2, v2, v2, p0}, Lmin3d/vos/Color4Managed;-><init>(IIILmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/core/Scene;->_backgroundColor:Lmin3d/vos/Color4Managed;

    new-instance v0, Lmin3d/core/ManagedLightList;

    invoke-direct {v0}, Lmin3d/core/ManagedLightList;-><init>()V

    iput-object v0, p0, Lmin3d/core/Scene;->_lights:Lmin3d/core/ManagedLightList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmin3d/core/Scene;->_lightingEnabled:Z

    .line 254
    iget-object v0, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v0}, Lmin3d/interfaces/ISceneController;->initScene()V

    .line 255
    iget-object v0, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v0}, Lmin3d/interfaces/ISceneController;->getInitSceneHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v1}, Lmin3d/interfaces/ISceneController;->getInitSceneRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public final lightingEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lmin3d/core/Scene;->_lightingEnabled:Z

    return v0
.end method

.method public final lights()Lmin3d/core/ManagedLightList;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmin3d/core/Scene;->_lights:Lmin3d/core/ManagedLightList;

    return-object v0
.end method

.method public final numChildren()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final onDirty()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public final removeChild(Lmin3d/core/Object3d;)Z
    .locals 1
    .param p1, "$o"    # Lmin3d/core/Object3d;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Lmin3d/core/Object3d;->parent(Lmin3d/interfaces/IObject3dContainer;)V

    .line 110
    invoke-virtual {p1, v0}, Lmin3d/core/Object3d;->scene(Lmin3d/core/Scene;)V

    .line 111
    iget-object v0, p0, Lmin3d/core/Scene;->_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final update()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v0}, Lmin3d/interfaces/ISceneController;->updateScene()V

    .line 261
    iget-object v0, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v0}, Lmin3d/interfaces/ISceneController;->getUpdateSceneHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmin3d/core/Scene;->_sceneController:Lmin3d/interfaces/ISceneController;

    invoke-interface {v1}, Lmin3d/interfaces/ISceneController;->getUpdateSceneRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
