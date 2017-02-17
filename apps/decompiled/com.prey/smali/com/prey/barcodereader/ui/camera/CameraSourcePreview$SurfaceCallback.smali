.class Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;
.super Ljava/lang/Object;
.source "CameraSourcePreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 110
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    const/4 v3, 0x1

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z
    invoke-static {v2, v3}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->access$102(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;Z)Z

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    # invokes: Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->startIfReady()V
    invoke-static {v2}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->access$200(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "Do not have permission to start the camera"

    invoke-static {v2, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Could not start camera source."

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;

    const/4 v1, 0x0

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z
    invoke-static {v0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->access$102(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;Z)Z

    .line 106
    return-void
.end method
