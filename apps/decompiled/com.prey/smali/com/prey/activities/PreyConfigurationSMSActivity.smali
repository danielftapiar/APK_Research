.class public Lcom/prey/activities/PreyConfigurationSMSActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreyConfigurationSMSActivity.java"


# static fields
.field private static final INITIAL_PERMS:[Ljava/lang/String;

.field private static final REQUEST_PERMISSIONS:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/prey/activities/PreyConfigurationSMSActivity;->INITIAL_PERMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/prey/activities/PreyConfigurationSMSActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/PreyConfigurationSMSActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/prey/activities/PreyConfigurationSMSActivity;->requestPermission()V

    return-void
.end method

.method private requestPermission()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 86
    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessSendSms(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessReceiveSms(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/prey/PreyPermission;->canAccessReadSms(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lcom/prey/activities/PreyConfigurationSMSActivity;->INITIAL_PERMS:[Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationSMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/PreyConfigurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/PreyConfigurationSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/prey/activities/PreyConfigurationSMSActivity;->addPreferencesFromResource(I)V

    .line 38
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/prey/PreyStatus;->setPreyConfigurationActivityResume(Z)V

    .line 40
    :try_start_0
    const-string v2, "PREFS_SMS_COMMAND"

    invoke-virtual {p0, v2}, Lcom/prey/activities/PreyConfigurationSMSActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 41
    .local v0, "pSMS":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/prey/activities/PreyConfigurationSMSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    .line 42
    .local v1, "preyConfig":Lcom/prey/PreyConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preyConfig.isSmsCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isSmsCommand()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/prey/activities/PreyConfigurationSMSActivity$1;

    invoke-direct {v2, p0}, Lcom/prey/activities/PreyConfigurationSMSActivity$1;-><init>(Lcom/prey/activities/PreyConfigurationSMSActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isSmsCommand()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "pSMS":Landroid/preference/CheckBoxPreference;
    .end local v1    # "preyConfig":Lcom/prey/PreyConfig;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/prey/activities/PreyConfigurationSMSActivity;->setRequestedOrientation(I)V

    .line 76
    return-void

    .line 65
    .restart local v0    # "pSMS":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "preyConfig":Lcom/prey/PreyConfig;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "pSMS":Landroid/preference/CheckBoxPreference;
    .end local v1    # "preyConfig":Lcom/prey/PreyConfig;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 82
    return-void
.end method
