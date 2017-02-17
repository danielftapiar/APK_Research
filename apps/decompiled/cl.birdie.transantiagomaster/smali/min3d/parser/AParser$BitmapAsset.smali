.class public final Lmin3d/parser/AParser$BitmapAsset;
.super Ljava/lang/Object;
.source "AParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/AParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BitmapAsset"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public key:Ljava/lang/String;

.field public resourceID:Ljava/lang/String;

.field final synthetic this$0:Lmin3d/parser/AParser;

.field public uOffset:F

.field public uScale:F

.field public useForAtlasDimensions:Z

.field public vOffset:F

.field public vScale:F


# direct methods
.method public constructor <init>(Lmin3d/parser/AParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lmin3d/parser/AParser$BitmapAsset;->this$0:Lmin3d/parser/AParser;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lmin3d/parser/AParser$BitmapAsset;->key:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmin3d/parser/AParser$BitmapAsset;->useForAtlasDimensions:Z

    .line 167
    return-void
.end method
