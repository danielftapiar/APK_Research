.class public Lcom/mwr/dz/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field public static final ABOUT_DROZER_PREFERENCE:Ljava/lang/String; = "about_drozer"

.field public static final EDIT_ENDPOINT:I = 0x2

.field public static final ENDPOINT_SETTINGS_PREFERENCE:Ljava/lang/String; = "endpoint_settings"

.field public static final NEW_ENDPOINT:I = 0x1


# instance fields
.field private about_preference:Landroid/preference/Preference;

.field private endpoint_preferences:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/mwr/dz/activities/SettingsActivity;->about_preference:Landroid/preference/Preference;

    .line 26
    iput-object v0, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/activities/SettingsActivity;)Landroid/preference/PreferenceCategory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private createNewEndpointPreference()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "preference":Landroid/preference/Preference;
    const-string v1, "endpoint_new"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 120
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 121
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 123
    new-instance v1, Lcom/mwr/dz/activities/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/SettingsActivity$2;-><init>(Lcom/mwr/dz/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    return-object v0
.end method

.method private createPreferenceFrom(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Landroid/preference/Preference;
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 138
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "preference":Landroid/preference/Preference;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endpoint_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v1, Lcom/mwr/dz/activities/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/SettingsActivity$3;-><init>(Lcom/mwr/dz/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 158
    new-instance v1, Lcom/mwr/dz/activities/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/SettingsActivity$4;-><init>(Lcom/mwr/dz/activities/SettingsActivity;)V

    invoke-virtual {p1, v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->addObserver(Ljava/util/Observer;)V

    .line 171
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "request_code"    # I
    .param p2, "result_code"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 30
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 34
    .local v10, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 88
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v10    # "bundle":Landroid/os/Bundle;
    :pswitch_0
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 37
    const-string v1, "endpoint:name"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "endpoint:host"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v3, "endpoint:port"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 40
    const-string v4, "endpoint:ssl"

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 41
    const-string v5, "endpoint:ts:path"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    const-string v6, "endpoint:ts:password"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    const-string v7, "endpoint:password"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mwr/dz/models/EndpointManager;->add(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/mwr/dz/activities/SettingsActivity;->createPreferenceFrom(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 48
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 56
    .end local v0    # "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :pswitch_1
    const-string v1, "endpoint:deleted"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 58
    iget-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endpoint_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "endpoint:id"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 60
    .local v11, "preference":Landroid/preference/Preference;
    invoke-virtual {v11, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 63
    .end local v11    # "preference":Landroid/preference/Preference;
    :cond_2
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 64
    const-string v1, "endpoint:id"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    const-string v2, "endpoint:name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v3, "endpoint:host"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    const-string v4, "endpoint:port"

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    const-string v5, "endpoint:ssl"

    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 69
    const-string v6, "endpoint:ts:path"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    const-string v7, "endpoint:ts:password"

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    const-string v8, "endpoint:password"

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .restart local v0    # "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mwr/dz/models/EndpointManager;->update(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endpoint_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 76
    .restart local v11    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 82
    .end local v11    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 97
    const-string v1, "about_drozer"

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->about_preference:Landroid/preference/Preference;

    .line 98
    iget-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->about_preference:Landroid/preference/Preference;

    new-instance v2, Lcom/mwr/dz/activities/SettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/mwr/dz/activities/SettingsActivity$1;-><init>(Lcom/mwr/dz/activities/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/mwr/dz/activities/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "endpoint_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    .line 111
    iget-object v1, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/mwr/dz/activities/SettingsActivity;->createNewEndpointPreference()Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 114
    .local v0, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    iget-object v2, p0, Lcom/mwr/dz/activities/SettingsActivity;->endpoint_preferences:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Lcom/mwr/dz/activities/SettingsActivity;->createPreferenceFrom(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
