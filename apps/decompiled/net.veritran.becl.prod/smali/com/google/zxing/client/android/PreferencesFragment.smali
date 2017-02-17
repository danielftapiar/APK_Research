.class public final Lcom/google/zxing/client/android/PreferencesFragment;
.super Lnet/veritran/vtuserapplication/utils/PreferenceFragment;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private decode1D:Landroid/preference/CheckBoxPreference;

.field private decodeDataMatrix:Landroid/preference/CheckBoxPreference;

.field private decodeQR:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;-><init>()V

    return-void
.end method

.method private disableLastCheckedPref()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v1, "checked":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/preference/CheckBoxPreference;>;"
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    if-ge v6, v7, :cond_4

    move v2, v4

    .line 69
    .local v2, "disable":Z
    :goto_0
    new-array v0, v8, [Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decode1D:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v5

    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeQR:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v4

    iget-object v6, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    aput-object v6, v0, v7

    .line 70
    .local v0, "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    array-length v8, v0

    move v7, v5

    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v0, v7

    .line 71
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_3
    move v6, v4

    :goto_2
    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 70
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .end local v0    # "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    .end local v2    # "disable":Z
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_4
    move v2, v5

    .line 68
    goto :goto_0

    .restart local v0    # "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    .restart local v2    # "disable":Z
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_5
    move v6, v5

    .line 71
    goto :goto_2

    .line 73
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lnet/veritran/vtuserapplication/utils/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v1, Lnet/veritran/vtuserapplication/api/qr/android/R$xml;->preferences:I

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/PreferencesFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 45
    .local v0, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 46
    const-string v1, "preferences_decode_1D"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decode1D:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v1, "preferences_decode_QR"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeQR:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v1, "preferences_decode_Data_Matrix"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesFragment;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    .line 49
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->disableLastCheckedPref()V

    .line 50
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesFragment;->disableLastCheckedPref()V

    .line 55
    return-void
.end method
