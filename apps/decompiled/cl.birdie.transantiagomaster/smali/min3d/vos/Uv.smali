.class public final Lmin3d/vos/Uv;
.super Ljava/lang/Object;
.source "Uv.java"


# instance fields
.field public u:F

.field public v:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lmin3d/vos/Uv;->u:F

    .line 14
    iput v0, p0, Lmin3d/vos/Uv;->v:F

    .line 15
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "$u"    # F
    .param p2, "$v"    # F

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lmin3d/vos/Uv;->u:F

    .line 20
    iput p2, p0, Lmin3d/vos/Uv;->v:F

    .line 21
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lmin3d/vos/Uv;->clone()Lmin3d/vos/Uv;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lmin3d/vos/Uv;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lmin3d/vos/Uv;

    iget v1, p0, Lmin3d/vos/Uv;->u:F

    iget v2, p0, Lmin3d/vos/Uv;->v:F

    invoke-direct {v0, v1, v2}, Lmin3d/vos/Uv;-><init>(FF)V

    return-object v0
.end method
