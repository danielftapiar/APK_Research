.class Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;
.super Ljava/lang/Object;
.source "HiddenQuickActionSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->setupShowPopupStart()V
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
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x31

    .line 564
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 565
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 564
    sub-int v2, v3, v4

    .line 566
    .local v2, "width":I
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const/high16 v4, -0x80000000

    or-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 567
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 569
    .local v0, "height":I
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 570
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 571
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorTitle:Landroid/widget/TextView;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$10(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mClickedActionView:Landroid/view/View;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$11(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;

    iget-object v3, v3, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$ActionInfo;->description:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v3

    invoke-static {v3}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getContentLocation(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 575
    .local v1, "hiddenViewY":I
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    if-gt v3, v1, :cond_0

    .line 576
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v4

    .line 578
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v0

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    .line 579
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v7

    invoke-static {v7}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getContentOffsetFromTop(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 576
    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 586
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$7(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v4

    .line 583
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mIndicatorSpacing:Landroid/graphics/Rect;
    invoke-static {v6}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$9(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 584
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$2;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    # getter for: Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->mLinearLayout:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
    invoke-static {v7}, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;->access$8(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;)Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;

    move-result-object v7

    invoke-static {v7}, Lde/viktorreiser/toolbox/util/AndroidUtils;->getContentOffsetFromTop(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    .line 581
    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
