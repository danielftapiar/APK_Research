.class final Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;
.super Ljava/lang/Object;
.source "BalloonItemizedOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;


# direct methods
.method constructor <init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v6, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_main_layout:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 223
    if-eqz v0, :cond_0

    .line 224
    new-array v2, v4, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    .line 225
    .local v2, "states":[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 229
    .end local v2    # "states":[I
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->startX:F

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->startY:F

    move v3, v4

    .line 246
    :goto_0
    return v3

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 233
    if-eqz v0, :cond_2

    .line 234
    new-array v1, v5, [I

    .line 235
    .local v1, "newStates":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 239
    .end local v1    # "newStates":[I
    :cond_2
    iget v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_3

    .line 240
    iget v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    # getter for: Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedIndex:I
    invoke-static {v5}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->access$1(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)I

    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    # getter for: Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;
    invoke-static {v5}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->access$2(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)Lcom/google/android/maps/OverlayItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->onBalloonTap$830ad1c(Lcom/google/android/maps/OverlayItem;)Z

    :cond_3
    move v3, v4

    .line 244
    goto :goto_0

    :cond_4
    move v3, v5

    .line 246
    goto :goto_0
.end method
