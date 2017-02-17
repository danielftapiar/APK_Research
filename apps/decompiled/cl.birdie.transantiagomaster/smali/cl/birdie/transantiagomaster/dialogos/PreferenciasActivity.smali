.class public Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "PreferenciasActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    .line 32
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->addPreferencesFromResource(I)V

    .line 34
    const-string v0, "sitioWeb"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "instalaSoporteVoz"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$2;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "descargaBaseDatos"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "restauraFavoritos"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$4;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "enviaEmail"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$5;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$5;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "N/A"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TransantiagoMaster version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$6;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "MapaEstilo"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity$7;-><init>(Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->updateSumarioEstilo(Ljava/lang/String;)V

    .line 41
    :goto_2
    return-void

    .line 34
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 38
    const v1, 0x1020002

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method

.method final updateSumarioEstilo(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v4, "MapaEstilo"

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 193
    .local v0, "button":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "estilos":[Ljava/lang/String;
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PreferenciasActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "MapaEstilo"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "estilo":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 197
    :cond_0
    const/4 v3, 0x0

    .line 200
    .local v3, "nestilo":I
    :goto_1
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .end local v1    # "estilo":Ljava/lang/String;
    .end local v3    # "nestilo":I
    :cond_1
    move-object v1, p1

    .line 194
    goto :goto_0

    .line 199
    .restart local v1    # "estilo":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "nestilo":I
    goto :goto_1
.end method
