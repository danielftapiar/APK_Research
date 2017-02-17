.class public final Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferenciasFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->addPreferencesFromResource(I)V

    .line 35
    const-string v3, "sitioWeb"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 36
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$1;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    const-string v3, "instalaSoporteVoz"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 55
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$2;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    const-string v3, "descargaBaseDatos"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 67
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    const-string v3, "restauraFavoritos"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 109
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$4;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    const-string v3, "enviaEmail"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 121
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$5;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$5;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    const-string v3, "version"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 137
    .local v0, "button":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 144
    const-string v2, "N/A"

    .line 147
    .local v2, "version":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TransantiagoMaster version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$6;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$6;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string v3, "MapaEstilo"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 158
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment$7;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->updateSumarioEstilo(Ljava/lang/String;)V

    .line 183
    return-void

    .line 139
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 140
    const/4 v1, 0x0

    .restart local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 146
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_1
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 207
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 209
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 200
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 202
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 212
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string v1, "CapturarMediaButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v1, v1, Lcl/birdie/params/Preferencias;->CapturarMediaButton:Z

    if-eqz v1, :cond_3

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->activarEventReceiver(Landroid/content/Context;)Z

    .line 221
    :cond_2
    const v1, 0x7f0600f7

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->desactivarEventReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method final updateSumarioEstilo(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v4, "MapaEstilo"

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 187
    .local v0, "button":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "estilos":[Ljava/lang/String;
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "MapaEstilo"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "estilo":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 191
    :cond_0
    const/4 v3, 0x0

    .line 194
    .local v3, "nestilo":I
    :goto_1
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .end local v1    # "estilo":Ljava/lang/String;
    .end local v3    # "nestilo":I
    :cond_1
    move-object v1, p1

    .line 188
    goto :goto_0

    .line 193
    .restart local v1    # "estilo":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "nestilo":I
    goto :goto_1
.end method
