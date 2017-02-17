.class Lcom/prey/activities/PreyConfigurationActivity$2;
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
    .line 109
    iput-object p1, p0, Lcom/prey/activities/PreyConfigurationActivity$2;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/activities/PreyConfigurationActivity$2;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-virtual {v1}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/PreyConfigurationSMSActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/activities/PreyConfigurationActivity$2;->this$0:Lcom/prey/activities/PreyConfigurationActivity;

    invoke-virtual {v1, v0}, Lcom/prey/activities/PreyConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    const/4 v1, 0x0

    return v1
.end method
