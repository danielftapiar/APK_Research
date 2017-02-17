.class Lnet/veritran/component/view/VTListCarouselComponentView$1;
.super Ljava/util/TimerTask;
.source "VTListCarouselComponentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTListCarouselComponentView;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTListCarouselComponentView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTListCarouselComponentView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTListCarouselComponentView;

    .prologue
    .line 249
    iput-object p1, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1;->this$0:Lnet/veritran/component/view/VTListCarouselComponentView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1;->this$0:Lnet/veritran/component/view/VTListCarouselComponentView;

    # getter for: Lnet/veritran/component/view/VTListCarouselComponentView;->gallery:Lnet/veritran/component/view/CustomGallery;
    invoke-static {v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->access$000(Lnet/veritran/component/view/VTListCarouselComponentView;)Lnet/veritran/component/view/CustomGallery;

    move-result-object v0

    .line 256
    .local v0, "gallery":Lnet/veritran/component/view/CustomGallery;
    iget-object v1, p0, Lnet/veritran/component/view/VTListCarouselComponentView$1;->this$0:Lnet/veritran/component/view/VTListCarouselComponentView;

    # getter for: Lnet/veritran/component/view/VTListCarouselComponentView;->activity:Lnet/veritran/VTCommonActivity;
    invoke-static {v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->access$100(Lnet/veritran/component/view/VTListCarouselComponentView;)Lnet/veritran/VTCommonActivity;

    move-result-object v1

    new-instance v2, Lnet/veritran/component/view/VTListCarouselComponentView$1$1;

    invoke-direct {v2, p0, v0}, Lnet/veritran/component/view/VTListCarouselComponentView$1$1;-><init>(Lnet/veritran/component/view/VTListCarouselComponentView$1;Lnet/veritran/component/view/CustomGallery;)V

    invoke-virtual {v1, v2}, Lnet/veritran/VTCommonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method
