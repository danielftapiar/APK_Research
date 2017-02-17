.class public Lorg/osmdroid/tileprovider/MapTile;
.super Ljava/lang/Object;
.source "MapTile.java"


# static fields
.field public static final MAPTILE_FAIL_ID:I = 0x1

.field public static final MAPTILE_SUCCESS_ID:I


# instance fields
.field private final x:I

.field private final y:I

.field private final zoomLevel:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "zoomLevel"    # I
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    .line 25
    iput p2, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    .line 26
    iput p3, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    instance-of v3, p1, Lorg/osmdroid/tileprovider/MapTile;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 54
    check-cast v0, Lorg/osmdroid/tileprovider/MapTile;

    .line 55
    .local v0, "rhs":Lorg/osmdroid/tileprovider/MapTile;
    iget v3, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    iget v4, v0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    iget v4, v0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    iget v4, v0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x11

    .line 61
    .local v0, "code":I
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    .line 62
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    .line 63
    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    add-int/lit8 v1, v1, 0x25

    mul-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->zoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTile;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
