.class public Lde/viktorreiser/toolbox/net/FaviconCache$FaviconHelper;
.super Ljava/lang/Object;
.source "FaviconCache.java"

# interfaces
.implements Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/FaviconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaviconHelper"
.end annotation


# instance fields
.field private mShownImageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/viktorreiser/toolbox/net/FaviconCache;)V
    .locals 1
    .param p1, "cache"    # Lde/viktorreiser/toolbox/net/FaviconCache;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconHelper;->mShownImageViews:Ljava/util/List;

    .line 235
    invoke-virtual {p1, p0}, Lde/viktorreiser/toolbox/net/FaviconCache;->addOnFaviconLoadListener(Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;)V

    .line 236
    return-void
.end method


# virtual methods
.method public final addShownImageView(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconHelper;->mShownImageViews:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    return-void
.end method

.method public onFaviconLoad(Ljava/net/URL;ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "hash"    # I
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    iget-object v2, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconHelper;->mShownImageViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    return-void

    .line 260
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 261
    .local v1, "r":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 263
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 265
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
