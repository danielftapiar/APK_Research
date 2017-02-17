.class Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity$VersionTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity$VersionTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;->this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 528
    :try_start_0
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;->this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    iget-object v2, v2, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getPreyGooglePlay()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$VersionTask$2;->this$1:Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    iget-object v2, v2, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/prey/activities/CheckPasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1    # "uri":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error en onclick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
