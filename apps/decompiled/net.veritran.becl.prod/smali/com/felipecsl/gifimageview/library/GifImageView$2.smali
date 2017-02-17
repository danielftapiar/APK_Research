.class Lcom/felipecsl/gifimageview/library/GifImageView$2;
.super Ljava/lang/Object;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felipecsl/gifimageview/library/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felipecsl/gifimageview/library/GifImageView;


# direct methods
.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView$2;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$2;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    # setter for: Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$002(Lcom/felipecsl/gifimageview/library/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 36
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$2;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    # setter for: Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;
    invoke-static {v0, v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$102(Lcom/felipecsl/gifimageview/library/GifImageView;Lcom/felipecsl/gifimageview/library/GifDecoder;)Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 37
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$2;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    # setter for: Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$202(Lcom/felipecsl/gifimageview/library/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$2;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    const/4 v1, 0x0

    # setter for: Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z
    invoke-static {v0, v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$302(Lcom/felipecsl/gifimageview/library/GifImageView;Z)Z

    .line 39
    return-void
.end method
