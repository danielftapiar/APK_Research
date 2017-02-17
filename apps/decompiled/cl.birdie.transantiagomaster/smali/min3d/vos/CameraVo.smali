.class public final Lmin3d/vos/CameraVo;
.super Ljava/lang/Object;
.source "CameraVo.java"


# instance fields
.field public frustum:Lmin3d/vos/FrustumManaged;

.field public position:Lmin3d/vos/Number3d;

.field public target:Lmin3d/vos/Number3d;

.field public upAxis:Lmin3d/vos/Number3d;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lmin3d/vos/Number3d;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v2, v1}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/vos/CameraVo;->position:Lmin3d/vos/Number3d;

    .line 9
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0, v2, v2, v2}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/vos/CameraVo;->target:Lmin3d/vos/Number3d;

    .line 10
    new-instance v0, Lmin3d/vos/Number3d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lmin3d/vos/Number3d;-><init>(FFF)V

    iput-object v0, p0, Lmin3d/vos/CameraVo;->upAxis:Lmin3d/vos/Number3d;

    .line 12
    new-instance v0, Lmin3d/vos/FrustumManaged;

    invoke-direct {v0}, Lmin3d/vos/FrustumManaged;-><init>()V

    iput-object v0, p0, Lmin3d/vos/CameraVo;->frustum:Lmin3d/vos/FrustumManaged;

    .line 17
    return-void
.end method
