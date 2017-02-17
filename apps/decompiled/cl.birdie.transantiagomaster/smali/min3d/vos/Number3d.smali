.class public final Lmin3d/vos/Number3d;
.super Ljava/lang/Object;
.source "Number3d.java"


# static fields
.field private static _temp:Lmin3d/vos/Number3d;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lmin3d/vos/Number3d;

    invoke-direct {v0}, Lmin3d/vos/Number3d;-><init>()V

    sput-object v0, Lmin3d/vos/Number3d;->_temp:Lmin3d/vos/Number3d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lmin3d/vos/Number3d;->x:F

    .line 20
    iput v0, p0, Lmin3d/vos/Number3d;->y:F

    .line 21
    iput v0, p0, Lmin3d/vos/Number3d;->z:F

    .line 22
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "$x"    # F
    .param p2, "$y"    # F
    .param p3, "$z"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lmin3d/vos/Number3d;->x:F

    .line 27
    iput p2, p0, Lmin3d/vos/Number3d;->y:F

    .line 28
    iput p3, p0, Lmin3d/vos/Number3d;->z:F

    .line 29
    return-void
.end method

.method public static subtract(Lmin3d/vos/Number3d;Lmin3d/vos/Number3d;)Lmin3d/vos/Number3d;
    .locals 5
    .param p0, "a"    # Lmin3d/vos/Number3d;
    .param p1, "b"    # Lmin3d/vos/Number3d;

    .prologue
    .line 140
    new-instance v0, Lmin3d/vos/Number3d;

    iget v1, p0, Lmin3d/vos/Number3d;->x:F

    iget v2, p1, Lmin3d/vos/Number3d;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lmin3d/vos/Number3d;->y:F

    iget v3, p1, Lmin3d/vos/Number3d;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lmin3d/vos/Number3d;->z:F

    iget v4, p1, Lmin3d/vos/Number3d;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lmin3d/vos/Number3d;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lmin3d/vos/Number3d;

    iget v1, p0, Lmin3d/vos/Number3d;->x:F

    iget v2, p0, Lmin3d/vos/Number3d;->y:F

    iget v3, p0, Lmin3d/vos/Number3d;->z:F

    invoke-direct {v0, v1, v2, v3}, Lmin3d/vos/Number3d;-><init>(FFF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmin3d/vos/Number3d;->x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmin3d/vos/Number3d;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmin3d/vos/Number3d;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
