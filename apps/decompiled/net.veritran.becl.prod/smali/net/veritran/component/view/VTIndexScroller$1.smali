.class Lnet/veritran/component/view/VTIndexScroller$1;
.super Landroid/os/Handler;
.source "VTIndexScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/view/VTIndexScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTIndexScroller;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTIndexScroller;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTIndexScroller;

    .prologue
    .line 370
    iput-object p1, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0xa

    .line 374
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 376
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    # getter for: Lnet/veritran/component/view/VTIndexScroller;->mState:I
    invoke-static {v0}, Lnet/veritran/component/view/VTIndexScroller;->access$000(Lnet/veritran/component/view/VTIndexScroller;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    :pswitch_0
    return-void

    .line 382
    :pswitch_1
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    const/4 v1, 0x2

    # invokes: Lnet/veritran/component/view/VTIndexScroller;->setState(I)V
    invoke-static {v0, v1}, Lnet/veritran/component/view/VTIndexScroller;->access$100(Lnet/veritran/component/view/VTIndexScroller;I)V

    .line 385
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    # getter for: Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;
    invoke-static {v0}, Lnet/veritran/component/view/VTIndexScroller;->access$200(Lnet/veritran/component/view/VTIndexScroller;)Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;->invalidateView()V

    .line 386
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    # invokes: Lnet/veritran/component/view/VTIndexScroller;->fade(J)V
    invoke-static {v0, v2, v3}, Lnet/veritran/component/view/VTIndexScroller;->access$300(Lnet/veritran/component/view/VTIndexScroller;J)V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    const/4 v1, 0x0

    # invokes: Lnet/veritran/component/view/VTIndexScroller;->setState(I)V
    invoke-static {v0, v1}, Lnet/veritran/component/view/VTIndexScroller;->access$100(Lnet/veritran/component/view/VTIndexScroller;I)V

    .line 400
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    # getter for: Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;
    invoke-static {v0}, Lnet/veritran/component/view/VTIndexScroller;->access$200(Lnet/veritran/component/view/VTIndexScroller;)Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;->invalidateView()V

    .line 401
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller$1;->this$0:Lnet/veritran/component/view/VTIndexScroller;

    # invokes: Lnet/veritran/component/view/VTIndexScroller;->fade(J)V
    invoke-static {v0, v2, v3}, Lnet/veritran/component/view/VTIndexScroller;->access$300(Lnet/veritran/component/view/VTIndexScroller;J)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
