.class Lnet/veritran/component/view/VTIndexScrollerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VTIndexScrollerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTIndexScrollerView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTIndexScrollerView;


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTIndexScrollerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTIndexScrollerView;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/veritran/component/view/VTIndexScrollerView$1;->this$0:Lnet/veritran/component/view/VTIndexScrollerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView$1;->this$0:Lnet/veritran/component/view/VTIndexScrollerView;

    iget-object v0, v0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView$1;->this$0:Lnet/veritran/component/view/VTIndexScrollerView;

    iget-object v0, v0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTIndexScroller;->show()V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
