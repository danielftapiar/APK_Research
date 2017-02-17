.class final Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;
.super Ljava/lang/Object;
.source "AParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/AParser$TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapHeightComparer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmin3d/parser/AParser$BitmapAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmin3d/parser/AParser$TextureAtlas;


# direct methods
.method private constructor <init>(Lmin3d/parser/AParser$TextureAtlas;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;->this$1:Lmin3d/parser/AParser$TextureAtlas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmin3d/parser/AParser$TextureAtlas;B)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;-><init>(Lmin3d/parser/AParser$TextureAtlas;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lmin3d/parser/AParser$BitmapAsset;

    check-cast p2, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v0, p1, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p2, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
