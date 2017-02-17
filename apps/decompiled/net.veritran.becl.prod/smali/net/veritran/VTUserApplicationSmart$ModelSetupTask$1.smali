.class Lnet/veritran/VTUserApplicationSmart$ModelSetupTask$1;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;


# direct methods
.method constructor <init>(Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;

    .prologue
    .line 2414
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask$1;->this$1:Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2419
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2421
    # getter for: Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$600()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-boolean v0, v0, Lnet/veritran/VTUserApplicationSmart;->applicationNeedToUpdate:Z

    if-eqz v0, :cond_0

    .line 2423
    # getter for: Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$600()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->updateApplicationSendToStore()V

    .line 2449
    :goto_0
    return-void

    .line 2427
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    goto :goto_0
.end method
