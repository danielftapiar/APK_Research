.class Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/SettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/SettingsDialog;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/SettingsDialog;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;-><init>(Lcl/santander/smartphone/SettingsDialog;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, v0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    if-eqz p2, :cond_0

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, v0, Lcl/santander/smartphone/SettingsDialog;->rb_conduciendo:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    # invokes: Lcl/santander/smartphone/SettingsDialog;->saveSettings()V
    invoke-static {v0}, Lcl/santander/smartphone/SettingsDialog;->access$0(Lcl/santander/smartphone/SettingsDialog;)V

    .line 165
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, v0, Lcl/santander/smartphone/SettingsDialog;->rb_conduciendo:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcl/santander/smartphone/SettingsDialog$myCheckedChangeListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, v0, Lcl/santander/smartphone/SettingsDialog;->rb_caminando:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
