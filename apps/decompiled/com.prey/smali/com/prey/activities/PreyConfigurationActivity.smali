.class public Lcom/prey/activities/PreyConfigurationActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreyConfigurationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/prey/activities/DeviceReadyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/PreyConfigurationActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->finish()V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 40
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v0}, Lcom/prey/PreyConfig;->setAccountVerified()V

    .line 41
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/prey/activities/PreyConfigurationActivity;->addPreferencesFromResource(I)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prey/activities/PreyConfigurationActivity;->setRequestedOrientation(I)V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 49
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/PreyStatus;->isPreyConfigurationActivityResume()Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/prey/activities/LoginActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    const-string v7, "EXIT"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/prey/activities/PreyConfigurationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->finish()V

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyEmail;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 62
    const-string v7, "PREFS_CAT_PREFS"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 63
    .local v1, "mCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "PREFS_SCHEDULED"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 64
    .local v3, "p2":Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 69
    .end local v1    # "mCategory":Landroid/preference/PreferenceCategory;
    .end local v3    # "p2":Landroid/preference/Preference;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    .line 70
    .local v6, "preyConfig":Lcom/prey/PreyConfig;
    const-string v7, "PREFS_ADMIN_DEVICE"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 72
    .local v2, "p":Landroid/preference/Preference;
    :try_start_2
    invoke-virtual {v6}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    const v7, 0x7f0900bd

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 76
    const v7, 0x7f0900bc

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :goto_2
    const-string v7, "PREFS_ABOUT"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPreyVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - Prey Inc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    const-string v7, "PREFS_GOTO_WEB_CONTROL_PANEL"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 90
    .local v4, "pGo":Landroid/preference/Preference;
    new-instance v7, Lcom/prey/activities/PreyConfigurationActivity$1;

    invoke-direct {v7, p0}, Lcom/prey/activities/PreyConfigurationActivity$1;-><init>(Lcom/prey/activities/PreyConfigurationActivity;)V

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    const-string v7, "PREFS_SMS"

    invoke-virtual {p0, v7}, Lcom/prey/activities/PreyConfigurationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 109
    .local v5, "pSMS":Landroid/preference/Preference;
    new-instance v7, Lcom/prey/activities/PreyConfigurationActivity$2;

    invoke-direct {v7, p0}, Lcom/prey/activities/PreyConfigurationActivity$2;-><init>(Lcom/prey/activities/PreyConfigurationActivity;)V

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    :try_start_3
    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPinNumber()I

    move-result v7

    if-gez v7, :cond_4

    .line 124
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :goto_3
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/prey/PreyStatus;->setPreyConfigurationActivityResume(Z)V

    .line 136
    return-void

    .line 78
    .end local v4    # "pGo":Landroid/preference/Preference;
    .end local v5    # "pSMS":Landroid/preference/Preference;
    :cond_2
    const v7, 0x7f0900b9

    :try_start_4
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 79
    const v7, 0x7f0900b8

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 83
    :catch_0
    move-exception v7

    goto :goto_2

    .line 82
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 129
    .restart local v4    # "pGo":Landroid/preference/Preference;
    .restart local v5    # "pSMS":Landroid/preference/Preference;
    :cond_4
    const/4 v7, 0x1

    :try_start_5
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 131
    :catch_1
    move-exception v7

    goto :goto_3

    .line 55
    .end local v2    # "p":Landroid/preference/Preference;
    .end local v4    # "pGo":Landroid/preference/Preference;
    .end local v5    # "pSMS":Landroid/preference/Preference;
    .end local v6    # "preyConfig":Lcom/prey/PreyConfig;
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v7

    goto/16 :goto_1
.end method
