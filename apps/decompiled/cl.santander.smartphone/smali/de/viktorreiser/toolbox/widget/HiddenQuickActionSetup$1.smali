.class Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;
.super Ljava/lang/Object;
.source "HiddenQuickActionSetup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupQuickActionTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 510
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 512
    .local v0, "a":I
    if-nez v0, :cond_5

    .line 513
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->isHiddenViewCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 555
    :goto_0
    return v2

    :cond_0
    move-object v2, p1

    .line 517
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 519
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 520
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 523
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$0(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-static {v2, p1}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$1(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;Landroid/view/View;)V

    .line 526
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$2(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)I

    move-result v2

    if-nez v2, :cond_4

    .line 527
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorStart:Ljava/lang/Runnable;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$3(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 532
    :cond_2
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    move v2, v4

    .line 555
    goto :goto_0

    .line 528
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$2(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    iget-object v2, v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->description:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mPopupDelayHandler:Landroid/os/Handler;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$4(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorStart:Ljava/lang/Runnable;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$3(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorDelay:I
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$2(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 534
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eq v0, v4, :cond_6

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 535
    :cond_6
    if-ne v0, v4, :cond_8

    .line 536
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mCloseSwipeableOnQuickAction:Z
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$5(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 537
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->closeHiddenView()V

    .line 540
    :cond_7
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mQuickActionListener:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$6(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 541
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mQuickActionListener:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$6(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;

    move-result-object v5

    .line 542
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->getCurrentListView()Landroid/widget/ListView;

    move-result-object v6

    .line 543
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->getCurrentSwipeableHiddenView()Lde/viktorreiser/toolbox/widget/SwipeableHiddenView;

    move-result-object v7

    .line 544
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->getCurrentPosition()I

    move-result v8

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    iget v2, v2, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->id:I

    .line 541
    invoke-interface {v5, v6, v7, v8, v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$OnQuickActionListener;->onQuickAction(Landroid/widget/AdapterView;Landroid/view/View;II)V

    .line 549
    :cond_8
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mPopupDelayHandler:Landroid/os/Handler;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$4(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorStart:Ljava/lang/Runnable;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$3(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$1;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 551
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2
.end method
