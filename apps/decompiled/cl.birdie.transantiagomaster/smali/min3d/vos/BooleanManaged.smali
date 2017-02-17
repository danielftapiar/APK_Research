.class public final Lmin3d/vos/BooleanManaged;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "BooleanManaged.java"


# instance fields
.field private _b:Z


# direct methods
.method public constructor <init>(Lmin3d/interfaces/IDirtyParent;)V
    .locals 1
    .param p1, "$parent"    # Lmin3d/interfaces/IDirtyParent;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmin3d/vos/BooleanManaged;->_b:Z

    invoke-virtual {p0}, Lmin3d/vos/BooleanManaged;->setDirtyFlag()V

    .line 13
    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lmin3d/vos/BooleanManaged;->_b:Z

    return v0
.end method
