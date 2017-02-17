.class final Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BalloonOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitLinearLayout"
.end annotation


# instance fields
.field final SCALE:F

.field final synthetic this$0:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;


# direct methods
.method public constructor <init>(Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    .line 126
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;->SCALE:F

    .line 127
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 135
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 136
    .local v3, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 137
    .local v2, "measuredWidth":I
    const/high16 v4, 0x438c0000    # 280.0f

    iget v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView$LimitLinearLayout;->SCALE:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 138
    .local v0, "adjustedMaxWidth":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 139
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 140
    .local v1, "adjustedWidthMeasureSpec":I
    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 141
    return-void
.end method
