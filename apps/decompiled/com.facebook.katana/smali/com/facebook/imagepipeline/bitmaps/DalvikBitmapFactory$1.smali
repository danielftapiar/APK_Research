.class Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory$1;
.super Ljava/lang/Object;
.source "DalvikBitmapFactory.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory$1;->a:Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory$1;->a:Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;

    invoke-static {v0}, Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;->a(Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory;)Lcom/facebook/imagepipeline/memory/BitmapCounter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BitmapCounter;->b(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/bitmaps/DalvikBitmapFactory$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
