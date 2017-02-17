.class Lcom/prey/barcodereader/BarcodeTrackerFactory;
.super Ljava/lang/Object;
.source "BarcodeTrackerFactory.java"

# interfaces
.implements Lcom/google/android/gms/vision/MultiProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/MultiProcessor$Factory",
        "<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

.field private mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prey/barcodereader/ui/camera/GraphicOverlay",
            "<",
            "Lcom/prey/barcodereader/BarcodeGraphic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;Lcom/prey/barcodereader/BarcodeCaptureActivity;)V
    .locals 0
    .param p2, "activity"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/barcodereader/ui/camera/GraphicOverlay",
            "<",
            "Lcom/prey/barcodereader/BarcodeGraphic;",
            ">;",
            "Lcom/prey/barcodereader/BarcodeCaptureActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "barcodeGraphicOverlay":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<Lcom/prey/barcodereader/BarcodeGraphic;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .line 16
    iput-object p2, p0, Lcom/prey/barcodereader/BarcodeTrackerFactory;->activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    .line 17
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/android/gms/vision/Tracker;
    .locals 4
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ")",
            "Lcom/google/android/gms/vision/Tracker",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/prey/barcodereader/BarcodeGraphic;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-direct {v0, v1}, Lcom/prey/barcodereader/BarcodeGraphic;-><init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V

    .line 22
    .local v0, "graphic":Lcom/prey/barcodereader/BarcodeGraphic;
    new-instance v1, Lcom/prey/barcodereader/BarcodeGraphicTracker;

    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeTrackerFactory;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeTrackerFactory;->activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {v1, v2, v0, v3}, Lcom/prey/barcodereader/BarcodeGraphicTracker;-><init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;Lcom/prey/barcodereader/BarcodeGraphic;Lcom/prey/barcodereader/BarcodeCaptureActivity;)V

    return-object v1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Lcom/google/android/gms/vision/Tracker;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/BarcodeTrackerFactory;->create(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v0

    return-object v0
.end method
