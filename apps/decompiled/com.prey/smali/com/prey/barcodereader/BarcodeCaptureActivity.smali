.class public final Lcom/prey/barcodereader/BarcodeCaptureActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BarcodeCaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;,
        Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;
    }
.end annotation


# static fields
.field public static final AutoFocus:Ljava/lang/String; = "AutoFocus"

.field public static final BarcodeObject:Ljava/lang/String; = "Barcode"

.field private static final RC_HANDLE_CAMERA_PERM:I = 0x2

.field private static final RC_HANDLE_GMS:I = 0x2329

.field public static final UseFlash:Ljava/lang/String; = "UseFlash"


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

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

.field private mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/prey/barcodereader/BarcodeCaptureActivity;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->onTap(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/prey/barcodereader/BarcodeCaptureActivity;)Lcom/prey/barcodereader/ui/camera/CameraSource;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    return-object v0
.end method

.method private createCameraSource(ZZ)V
    .locals 11
    .param p1, "autoFocus"    # Z
    .param p2, "useFlash"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const v10, 0x7f09007f

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 122
    .local v3, "context":Landroid/content/Context;
    new-instance v9, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v9, v3}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    .line 123
    .local v0, "barcodeDetector":Lcom/google/android/gms/vision/barcode/BarcodeDetector;
    new-instance v1, Lcom/prey/barcodereader/BarcodeTrackerFactory;

    iget-object v9, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-direct {v1, v9, p0}, Lcom/prey/barcodereader/BarcodeTrackerFactory;-><init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;Lcom/prey/barcodereader/BarcodeCaptureActivity;)V

    .line 124
    .local v1, "barcodeFactory":Lcom/prey/barcodereader/BarcodeTrackerFactory;
    new-instance v9, Lcom/google/android/gms/vision/MultiProcessor$Builder;

    invoke-direct {v9, v1}, Lcom/google/android/gms/vision/MultiProcessor$Builder;-><init>(Lcom/google/android/gms/vision/MultiProcessor$Factory;)V

    .line 125
    invoke-virtual {v9}, Lcom/google/android/gms/vision/MultiProcessor$Builder;->build()Lcom/google/android/gms/vision/MultiProcessor;

    move-result-object v9

    .line 124
    invoke-virtual {v0, v9}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    const-string v9, "Detector dependencies are not yet available."

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 130
    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v5, "lowstorageFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v7, v5}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_3

    move v4, v6

    .line 133
    .local v4, "hasLowStorage":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 134
    invoke-static {p0, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-virtual {p0, v10}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 139
    .end local v4    # "hasLowStorage":Z
    .end local v5    # "lowstorageFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v6, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9, v0}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    .line 140
    invoke-virtual {v6, v8}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->setFacing(I)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    move-result-object v6

    const/16 v8, 0x640

    const/16 v9, 0x400

    .line 141
    invoke-virtual {v6, v8, v9}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->setRequestedPreviewSize(II)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    move-result-object v6

    const/high16 v8, 0x41700000    # 15.0f

    .line 142
    invoke-virtual {v6, v8}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->setRequestedFps(F)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    move-result-object v2

    .line 144
    .local v2, "builder":Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v6, v8, :cond_1

    .line 145
    if-eqz p1, :cond_4

    const-string v6, "continuous-picture"

    :goto_1
    invoke-virtual {v2, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->setFocusMode(Ljava/lang/String;)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    move-result-object v2

    .line 149
    :cond_1
    if-eqz p2, :cond_2

    const-string v7, "torch"

    .line 150
    :cond_2
    invoke-virtual {v2, v7}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->setFlashMode(Ljava/lang/String;)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;

    move-result-object v6

    .line 151
    invoke-virtual {v6}, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->build()Lcom/prey/barcodereader/ui/camera/CameraSource;

    move-result-object v6

    iput-object v6, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 152
    return-void

    .end local v2    # "builder":Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .restart local v5    # "lowstorageFilter":Landroid/content/IntentFilter;
    :cond_3
    move v4, v8

    .line 131
    goto :goto_0

    .end local v5    # "lowstorageFilter":Landroid/content/IntentFilter;
    .restart local v2    # "builder":Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    :cond_4
    move-object v6, v7

    .line 145
    goto :goto_1
.end method

.method private onTap(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v4, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-virtual {v4}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->getFirstGraphic()Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    move-result-object v2

    check-cast v2, Lcom/prey/barcodereader/BarcodeGraphic;

    .line 232
    .local v2, "graphic":Lcom/prey/barcodereader/BarcodeGraphic;
    const/4 v0, 0x0

    .line 233
    .local v0, "barcode":Lcom/google/android/gms/vision/barcode/Barcode;
    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {v2}, Lcom/prey/barcodereader/BarcodeGraphic;->getBarcode()Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v1, "data":Landroid/content/Intent;
    const-string v4, "Barcode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v3, v1}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->finish()V

    .line 251
    .end local v1    # "data":Landroid/content/Intent;
    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 245
    :cond_1
    const-string v4, "barcode data is null"

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    const-string v4, "no barcode detected"

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraPermission()V
    .locals 6

    .prologue
    .line 83
    const-string v3, "Camera permission is not granted. Requesting permission"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v1, v3

    .line 87
    .local v1, "permissions":[Ljava/lang/String;
    const-string v3, "android.permission.CAMERA"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const/4 v3, 0x2

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 107
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v2, p0

    .line 95
    .local v2, "thisActivity":Landroid/app/Activity;
    new-instance v0, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/prey/barcodereader/BarcodeCaptureActivity$1;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Landroid/app/Activity;[Ljava/lang/String;)V

    .line 103
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    const v4, 0x7f090092

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    const v4, 0x7f09008a

    .line 105
    invoke-virtual {v3, v4, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method private startCameraSource()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    .line 212
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 211
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 213
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    const/16 v4, 0x2329

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v1

    .line 216
    .local v1, "dlg":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 219
    .end local v1    # "dlg":Landroid/app/Dialog;
    :cond_0
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    if-eqz v3, :cond_1

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    iget-object v4, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    iget-object v5, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-virtual {v3, v4, v5}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->start(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to start camera source."

    invoke-static {v3, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v3}, Lcom/prey/barcodereader/ui/camera/CameraSource;->release()V

    .line 225
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 62
    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->setContentView(I)V

    .line 64
    const v3, 0x7f10009f

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    iput-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    .line 65
    const v3, 0x7f1000a0

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iput-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mGraphicOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .line 67
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AutoFocus"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, "autoFocus":Z
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "UseFlash"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "useFlash":Z
    const-string v3, "android.permission.CAMERA"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "rc":I
    if-nez v1, :cond_0

    .line 72
    invoke-direct {p0, v0, v2}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->createCameraSource(ZZ)V

    .line 77
    :goto_0
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;

    invoke-direct {v4, p0, v6}, Lcom/prey/barcodereader/BarcodeCaptureActivity$CaptureGestureListener;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Lcom/prey/barcodereader/BarcodeCaptureActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 78
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;

    invoke-direct {v4, p0, v6}, Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Lcom/prey/barcodereader/BarcodeCaptureActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 80
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->requestCameraPermission()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->release()V

    .line 174
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->mPreview:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->stop()V

    .line 166
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 180
    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected permission result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 208
    :goto_0
    return-void

    .line 186
    :cond_0
    array-length v4, p3

    if-eqz v4, :cond_1

    aget v4, p3, v6

    if-nez v4, :cond_1

    .line 187
    const-string v4, "Camera permission granted - initialize the camera source"

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "AutoFocus"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 189
    .local v0, "autoFocus":Z
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "UseFlash"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 190
    .local v3, "useFlash":Z
    invoke-direct {p0, v0, v3}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->createCameraSource(ZZ)V

    goto :goto_0

    .line 194
    .end local v0    # "autoFocus":Z
    .end local v3    # "useFlash":Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission not granted: results len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Result code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, p3

    if-lez v4, :cond_2

    aget v4, p3, v6

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 197
    new-instance v2, Lcom/prey/barcodereader/BarcodeCaptureActivity$2;

    invoke-direct {v2, p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity$2;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V

    .line 203
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "Multitracker sample"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090089

    .line 205
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09008a

    .line 206
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 207
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 195
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const-string v4, "(empty)"

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->startCameraSource()V

    .line 158
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    .local v0, "b":Z
    iget-object v2, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 115
    .local v1, "c":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateBarcode(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 3
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "Barcode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->finish()V

    .line 268
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method
