.class Lcom/prey/activities/SimpleCameraActivity$2;
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
    .line 214
    iput-object p1, p0, Lcom/prey/activities/SimpleCameraActivity$2;->this$0:Lcom/prey/activities/SimpleCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 216
    return-void
.end method