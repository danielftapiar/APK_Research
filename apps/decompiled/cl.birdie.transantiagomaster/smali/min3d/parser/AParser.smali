.class public abstract Lmin3d/parser/AParser;
.super Ljava/lang/Object;
.source "AParser.java"

# interfaces
.implements Lmin3d/parser/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmin3d/parser/AParser$BitmapAsset;,
        Lmin3d/parser/AParser$Material;,
        Lmin3d/parser/AParser$TextureAtlas;
    }
.end annotation


# instance fields
.field protected co:Lmin3d/parser/ParseObjectData;

.field protected currentMaterialKey:Ljava/lang/String;

.field protected firstObject:Z

.field protected generateMipMap:Z

.field protected materialMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmin3d/parser/AParser$Material;",
            ">;"
        }
    .end annotation
.end field

.field protected normals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;"
        }
    .end annotation
.end field

.field protected packageID:Ljava/lang/String;

.field protected parseObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/parser/ParseObjectData;",
            ">;"
        }
    .end annotation
.end field

.field protected resourceID:Ljava/lang/String;

.field protected resources:Landroid/content/res/Resources;

.field protected texCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Uv;",
            ">;"
        }
    .end annotation
.end field

.field protected textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

.field protected vertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser;->vertices:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser;->texCoords:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser;->normals:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser;->parseObjects:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lmin3d/parser/AParser$TextureAtlas;

    invoke-direct {v0, p0}, Lmin3d/parser/AParser$TextureAtlas;-><init>(Lmin3d/parser/AParser;)V

    iput-object v0, p0, Lmin3d/parser/AParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmin3d/parser/AParser;->firstObject:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser;->materialMap:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # Ljava/lang/String;
    .param p3, "generateMipMap"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    invoke-direct {p0}, Lmin3d/parser/AParser;-><init>()V

    .line 60
    iput-object p1, p0, Lmin3d/parser/AParser;->resources:Landroid/content/res/Resources;

    .line 61
    iput-object p2, p0, Lmin3d/parser/AParser;->resourceID:Ljava/lang/String;

    .line 62
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 63
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmin3d/parser/AParser;->packageID:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmin3d/parser/AParser;->generateMipMap:Z

    .line 65
    return-void
.end method

.method protected static readFloat(Ljava/io/InputStream;)F
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0}, Lmin3d/parser/AParser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method protected static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 100
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 99
    or-int/2addr v0, v1

    return v0
.end method

.method protected static readShort(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 93
    .local v1, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v0, v2

    .local v0, "inByte":B
    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmin3d/parser/AParser;->parseObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lmin3d/parser/AParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v0}, Lmin3d/parser/AParser$TextureAtlas;->cleanup()V

    .line 71
    iget-object v0, p0, Lmin3d/parser/AParser;->vertices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lmin3d/parser/AParser;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lmin3d/parser/AParser;->normals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    return-void
.end method

.method public getParsedObject()Lmin3d/core/Object3dContainer;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
