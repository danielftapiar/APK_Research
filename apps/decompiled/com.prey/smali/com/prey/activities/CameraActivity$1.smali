.class Lcom/prey/activities/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/CameraActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CameraActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/prey/activities/CameraActivity$1;->this$0:Lcom/prey/activities/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 48
    const-string v0, "CameraActivity onDismiss"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/prey/actions/PreyStatus;->getInstance()Lcom/prey/actions/PreyStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prey/actions/PreyStatus;->setTakenPicture(Z)V

    .line 51
    iget-object v0, p0, Lcom/prey/activities/CameraActivity$1;->this$0:Lcom/prey/activities/CameraActivity;

    invoke-virtual {v0}, Lcom/prey/activities/CameraActivity;->finish()V

    .line 52
    return-void
.end method
