.class Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAutoFocusMoveCallback"
.end annotation


# instance fields
.field private mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
    .param p1, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

    return-object p1
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

    invoke-interface {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;->onAutoFocusMoving(Z)V

    .line 453
    :cond_0
    return-void
.end method
