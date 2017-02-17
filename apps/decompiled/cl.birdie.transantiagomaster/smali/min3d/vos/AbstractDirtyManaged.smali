.class public abstract Lmin3d/vos/AbstractDirtyManaged;
.super Ljava/lang/Object;
.source "AbstractDirtyManaged.java"


# instance fields
.field protected _dirty:Z

.field protected _parent:Lmin3d/interfaces/IDirtyParent;


# direct methods
.method public constructor <init>(Lmin3d/interfaces/IDirtyParent;)V
    .locals 0
    .param p1, "$parent"    # Lmin3d/interfaces/IDirtyParent;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmin3d/vos/AbstractDirtyManaged;->_parent:Lmin3d/interfaces/IDirtyParent;

    .line 15
    return-void
.end method


# virtual methods
.method public final clearDirtyFlag()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmin3d/vos/AbstractDirtyManaged;->_dirty:Z

    .line 31
    return-void
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lmin3d/vos/AbstractDirtyManaged;->_dirty:Z

    return v0
.end method

.method public final setDirtyFlag()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmin3d/vos/AbstractDirtyManaged;->_dirty:Z

    .line 25
    iget-object v0, p0, Lmin3d/vos/AbstractDirtyManaged;->_parent:Lmin3d/interfaces/IDirtyParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmin3d/vos/AbstractDirtyManaged;->_parent:Lmin3d/interfaces/IDirtyParent;

    invoke-interface {v0}, Lmin3d/interfaces/IDirtyParent;->onDirty()V

    .line 26
    :cond_0
    return-void
.end method
