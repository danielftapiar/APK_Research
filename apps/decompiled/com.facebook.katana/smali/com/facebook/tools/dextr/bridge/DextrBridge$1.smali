.class final Lcom/facebook/tools/dextr/bridge/DextrBridge$1;
.super Ljava/lang/Object;
.source "DextrBridge.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->d()Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->a:Lcom/facebook/prefs/shared/PrefKey;

    invoke-virtual {v1}, Lcom/facebook/prefs/shared/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->d()Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;->a(Z)V

    .line 50
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0

    .line 43
    :cond_1
    sget-object v1, Lcom/facebook/tools/dextr/bridge/constants/DextrConstants;->b:Lcom/facebook/prefs/shared/PrefKey;

    invoke-virtual {v1}, Lcom/facebook/prefs/shared/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/tools/dextr/bridge/DextrBridge;->d()Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;->b(Z)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
