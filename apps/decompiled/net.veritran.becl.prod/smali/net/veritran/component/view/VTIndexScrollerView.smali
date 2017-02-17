.class public Lnet/veritran/component/view/VTIndexScrollerView;
.super Landroid/widget/FrameLayout;
.source "VTIndexScrollerView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTIndexScrollerView"


# instance fields
.field indexScroller:Lnet/veritran/component/view/VTIndexScroller;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/veritran/component/view/VTIndexScroller;Lnet/veritran/component/view/VTScrollTableWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indexScroller"    # Lnet/veritran/component/view/VTIndexScroller;
    .param p3, "scrollTableWrapper"    # Lnet/veritran/component/view/VTScrollTableWrapper;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTIndexScrollerView;->setWillNotDraw(Z)V

    .line 22
    iput-object p2, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    .line 23
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTIndexScroller;->show()V

    .line 24
    iput-object p3, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    .line 25
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTIndexScrollerView;->addView(Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTIndexScroller;->draw(Landroid/graphics/Canvas;)V

    .line 51
    :cond_0
    return-void
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getFixedHeight()I

    move-result v0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getFixedWidth()I

    move-result v0

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getHeightPercentage()F

    move-result v0

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredBottomMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredBottomPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredLeftMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredLeftPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredRightMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredRightPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredTopMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredTopPadding()I

    move-result v0

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getWidthPercentage()F

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->measureAbsoluteMargins()V

    .line 124
    return-void
.end method

.method public measureAbsolutePaddings()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTScrollTableWrapper;->measureAbsolutePaddings()V

    .line 230
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/view/VTIndexScroller;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    iget-object v1, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v2}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lnet/veritran/component/view/VTScrollTableWrapper;->layout(IIII)V

    .line 236
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 241
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lnet/veritran/component/view/VTIndexScrollerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 243
    .local v5, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 244
    .local v2, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 245
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 246
    .local v6, "sh":I
    invoke-static {v5}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "modeWidth":Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "modeHeight":Ljava/lang/String;
    const-string v8, "VTIndexScrollerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTIndexScrollerView;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onMeasure -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {p0, v8, p1, p2}, Lnet/veritran/component/view/VTIndexScrollerView;->measureChild(Landroid/view/View;II)V

    .line 253
    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredHeight()I

    move-result v0

    .line 254
    .local v0, "childrenHeight":I
    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v8}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredWidth()I

    move-result v1

    .line 257
    .local v1, "childrenWidth":I
    invoke-virtual {p0, v1, v0}, Lnet/veritran/component/view/VTIndexScrollerView;->setMeasuredDimension(II)V

    .line 258
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 85
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTIndexScroller;->onSizeChanged(IIII)V

    .line 87
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->indexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTIndexScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/veritran/component/view/VTIndexScrollerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/veritran/component/view/VTIndexScrollerView$1;

    invoke-direct {v2, p0}, Lnet/veritran/component/view/VTIndexScrollerView$1;-><init>(Lnet/veritran/component/view/VTIndexScrollerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 76
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 135
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setComponentBackgroundColor(Ljava/lang/Integer;)V

    .line 136
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setComponentInnerAlignment(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setComponentVerticalAlignment(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setFixedHeight(I)V

    .line 195
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 30
    const-string v0, "VTIndexScrollerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTScrollTableWrapper;->setFixedMargins(FFFF)V

    .line 32
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setFixedWidth(I)V

    .line 184
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setHeightPercentage(F)V

    .line 160
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 116
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTScrollTableWrapper;->setPercentageMargins(FFFF)V

    .line 118
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 223
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTScrollTableWrapper;->setPercentagePaddings(FFFF)V

    .line 224
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 153
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScrollerView;->scrollTableWrapper:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setWidthPercentage(F)V

    .line 154
    return-void
.end method
