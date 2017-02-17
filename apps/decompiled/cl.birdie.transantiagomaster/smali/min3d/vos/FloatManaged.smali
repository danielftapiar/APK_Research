.class public final Lmin3d/vos/FloatManaged;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "FloatManaged.java"


# instance fields
.field private _f:F


# direct methods
.method public constructor <init>(FLmin3d/interfaces/IDirtyParent;)V
    .locals 0
    .param p1, "$value"    # F
    .param p2, "$parent"    # Lmin3d/interfaces/IDirtyParent;

    .prologue
    .line 11
    invoke-direct {p0, p2}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 12
    iput p1, p0, Lmin3d/vos/FloatManaged;->_f:F

    invoke-virtual {p0}, Lmin3d/vos/FloatManaged;->setDirtyFlag()V

    .line 13
    return-void
.end method


# virtual methods
.method public final get()F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lmin3d/vos/FloatManaged;->_f:F

    return v0
.end method
