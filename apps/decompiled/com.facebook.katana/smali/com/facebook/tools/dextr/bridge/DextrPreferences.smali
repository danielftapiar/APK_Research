.class public Lcom/facebook/tools/dextr/bridge/DextrPreferences;
.super Landroid/preference/PreferenceCategory;
.source "DextrPreferences.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 33
    const-string v0, "DexTr"

    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/bridge/DextrPreferences;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v0, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;

    invoke-virtual {p0}, Lcom/facebook/tools/dextr/bridge/DextrPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->a(Lcom/facebook/prefs/shared/PrefKey;)V

    .line 37
    const-string v1, "Enable manual tracing"

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 39
    const-string v1, "Tap to enable DexTr controls (see notification)"

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 40
    const-string v1, "Tap to disable DexTr controls"

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 44
    new-instance v1, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;

    invoke-virtual {p0}, Lcom/facebook/tools/dextr/bridge/DextrPreferences;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object v2, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    invoke-virtual {v1, v2}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->a(Lcom/facebook/prefs/shared/PrefKey;)V

    .line 46
    const-string v2, "Filter manual traces"

    invoke-virtual {v1, v2}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const-string v2, "Enable to filter out events that didn\'t start with a user action"

    invoke-virtual {v1, v2}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/bridge/DextrPreferences;->addPreference(Landroid/preference/Preference;)Z

    .line 51
    invoke-virtual {p0, v1}, Lcom/facebook/tools/dextr/bridge/DextrPreferences;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    invoke-virtual {v0}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->c()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/prefs/OrcaCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    return-void
.end method
