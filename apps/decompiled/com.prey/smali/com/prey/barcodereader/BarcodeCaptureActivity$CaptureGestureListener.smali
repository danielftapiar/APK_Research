.class Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BarcodeCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/BarcodeCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Lcom/prey/barcodereader/BarcodeCaptureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;
    .param p2, "x1"    # Lcom/prey/barcodereader/BarcodeCaptureActivity$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # invokes: Lcom/prey/barcodereader/BarcodeCaptureActivity;->onTap(FF)Z
    invoke-static {v0, v1, v2}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->access$200(Lcom/prey/barcodereader/BarcodeCaptureActivity;FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
