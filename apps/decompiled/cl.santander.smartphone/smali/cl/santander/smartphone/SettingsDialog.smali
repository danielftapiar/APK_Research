.class public Lcl/santander/smartphone/SettingsDialog;
.super Landroid/app/Dialog;
.source "SettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;,
        Lcl/santander/smartphone/SettingsDialog$myOnClickListener;
    }
.end annotation


# instance fields
.field bt_acerca:Landroid/widget/Button;

.field cb_locauto:Landroid/widget/CheckBox;

.field conduciendo:Z

.field ctx:Landroid/content/Context;

.field loc_auto:Z

.field rb_caminando:Landroid/widget/RadioButton;

.field rb_conduciendo:Landroid/widget/RadioButton;

.field public sd:Lcl/santander/smartphone/SettingsDialog;

.field tv_version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->setContentView(I)V

    .line 37
    iput-object p1, p0, Lcl/santander/smartphone/SettingsDialog;->ctx:Landroid/content/Context;

    .line 38
    iput-object p0, p0, Lcl/santander/smartphone/SettingsDialog;->sd:Lcl/santander/smartphone/SettingsDialog;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/smartphone/SettingsDialog;->loc_auto:Z

    iput-boolean v0, p0, Lcl/santander/smartphone/SettingsDialog;->conduciendo:Z

    .line 42
    invoke-virtual {p0}, Lcl/santander/smartphone/SettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/SettingsDialog;->setCancelable(Z)V

    .line 48
    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p0, p3}, Lcl/santander/smartphone/SettingsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    :cond_0
    invoke-direct {p0}, Lcl/santander/smartphone/SettingsDialog;->initComponents()V

    .line 54
    invoke-direct {p0}, Lcl/santander/smartphone/SettingsDialog;->showAppVersion()V

    .line 56
    invoke-direct {p0}, Lcl/santander/smartphone/SettingsDialog;->getSettings()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/SettingsDialog;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcl/santander/smartphone/SettingsDialog;->saveSettings()V

    return-void
.end method

.method private getSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 121
    iget-object v1, p0, Lcl/santander/smartphone/SettingsDialog;->ctx:Landroid/content/Context;

    sget-object v2, Lcl/santander/smartphone/Global;->SETTINGS:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcl/santander/smartphone/Global;->MODO_RUTA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcl/santander/smartphone/SettingsDialog;->conduciendo:Z

    .line 125
    sget-object v1, Lcl/santander/smartphone/Global;->MODO_LOCALIZACION_HOME:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcl/santander/smartphone/SettingsDialog;->loc_auto:Z

    .line 127
    iget-boolean v1, p0, Lcl/santander/smartphone/SettingsDialog;->conduciendo:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcl/santander/smartphone/SettingsDialog;->rb_conduciendo:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/SettingsDialog;->cb_locauto:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcl/santander/smartphone/SettingsDialog;->loc_auto:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const v0, 0x7f0602e1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    .line 62
    const v0, 0x7f0602e0

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->rb_conduciendo:Landroid/widget/RadioButton;

    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    new-instance v1, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;-><init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->rb_conduciendo:Landroid/widget/RadioButton;

    new-instance v1, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;-><init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    const v0, 0x7f0602e3

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->cb_locauto:Landroid/widget/CheckBox;

    .line 68
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->cb_locauto:Landroid/widget/CheckBox;

    new-instance v1, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;-><init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    const v0, 0x7f0602de

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->tv_version:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0602e4

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->bt_acerca:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog;->bt_acerca:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;-><init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myOnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private saveSettings()V
    .locals 5

    .prologue
    .line 102
    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog;->ctx:Landroid/content/Context;

    sget-object v3, Lcl/santander/smartphone/Global;->SETTINGS:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    sget-object v2, Lcl/santander/smartphone/Global;->MODO_RUTA:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    :goto_0
    sget-object v2, Lcl/santander/smartphone/Global;->MODO_LOCALIZACION_HOME:Ljava/lang/String;

    iget-object v3, p0, Lcl/santander/smartphone/SettingsDialog;->cb_locauto:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void

    .line 108
    :cond_0
    sget-object v2, Lcl/santander/smartphone/Global;->MODO_RUTA:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showAppVersion()V
    .locals 5

    .prologue
    .line 80
    const-string v1, ""

    .line 85
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcl/santander/smartphone/SettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cl.santander.smartphone"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog;->tv_version:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 87
    :catch_0
    move-exception v2

    goto :goto_0
.end method
