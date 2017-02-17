.class public final Lmin3d/vos/Color4;
.super Ljava/lang/Object;
.source "Color4.java"


# instance fields
.field public a:S

.field public b:S

.field public g:S

.field public r:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-short v0, p0, Lmin3d/vos/Color4;->r:S

    .line 24
    iput-short v0, p0, Lmin3d/vos/Color4;->g:S

    .line 25
    iput-short v0, p0, Lmin3d/vos/Color4;->b:S

    .line 26
    iput-short v0, p0, Lmin3d/vos/Color4;->a:S

    .line 27
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "$r"    # F
    .param p2, "$g"    # F
    .param p3, "$b"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    float-to-int v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lmin3d/vos/Color4;->r:S

    .line 54
    float-to-int v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lmin3d/vos/Color4;->g:S

    .line 55
    float-to-int v0, p3

    int-to-short v0, v0

    iput-short v0, p0, Lmin3d/vos/Color4;->b:S

    .line 56
    const/16 v0, 0xff

    iput-short v0, p0, Lmin3d/vos/Color4;->a:S

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "$b"    # I

    .prologue
    const/16 v1, 0xff

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-short v1, p0, Lmin3d/vos/Color4;->r:S

    .line 43
    iput-short v1, p0, Lmin3d/vos/Color4;->g:S

    .line 44
    int-to-short v0, p1

    iput-short v0, p0, Lmin3d/vos/Color4;->b:S

    .line 45
    iput-short v1, p0, Lmin3d/vos/Color4;->a:S

    .line 46
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lmin3d/vos/Color4;->r:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4;->g:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lmin3d/vos/Color4;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
