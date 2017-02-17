.class Lcom/prey/barcodereader/BarcodeGraphicTracker;
.super Lcom/google/android/gms/vision/Tracker;
.source "BarcodeGraphicTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Tracker",
        "<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

.field private mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

.field private mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;
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
.method constructor <init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;Lcom/prey/barcodereader/BarcodeGraphic;Lcom/prey/barcodereader/BarcodeCaptureActivity;)V
    .locals 0
    .param p2, "graphic"    # Lcom/prey/barcodereader/BarcodeGraphic;
    .param p3, "activity"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/barcodereader/ui/camera/GraphicOverlay",
            "<",
            "Lcom/prey/barcodereader/BarcodeGraphic;",
            ">;",
            "Lcom/prey/barcodereader/BarcodeGraphic;",
            "Lcom/prey/barcodereader/BarcodeCaptureActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "overlay":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<Lcom/prey/barcodereader/BarcodeGraphic;>;"
    invoke-direct {p0}, Lcom/google/android/gms/vision/Tracker;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .line 18
    iput-object p2, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    .line 19
    iput-object p3, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    .line 20
    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    invoke-virtual {v0, v1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->remove(Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;)V

    .line 42
    return-void
.end method

.method public onMissing(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "detectionResults":Lcom/google/android/gms/vision/Detector$Detections;, "Lcom/google/android/gms/vision/Detector$Detections<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    invoke-virtual {v0, v1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->remove(Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;)V

    .line 37
    return-void
.end method

.method public onNewItem(ILcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    invoke-virtual {v0, p1}, Lcom/prey/barcodereader/BarcodeGraphic;->setId(I)V

    .line 25
    return-void
.end method

.method public bridge synthetic onNewItem(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p2, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1, p2}, Lcom/prey/barcodereader/BarcodeGraphicTracker;->onNewItem(ILcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method

.method public onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 2
    .param p2, "item"    # Lcom/google/android/gms/vision/barcode/Barcode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections",
            "<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "detectionResults":Lcom/google/android/gms/vision/Detector$Detections;, "Lcom/google/android/gms/vision/Detector$Detections<Lcom/google/android/gms/vision/barcode/Barcode;>;"
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    invoke-virtual {v0, v1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->add(Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;)V

    .line 30
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->mGraphic:Lcom/prey/barcodereader/BarcodeGraphic;

    invoke-virtual {v0, p2}, Lcom/prey/barcodereader/BarcodeGraphic;->updateItem(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 31
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphicTracker;->activity:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-virtual {v0, p2}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->updateBarcode(Lcom/google/android/gms/vision/barcode/Barcode;)V

    .line 32
    return-void
.end method

.method public bridge synthetic onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p2, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1, p2}, Lcom/prey/barcodereader/BarcodeGraphicTracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method
