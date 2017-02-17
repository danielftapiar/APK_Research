.class public Lcom/mwr/dz/activities/EndpointSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "EndpointSettingsActivity.java"


# static fields
.field public static final ENDPOINT_SETTINGS_PREFERENCE:Ljava/lang/String; = "endpoint_settings"

.field public static final SECURITY_SETTINGS_PREFERENCE:Ljava/lang/String; = "security_settings"

.field public static final SSL_ENABLED_PREFERENCE:Ljava/lang/String; = "endpoint_ssl_enabled"

.field public static final SSL_TRUSTSTORE_PASSWORD_PREFERENCE:Ljava/lang/String; = "endpoint_ssl_truststore_password"

.field public static final SSL_TRUSTSTORE_PATH_PREFERENCE:Ljava/lang/String; = "endpoint_ssl_truststore_path"


# instance fields
.field private button_forget:Landroid/widget/Button;

.field private endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

.field private endpoint_host:Landroid/preference/EditTextPreference;

.field private endpoint_name:Landroid/preference/EditTextPreference;

.field private endpoint_password:Landroid/preference/EditTextPreference;

.field private endpoint_port:Landroid/preference/EditTextPreference;

.field private endpoint_ssl:Landroid/preference/CheckBoxPreference;

.field private endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

.field private endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 49
    new-instance v2, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-direct {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>()V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 60
    :goto_0
    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->addPreferencesFromResource(I)V

    .line 62
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_name:Landroid/preference/EditTextPreference;

    .line 63
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_name:Landroid/preference/EditTextPreference;

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 64
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_name:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 66
    const-string v2, "endpoint_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_name:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 68
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_host:Landroid/preference/EditTextPreference;

    .line 69
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_host:Landroid/preference/EditTextPreference;

    const v3, 0x7f06002b

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 70
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_host:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 72
    const-string v2, "endpoint_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_host:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    .line 75
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 76
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 79
    const-string v2, "endpoint_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    .line 82
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 83
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 84
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 86
    const-string v2, "security_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    .line 89
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    const-string v3, "endpoint_ssl_enabled"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f060046

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 91
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f060047

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 92
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 95
    const-string v2, "security_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 97
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    .line 99
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    const-string v3, "endpoint_ssl_truststore_path"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 101
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 102
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 104
    const-string v2, "security_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    const-string v3, "endpoint_ssl_enabled"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 107
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    .line 108
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    const-string v3, "endpoint_ssl_truststore_password"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 110
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 111
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 113
    const-string v2, "security_settings"

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    const-string v3, "endpoint_ssl_enabled"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDependency(Ljava/lang/String;)V

    .line 116
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->button_forget:Landroid/widget/Button;

    .line 118
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isNew()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->button_forget:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    :goto_1
    return-void

    .line 51
    :cond_0
    const-string v2, "endpoint:id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "endpoint_id":I
    if-lez v1, :cond_1

    .line 53
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v2

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 54
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 57
    :cond_1
    new-instance v2, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-direct {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>()V

    iput-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    goto/16 :goto_0

    .line 122
    .end local v1    # "endpoint_id":I
    :cond_2
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->button_forget:Landroid/widget/Button;

    new-instance v3, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;-><init>(Lcom/mwr/dz/activities/EndpointSettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->finish()V

    goto :goto_0

    .line 166
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "endpoint:id"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v3, "endpoint:name"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_name:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "endpoint:host"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_host:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "endpoint:password"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_password:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "endpoint:port"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_port:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v3, "endpoint:ssl"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string v3, "endpoint:ts:path"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_path:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "endpoint:ts:password"

    iget-object v4, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint_ssl_truststore_password:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->finish()V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x7f09002f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
