.class public Lcl/birdie/transantiagomaster/Splash3DActivity;
.super Lmin3d/core/RendererActivity;
.source "Splash3DActivity.java"


# instance fields
.field private final CAM_RADIUS_X:F

.field private final CAM_RADIUS_Y:F

.field private final CAM_RADIUS_Z:F

.field private final ROTATION_SPEED:F

.field protected _active:Z

.field protected _splashTime:I

.field private monster:Lmin3d/core/Object3dContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmin3d/core/RendererActivity;-><init>()V

    .line 13
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->CAM_RADIUS_X:F

    .line 14
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->CAM_RADIUS_Y:F

    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->CAM_RADIUS_Z:F

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->ROTATION_SPEED:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->_active:Z

    .line 28
    const/16 v0, 0xbb8

    iput v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->_splashTime:I

    .line 12
    return-void
.end method


# virtual methods
.method public final initScene()V
    .locals 6

    .prologue
    .line 32
    iget-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->backgroundColor()Lmin3d/vos/Color4Managed;

    move-result-object v2

    invoke-virtual {v2}, Lmin3d/vos/Color4Managed;->setAll$1349ef()V

    .line 34
    new-instance v0, Lmin3d/vos/Light;

    invoke-direct {v0}, Lmin3d/vos/Light;-><init>()V

    .line 37
    .local v0, "_light":Lmin3d/vos/Light;
    sget-object v2, Lmin3d/vos/LightType;->POSITIONAL:Lmin3d/vos/LightType;

    invoke-virtual {v0, v2}, Lmin3d/vos/Light;->type(Lmin3d/vos/LightType;)V

    .line 38
    iget-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->scene:Lmin3d/core/Scene;

    invoke-virtual {v2}, Lmin3d/core/Scene;->lights()Lmin3d/core/ManagedLightList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmin3d/core/ManagedLightList;->add(Lmin3d/vos/Light;)Z

    .line 46
    sget-object v2, Lmin3d/parser/Parser$Type;->OBJ:Lmin3d/parser/Parser$Type;

    .line 47
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/Splash3DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "cl.birdie.transantiagomaster:raw/logobirdie_obj"

    .line 46
    invoke-static {v2, v3, v4}, Lmin3d/parser/Parser;->createParser$6795464f(Lmin3d/parser/Parser$Type;Landroid/content/res/Resources;Ljava/lang/String;)Lmin3d/parser/IParser;

    move-result-object v1

    .line 48
    .local v1, "parser":Lmin3d/parser/IParser;
    invoke-interface {v1}, Lmin3d/parser/IParser;->parse()V

    .line 50
    invoke-interface {v1}, Lmin3d/parser/IParser;->getParsedObject()Lmin3d/core/Object3dContainer;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    .line 53
    iget-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v2

    iget-object v3, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v3}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v3

    iget-object v4, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v4}, Lmin3d/core/Object3dContainer;->scale()Lmin3d/vos/Number3d;

    move-result-object v4

    const v5, 0x3e6147ae    # 0.22f

    iput v5, v4, Lmin3d/vos/Number3d;->z:F

    iput v5, v3, Lmin3d/vos/Number3d;->y:F

    iput v5, v2, Lmin3d/vos/Number3d;->x:F

    .line 55
    iget-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v2}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v2

    iget v3, v2, Lmin3d/vos/Number3d;->x:F

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v3, v4

    iput v3, v2, Lmin3d/vos/Number3d;->x:F

    .line 64
    iget-object v2, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->scene:Lmin3d/core/Scene;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v2, v3}, Lmin3d/core/Scene;->addChild(Lmin3d/core/Object3d;)V

    .line 97
    return-void
.end method

.method public final updateScene()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcl/birdie/transantiagomaster/Splash3DActivity;->monster:Lmin3d/core/Object3dContainer;

    invoke-virtual {v0}, Lmin3d/core/Object3dContainer;->rotation()Lmin3d/vos/Number3d;

    move-result-object v0

    iget v1, v0, Lmin3d/vos/Number3d;->z:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, v0, Lmin3d/vos/Number3d;->z:F

    .line 115
    return-void
.end method
