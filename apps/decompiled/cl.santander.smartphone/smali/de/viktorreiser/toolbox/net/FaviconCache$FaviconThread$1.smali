.class Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;
.super Ljava/lang/Object;
.source "FaviconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->processRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

.field private final synthetic val$hash:I

.field private final synthetic val$listener:[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

.field private final synthetic val$loadedFavicon:Landroid/graphics/Bitmap;

.field private final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;Ljava/net/URL;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->this$1:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

    iput-object p2, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$listener:[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    iput-object p3, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$url:Ljava/net/URL;

    iput p4, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$hash:I

    iput-object p5, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$loadedFavicon:Landroid/graphics/Bitmap;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 716
    iget-object v2, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$listener:[Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 719
    return-void

    .line 716
    :cond_0
    aget-object v0, v2, v1

    .line 717
    .local v0, "l":Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;
    iget-object v4, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$url:Ljava/net/URL;

    iget v5, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$hash:I

    iget-object v6, p0, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread$1;->val$loadedFavicon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v4, v5, v6}, Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;->onFaviconLoad(Ljava/net/URL;ILandroid/graphics/Bitmap;)V

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
