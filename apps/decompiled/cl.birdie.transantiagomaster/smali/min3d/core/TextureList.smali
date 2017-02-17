.class public final Lmin3d/core/TextureList;
.super Ljava/lang/Object;
.source "TextureList.java"


# instance fields
.field private _t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/TextureVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/core/TextureList;->_t:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public final addById(Ljava/lang/String;)Lmin3d/vos/TextureVo;
    .locals 4
    .param p1, "$textureId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lmin3d/Shared;->textureManager()Lmin3d/core/TextureManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmin3d/core/TextureManager;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create TextureVo using textureId \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". TextureManager does not contain that id."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    new-instance v0, Lmin3d/vos/TextureVo;

    invoke-direct {v0, p1}, Lmin3d/vos/TextureVo;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "t":Lmin3d/vos/TextureVo;
    iget-object v1, p0, Lmin3d/core/TextureList;->_t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmin3d/core/TextureList;->_t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public final get(I)Lmin3d/vos/TextureVo;
    .locals 1
    .param p1, "$index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lmin3d/core/TextureList;->_t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmin3d/vos/TextureVo;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmin3d/core/TextureList;->_t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
