.class public Lcl/santander/smartphone/CustomVerticalTextView;
.super Landroid/widget/TextView;
.source "CustomVerticalTextView.java"


# instance fields
.field final topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getGravity()I

    move-result v0

    .line 18
    .local v0, "gravity":I
    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 19
    and-int/lit8 v1, v0, 0x7

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomVerticalTextView;->setGravity(I)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcl/santander/smartphone/CustomVerticalTextView;->topDown:Z

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcl/santander/smartphone/CustomVerticalTextView;->topDown:Z

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 34
    .local v0, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 35
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget-boolean v1, p0, Lcl/santander/smartphone/CustomVerticalTextView;->topDown:Z

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getExtendedPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 27
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 28
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcl/santander/smartphone/CustomVerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcl/santander/smartphone/CustomVerticalTextView;->setMeasuredDimension(II)V

    .line 29
    return-void
.end method
