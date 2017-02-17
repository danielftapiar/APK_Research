.class Lnet/veritran/VTAbstractActivity$2;
.super Landroid/os/Handler;
.source "VTAbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTAbstractActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTAbstractActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTAbstractActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lnet/veritran/VTAbstractActivity$2;->this$0:Lnet/veritran/VTAbstractActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 357
    .local v0, "total":I
    iget-object v1, p0, Lnet/veritran/VTAbstractActivity$2;->this$0:Lnet/veritran/VTAbstractActivity;

    iget-object v1, v1, Lnet/veritran/VTAbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 358
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lnet/veritran/VTAbstractActivity$2;->this$0:Lnet/veritran/VTAbstractActivity;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lnet/veritran/VTAbstractActivity;->dismissDialog(I)V

    .line 360
    iget-object v1, p0, Lnet/veritran/VTAbstractActivity$2;->this$0:Lnet/veritran/VTAbstractActivity;

    iget-object v1, v1, Lnet/veritran/VTAbstractActivity;->progressThread:Lnet/veritran/VTAbstractActivity$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/VTAbstractActivity$ProgressThread;->setState(I)V

    .line 362
    :cond_0
    return-void
.end method
