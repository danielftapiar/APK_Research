.class Lcom/prey/activities/PreyConfigurationActivity$1;
.super Ljava/lang/Object;
.source "PreyConfigurationActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/PreyConfigurationActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/PreyConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/PreyConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/PreyConfigurationActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/prey/activities/PreyConfigurationActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 94
    iget-object v3, p0, Lcom/prey/activities/PreyConfigurationActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-virtual {v3}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getPreyPanelUrl()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url control:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "internetIntent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/prey/activities/PreyConfigurationActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-virtual {v3, v0}, Lcom/prey/activities/PreyConfigurationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 101
    :catch_0
    move-exception v3

    goto :goto_0
.end method
