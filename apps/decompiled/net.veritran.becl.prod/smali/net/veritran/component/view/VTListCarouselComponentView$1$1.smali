.class Lnet/veritran/component/view/VTListCarouselComponentView$1$1;
.super Ljava/lang/Object;
.source "VTListCarouselComponentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTListCarouselComponentView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/component/view/VTListCarouselComponentView$1;

.field final synthetic val$gallery:Lnet/veritran/component/view/CustomGallery;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTListCarouselComponentView$1;Lnet/veritran/component/view/CustomGallery;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/component/view/VTListCarouselComponentView$1;

    .prologue
    .line 256
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1$1;->this$1:Lnet/veritran/component/view/VTListCarouselComponentView$1;

    iput-object p2, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1$1;->val$gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1$1;->val$gallery:Lnet/veritran/component/view/CustomGallery;

    invoke-virtual {v1}, Lnet/veritran/component/view/CustomGallery;->flingToRight()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "VTListCarouselComponentView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "VTListCarouselComponentView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
