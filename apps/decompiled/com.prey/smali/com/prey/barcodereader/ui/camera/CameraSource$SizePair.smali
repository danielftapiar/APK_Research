.class Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
.super Ljava/lang/Object;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizePair"
.end annotation


# instance fields
.field private mPicture:Lcom/google/android/gms/common/images/Size;

.field private mPreview:Lcom/google/android/gms/common/images/Size;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 3
    .param p1, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p2, "pictureSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Lcom/google/android/gms/common/images/Size;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/images/Size;-><init>(II)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->mPreview:Lcom/google/android/gms/common/images/Size;

    .line 560
    if-eqz p2, :cond_0

    .line 561
    new-instance v0, Lcom/google/android/gms/common/images/Size;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/images/Size;-><init>(II)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->mPicture:Lcom/google/android/gms/common/images/Size;

    .line 563
    :cond_0
    return-void
.end method


# virtual methods
.method public pictureSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->mPicture:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public previewSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->mPreview:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method
