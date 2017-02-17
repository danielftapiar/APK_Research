.class Lcl/santander/smartphone/SettingsDialog$myOnClickListener;
.super Ljava/lang/Object;
.source "SettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/SettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/SettingsDialog;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/SettingsDialog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/SettingsDialog;Lcl/santander/smartphone/SettingsDialog$myOnClickListener;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;-><init>(Lcl/santander/smartphone/SettingsDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 173
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v2, v2, Lcl/santander/smartphone/SettingsDialog;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "info":Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 176
    const v2, 0x7f03002f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 177
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 179
    const v2, 0x7f0600d2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, "tv_info":Landroid/widget/TextView;
    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v2, v2, Lcl/santander/smartphone/SettingsDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 183
    iget-object v2, p0, Lcl/santander/smartphone/SettingsDialog$myOnClickListener;->this$0:Lcl/santander/smartphone/SettingsDialog;

    iget-object v2, v2, Lcl/santander/smartphone/SettingsDialog;->sd:Lcl/santander/smartphone/SettingsDialog;

    invoke-virtual {v2}, Lcl/santander/smartphone/SettingsDialog;->dismiss()V

    .line 185
    return-void
.end method
