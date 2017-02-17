.class public final Lmin3d/vos/TexEnvxVo;
.super Ljava/lang/Object;
.source "TexEnvxVo.java"


# instance fields
.field public param:I

.field public pname:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x2200

    iput v0, p0, Lmin3d/vos/TexEnvxVo;->pname:I

    .line 14
    const/16 v0, 0x2100

    iput v0, p0, Lmin3d/vos/TexEnvxVo;->param:I

    .line 18
    return-void
.end method
