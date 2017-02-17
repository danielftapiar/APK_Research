.class public final Lmin3d/core/ManagedLightList;
.super Ljava/lang/Object;
.source "ManagedLightList.java"


# instance fields
.field private _availGlIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _glIndexEnabled:[Z

.field private _glIndexEnabledDirty:[Z

.field private _lightToGlIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmin3d/vos/Light;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _lights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Light;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lmin3d/core/ManagedLightList;->reset()V

    .line 35
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 39
    const-string v1, "Min3D"

    const-string v2, "ManagedLightList.reset()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmin3d/core/ManagedLightList;->_availGlIndices:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmin3d/core/ManagedLightList;->_lightToGlIndex:Ljava/util/HashMap;

    .line 48
    new-array v1, v3, [Z

    iput-object v1, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabled:[Z

    .line 49
    new-array v1, v3, [Z

    iput-object v1, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabledDirty:[Z

    .line 50
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    .line 56
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lmin3d/core/ManagedLightList;->_availGlIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 52
    iget-object v1, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabledDirty:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final add(Lmin3d/vos/Light;)Z
    .locals 6
    .param p1, "$light"    # Lmin3d/vos/Light;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 76
    :goto_0
    return v1

    .line 64
    :cond_0
    iget-object v3, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 65
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Exceeded maximum number of Lights"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    iget-object v3, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    .local v1, "result":Z
    iget-object v3, p0, Lmin3d/core/ManagedLightList;->_availGlIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    .local v0, "glIndex":I
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_lightToGlIndex:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabled:[Z

    aput-boolean v5, v2, v0

    .line 74
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabledDirty:[Z

    aput-boolean v5, v2, v0

    goto :goto_0
.end method

.method final getGlIndexByLight(Lmin3d/vos/Light;)I
    .locals 1
    .param p1, "$light"    # Lmin3d/vos/Light;

    .prologue
    .line 117
    iget-object v0, p0, Lmin3d/core/ManagedLightList;->_lightToGlIndex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final getLightByGlIndex(I)Lmin3d/vos/Light;
    .locals 3
    .param p1, "$glIndex"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 131
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 127
    :cond_1
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmin3d/vos/Light;

    .line 128
    .local v1, "light":Lmin3d/vos/Light;
    iget-object v2, p0, Lmin3d/core/ManagedLightList;->_lightToGlIndex:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final glIndexEnabled()[Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabled:[Z

    return-object v0
.end method

.method final glIndexEnabledDirty()[Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmin3d/core/ManagedLightList;->_glIndexEnabledDirty:[Z

    return-object v0
.end method

.method public final toArray()[Lmin3d/vos/Light;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    iget-object v1, p0, Lmin3d/core/ManagedLightList;->_lights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmin3d/vos/Light;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmin3d/vos/Light;

    return-object v0
.end method
