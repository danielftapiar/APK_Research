.class public Lcom/vrem/wifianalyzer/settings/SettingActivity$a;
.super Landroid/preference/PreferenceFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vrem/wifianalyzer/settings/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/SettingActivity$a;->addPreferencesFromResource(I)V

    return-void
.end method
