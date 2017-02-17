.class public final Lmin3d/vos/FrustumManaged;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "FrustumManaged.java"


# instance fields
.field private _horizontalCenter:F

.field private _shortSideLength:F

.field private _verticalCenter:F

.field private _zFar:F

.field private _zNear:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 22
    iput v1, p0, Lmin3d/vos/FrustumManaged;->_horizontalCenter:F

    .line 23
    iput v1, p0, Lmin3d/vos/FrustumManaged;->_verticalCenter:F

    .line 24
    iput v2, p0, Lmin3d/vos/FrustumManaged;->_shortSideLength:F

    .line 26
    iput v2, p0, Lmin3d/vos/FrustumManaged;->_zNear:F

    .line 27
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lmin3d/vos/FrustumManaged;->_zFar:F

    .line 28
    return-void
.end method


# virtual methods
.method public final horizontalCenter()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lmin3d/vos/FrustumManaged;->_horizontalCenter:F

    return v0
.end method

.method public final shortSideLength()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmin3d/vos/FrustumManaged;->_shortSideLength:F

    return v0
.end method

.method public final verticalCenter()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lmin3d/vos/FrustumManaged;->_verticalCenter:F

    return v0
.end method

.method public final zFar()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lmin3d/vos/FrustumManaged;->_zFar:F

    return v0
.end method

.method public final zNear()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lmin3d/vos/FrustumManaged;->_zNear:F

    return v0
.end method
