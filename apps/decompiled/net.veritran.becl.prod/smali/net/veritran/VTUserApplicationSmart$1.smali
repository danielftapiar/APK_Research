.class Lnet/veritran/VTUserApplicationSmart$1;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTUserApplicationSmart;->downloadXMLConfigurationFromModel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;

.field final synthetic val$showPleaseWait:Z


# direct methods
.method constructor <init>(Lnet/veritran/VTUserApplicationSmart;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTUserApplicationSmart;

    .prologue
    .line 925
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$1;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iput-boolean p2, p0, Lnet/veritran/VTUserApplicationSmart$1;->val$showPleaseWait:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 927
    new-instance v0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$1;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart$1;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    iget-boolean v3, p0, Lnet/veritran/VTUserApplicationSmart$1;->val$showPleaseWait:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 928
    return-void
.end method
