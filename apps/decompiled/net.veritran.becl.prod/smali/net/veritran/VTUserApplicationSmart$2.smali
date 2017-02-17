.class Lnet/veritran/VTUserApplicationSmart$2;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTUserApplicationSmart;->updateApplication(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;

.field final synthetic val$showMessage:Z


# direct methods
.method constructor <init>(Lnet/veritran/VTUserApplicationSmart;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTUserApplicationSmart;

    .prologue
    .line 2909
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$2;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iput-boolean p2, p0, Lnet/veritran/VTUserApplicationSmart$2;->val$showMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2914
    iget-boolean v1, p0, Lnet/veritran/VTUserApplicationSmart$2;->val$showMessage:Z

    if-eqz v1, :cond_0

    .line 2915
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2918
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    # getter for: Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v1

    const-string v2, ""

    const-string v3, "appUpdateApplication"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2916
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2920
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2922
    const-string v1, "Ok"

    new-instance v2, Lnet/veritran/VTUserApplicationSmart$2$1;

    invoke-direct {v2, p0}, Lnet/veritran/VTUserApplicationSmart$2$1;-><init>(Lnet/veritran/VTUserApplicationSmart$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2935
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2941
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 2937
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "_APPUPDATE"

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 2938
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    goto :goto_0
.end method
