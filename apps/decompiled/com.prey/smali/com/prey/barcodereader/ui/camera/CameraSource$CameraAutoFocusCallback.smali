.class Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAutoFocusCallback"
.end annotation


# instance fields
.field private mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
    .param p1, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

    return-object p1
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

    invoke-interface {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;->onAutoFocus(Z)V

    .line 441
    :cond_0
    return-void
.end method
