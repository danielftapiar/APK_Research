.class Lcom/prey/activities/SimpleCameraActivity$3;
.super Ljava/lang/Object;
.source "SimpleCameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/SimpleCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/SimpleCameraActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/SimpleCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/SimpleCameraActivity;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/prey/activities/SimpleCameraActivity$3;->this$0:Lcom/prey/activities/SimpleCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/prey/activities/SimpleCameraActivity$3;->this$0:Lcom/prey/activities/SimpleCameraActivity;

    invoke-virtual {v0, p1}, Lcom/prey/activities/SimpleCameraActivity;->resizeImage([B)[B

    move-result-object v0

    sput-object v0, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 223
    return-void
.end method
