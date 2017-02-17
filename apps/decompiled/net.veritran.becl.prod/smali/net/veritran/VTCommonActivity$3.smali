.class Lnet/veritran/VTCommonActivity$3;
.super Ljava/lang/Object;
.source "VTCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTCommonActivity;->initConfigContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 599
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$3;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 603
    :try_start_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 604
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$3;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Configuracion borrada exitosamente!!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 605
    const-string v1, "VTCommonActivity"

    const-string v2, "Configuration Deleted"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lnet/veritran/VTCommonActivity$3;->this$0:Lnet/veritran/VTCommonActivity;

    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No se pudo borrar la configuracion!!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 609
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception deleting Configuration (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
