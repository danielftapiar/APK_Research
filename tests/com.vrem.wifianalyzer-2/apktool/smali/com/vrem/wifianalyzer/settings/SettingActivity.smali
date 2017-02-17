.class public Lcom/vrem/wifianalyzer/settings/SettingActivity;
.super Landroid/preference/PreferenceActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vrem/wifianalyzer/settings/SettingActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    sget-object v0, Lcom/vrem/wifianalyzer/b;->a:Lcom/vrem/wifianalyzer/b;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/b;->a()Lcom/vrem/wifianalyzer/settings/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/d;->i()Lcom/vrem/wifianalyzer/settings/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/settings/e;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/settings/SettingActivity;->setTheme(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/vrem/wifianalyzer/settings/SettingActivity;->a()V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/settings/SettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/vrem/wifianalyzer/settings/SettingActivity$a;

    invoke-direct {v2}, Lcom/vrem/wifianalyzer/settings/SettingActivity$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/settings/SettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/b/aa;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
