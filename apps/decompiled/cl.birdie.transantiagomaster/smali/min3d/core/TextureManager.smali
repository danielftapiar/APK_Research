.class public final Lmin3d/core/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static _atlasId:I

.field private static _counter:I


# instance fields
.field private _idToHasMipMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _idToTextureName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0xf4241

    sput v0, Lmin3d/core/TextureManager;->_counter:I

    .line 27
    const/4 v0, 0x0

    sput v0, Lmin3d/core/TextureManager;->_atlasId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lmin3d/core/TextureManager;->reset()V

    .line 33
    return-void
.end method

.method public static getNewAtlasId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const-string v0, "atlas"

    sget v1, Lmin3d/core/TextureManager;->_atlasId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lmin3d/core/TextureManager;->_atlasId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addTextureId(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "$b"    # Landroid/graphics/Bitmap;
    .param p2, "$id"    # Ljava/lang/String;
    .param p3, "$generateMipMap"    # Z

    .prologue
    .line 62
    iget-object v2, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Texture id \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" already exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    invoke-static {}, Lmin3d/Shared;->renderer()Lmin3d/core/Renderer;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lmin3d/core/Renderer;->uploadTextureAndReturnId(Landroid/graphics/Bitmap;Z)I

    move-result v0

    .line 66
    .local v0, "glId":I
    move-object v1, p2

    .line 67
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lmin3d/core/TextureManager;->_idToHasMipMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget v2, Lmin3d/core/TextureManager;->_counter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lmin3d/core/TextureManager;->_counter:I

    .line 75
    return-object v1
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "$textureId"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final getGlTextureId(Ljava/lang/String;)I
    .locals 1
    .param p1, "$textureId"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final hasMipMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "$textureId"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lmin3d/core/TextureManager;->_idToHasMipMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 4

    .prologue
    .line 39
    iget-object v3, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 43
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 50
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmin3d/core/TextureManager;->_idToTextureName:Ljava/util/HashMap;

    .line 51
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmin3d/core/TextureManager;->_idToHasMipMap:Ljava/util/HashMap;

    .line 52
    return-void

    .line 44
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmin3d/core/TextureManager;->getGlTextureId(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "glId":I
    invoke-static {}, Lmin3d/Shared;->renderer()Lmin3d/core/Renderer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmin3d/core/Renderer;->deleteTexture(I)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
