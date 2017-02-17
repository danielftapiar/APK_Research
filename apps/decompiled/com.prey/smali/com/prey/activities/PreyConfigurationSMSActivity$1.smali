.class Lcom/prey/activities/PreyConfigurationSMSActivity$1;
.super Ljava/lang/Object;
.source "PreyConfigurationSMSActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/PreyConfigurationSMSActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/PreyConfigurationSMSActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/PreyConfigurationSMSActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/PreyConfigurationSMSActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/prey/activities/PreyConfigurationSMSActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/prey/activities/PreyConfigurationSMSActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationSMSActivity;

    const-string v3, "PREFS_SMS_COMMAND"

    invoke-virtual {v2, v3}, Lcom/prey/activities/PreyConfigurationSMSActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 49
    .local v0, "pSMS":Landroid/preference/CheckBoxPreference;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preyConfig.newValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 50
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 51
    .local v1, "value":Z
    iget-object v2, p0, Lcom/prey/activities/PreyConfigurationSMSActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationSMSActivity;

    invoke-virtual {v2}, Lcom/prey/activities/PreyConfigurationSMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/prey/PreyConfig;->setSmsCommand(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 54
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/prey/activities/PreyConfigurationSMSActivity$1;->this$0:Lcom/prey/activities/PreyConfigurationSMSActivity;

    # invokes: Lcom/prey/activities/PreyConfigurationSMSActivity;->requestPermission()V
    invoke-static {v2}, Lcom/prey/activities/PreyConfigurationSMSActivity;->access$000(Lcom/prey/activities/PreyConfigurationSMSActivity;)V

    .line 57
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
