.class public final Lmin3d/vos/TextureVo;
.super Ljava/lang/Object;
.source "TextureVo.java"


# instance fields
.field public offsetU:F

.field public offsetV:F

.field public repeatU:Z

.field public repeatV:Z

.field public textureEnvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/TexEnvxVo;",
            ">;"
        }
    .end annotation
.end field

.field public textureId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "$textureId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lmin3d/vos/TextureVo;->repeatU:Z

    .line 33
    iput-boolean v1, p0, Lmin3d/vos/TextureVo;->repeatV:Z

    .line 38
    iput v0, p0, Lmin3d/vos/TextureVo;->offsetU:F

    .line 39
    iput v0, p0, Lmin3d/vos/TextureVo;->offsetV:F

    .line 57
    iput-object p1, p0, Lmin3d/vos/TextureVo;->textureId:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/vos/TextureVo;->textureEnvs:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lmin3d/vos/TextureVo;->textureEnvs:Ljava/util/ArrayList;

    new-instance v1, Lmin3d/vos/TexEnvxVo;

    invoke-direct {v1}, Lmin3d/vos/TexEnvxVo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
