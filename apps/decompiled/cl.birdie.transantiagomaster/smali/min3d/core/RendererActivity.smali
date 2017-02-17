.class public Lmin3d/core/RendererActivity;
.super Landroid/app/Activity;
.source "RendererActivity.java"

# interfaces
.implements Lmin3d/interfaces/ISceneController;


# instance fields
.field protected _glSurfaceView:Landroid/opengl/GLSurfaceView;

.field protected _initSceneHander:Landroid/os/Handler;

.field final _initSceneRunnable:Ljava/lang/Runnable;

.field protected _updateSceneHander:Landroid/os/Handler;

.field final _updateSceneRunnable:Ljava/lang/Runnable;

.field public scene:Lmin3d/core/Scene;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lmin3d/core/RendererActivity$1;

    invoke-direct {v0, p0}, Lmin3d/core/RendererActivity$1;-><init>(Lmin3d/core/RendererActivity;)V

    iput-object v0, p0, Lmin3d/core/RendererActivity;->_initSceneRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lmin3d/core/RendererActivity$2;

    invoke-direct {v0, p0}, Lmin3d/core/RendererActivity$2;-><init>(Lmin3d/core/RendererActivity;)V

    iput-object v0, p0, Lmin3d/core/RendererActivity;->_updateSceneRunnable:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method public static onInitScene()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public static onUpdateScene()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method


# virtual methods
.method public final getInitSceneHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_initSceneHander:Landroid/os/Handler;

    return-object v0
.end method

.method public final getInitSceneRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_initSceneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getUpdateSceneHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_updateSceneHander:Landroid/os/Handler;

    return-object v0
.end method

.method public final getUpdateSceneRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_updateSceneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public initScene()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmin3d/core/RendererActivity;->_initSceneHander:Landroid/os/Handler;

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmin3d/core/RendererActivity;->_updateSceneHander:Landroid/os/Handler;

    .line 57
    invoke-static {p0}, Lmin3d/Shared;->context(Landroid/content/Context;)V

    .line 58
    new-instance v1, Lmin3d/core/Scene;

    invoke-direct {v1, p0}, Lmin3d/core/Scene;-><init>(Lmin3d/interfaces/ISceneController;)V

    iput-object v1, p0, Lmin3d/core/RendererActivity;->scene:Lmin3d/core/Scene;

    .line 59
    new-instance v0, Lmin3d/core/Renderer;

    iget-object v1, p0, Lmin3d/core/RendererActivity;->scene:Lmin3d/core/Scene;

    invoke-direct {v0, v1}, Lmin3d/core/Renderer;-><init>(Lmin3d/core/Scene;)V

    .line 60
    .local v0, "r":Lmin3d/core/Renderer;
    invoke-static {v0}, Lmin3d/Shared;->renderer(Lmin3d/core/Renderer;)V

    .line 62
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 63
    iget-object v1, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 65
    iget-object v1, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 67
    iget-object v1, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v1}, Lmin3d/core/RendererActivity;->setContentView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 110
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget-object v0, p0, Lmin3d/core/RendererActivity;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 103
    return-void
.end method

.method public updateScene()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
