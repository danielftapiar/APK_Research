.class Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;
.super Landroid/widget/FrameLayout;
.source "TabManagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/TabManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabScrollView"
.end annotation


# instance fields
.field private mmClickedTab:Landroid/view/View;

.field private mmClickedTabPosition:I

.field private mmScrollOffset:I

.field private mmScrolling:Z

.field private mmStartX:I

.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;


# direct methods
.method public constructor <init>(Lde/viktorreiser/toolbox/widget/TabManagerView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1469
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    .line 1470
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1471
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;)I
    .locals 1

    .prologue
    .line 1462
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    return v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;I)V
    .locals 0

    .prologue
    .line 1462
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1574
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v3

    if-le v0, v3, :cond_5

    .line 1575
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    if-gez v0, :cond_2

    .line 1576
    iput v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    .line 1582
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    iget v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 1583
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 1596
    :cond_1
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1597
    return-void

    .line 1577
    :cond_2
    iget v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_0

    .line 1578
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1582
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1585
    goto :goto_2

    .line 1589
    :cond_5
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1591
    iput v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    .line 1592
    invoke-virtual {p0, v5}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1540
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1541
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1545
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v1

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1546
    const/4 v0, 0x0

    .line 1548
    .local v0, "separatorWidth":I
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$2(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v1

    if-le v1, v6, :cond_0

    .line 1549
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1553
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v2

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabMinimumWidth:I
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$3(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v3

    mul-int/2addr v2, v3

    .line 1554
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    invoke-virtual {v3}, Lde/viktorreiser/toolbox/widget/TabManagerView;->getTabCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    or-int/2addr v2, v4

    .line 1553
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1557
    .end local v0    # "separatorWidth":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1558
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 1557
    invoke-virtual {p0, v1, v2}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->setMeasuredDimension(II)V

    .line 1564
    :goto_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildCount()I

    move-result v1

    if-le v1, v7, :cond_2

    .line 1565
    invoke-virtual {p0, v6}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v2

    or-int/2addr v2, v4

    .line 1566
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    or-int/2addr v3, v4

    .line 1565
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1567
    invoke-virtual {p0, v7}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabScrollEdgeWidth:I
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$4(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v2

    or-int/2addr v2, v4

    .line 1568
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    or-int/2addr v3, v4

    .line 1567
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1570
    :cond_2
    return-void

    .line 1560
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    .line 1477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    .line 1478
    iput-object v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    .line 1479
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1482
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 1494
    .end local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    if-nez v5, :cond_5

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v7

    if-le v5, v7, :cond_5

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrolling:Z

    .line 1535
    .end local v1    # "count":I
    :cond_0
    :goto_3
    return v6

    .line 1483
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1485
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    iget v10, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    add-int/2addr v9, v10

    if-gt v5, v9, :cond_3

    .line 1486
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    iget v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    iget v10, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    add-int/2addr v9, v10

    if-lt v5, v9, :cond_3

    .line 1487
    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    .line 1488
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1489
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$2(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v5

    if-nez v5, :cond_2

    .end local v2    # "i":I
    :goto_4
    iput v2, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTabPosition:I

    goto :goto_1

    .restart local v2    # "i":I
    :cond_2
    div-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 1482
    :cond_3
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabSeparator:I
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$2(Lde/viktorreiser/toolbox/widget/TabManagerView;)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_5
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_5

    .end local v0    # "c":Landroid/view/View;
    .end local v2    # "i":I
    :cond_5
    move v5, v8

    .line 1494
    goto :goto_2

    .line 1495
    .end local v1    # "count":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 1496
    iget-boolean v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrolling:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    # getter for: Lde/viktorreiser/toolbox/widget/TabManagerView;->mTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lde/viktorreiser/toolbox/widget/TabManagerView;->access$1(Lde/viktorreiser/toolbox/widget/TabManagerView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->getWidth()I

    move-result v7

    if-le v5, v7, :cond_7

    .line 1497
    iget v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1498
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    if-le v5, v7, :cond_7

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    .line 1501
    iput-boolean v6, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrolling:Z

    .line 1503
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1504
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1505
    iput-object v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    goto/16 :goto_3

    .line 1507
    :cond_7
    iget-boolean v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrolling:Z

    if-eqz v5, :cond_8

    .line 1509
    iget v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    iget v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    add-int/2addr v5, v7

    iput v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmStartX:I

    .line 1511
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->invalidate()V

    goto/16 :goto_3

    .line 1512
    :cond_8
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1514
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1518
    .local v4, "y":I
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    .line 1519
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    add-int/2addr v9, v3

    if-gt v7, v9, :cond_9

    .line 1520
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrollOffset:I

    add-int/2addr v9, v3

    if-lt v7, v9, :cond_9

    .line 1521
    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-gt v7, v4, :cond_9

    iget-object v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-lt v7, v4, :cond_9

    move v8, v6

    .line 1518
    :cond_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_3

    .line 1523
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 1524
    iget-boolean v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmScrolling:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1525
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->this$0:Lde/viktorreiser/toolbox/widget/TabManagerView;

    iget v7, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTabPosition:I

    invoke-virtual {v5, v7}, Lde/viktorreiser/toolbox/widget/TabManagerView;->setCurrentTab(I)Z

    .line 1526
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1527
    iput-object v9, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    goto/16 :goto_3

    .line 1529
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_0

    .line 1530
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1531
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$TabScrollView;->mmClickedTab:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_3
.end method
