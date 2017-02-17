.class Lcom/prey/activities/CheckPasswordActivity$1;
.super Ljava/lang/Object;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/CheckPasswordActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/CheckPasswordActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/prey/activities/CheckPasswordActivity$1;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$1;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->getPreyPanelUrl()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/prey/activities/CheckPasswordActivity$1;->this$0:Lcom/prey/activities/CheckPasswordActivity;

    invoke-virtual {v2, v0}, Lcom/prey/activities/CheckPasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "browserIntent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method
