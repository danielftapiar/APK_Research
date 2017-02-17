.class Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureStartCallback"
.end annotation


# instance fields
.field private mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;
    .param p1, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

    return-object p1
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

    invoke-interface {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;->onShutter()V

    .line 414
    :cond_0
    return-void
.end method
