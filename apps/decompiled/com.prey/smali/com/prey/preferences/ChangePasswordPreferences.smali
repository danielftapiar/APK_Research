.class public Lcom/prey/preferences/ChangePasswordPreferences;
.super Landroid/preference/DialogPreference;
.source "ChangePasswordPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;
    }
.end annotation


# instance fields
.field changePassword:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/prey/preferences/ChangePasswordPreferences;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/preferences/ChangePasswordPreferences;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePasswordPreferences;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 45
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 46
    iget-object v3, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    const v4, 0x7f1000f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "old_password":Ljava/lang/String;
    iget-object v3, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    const v4, 0x7f1000f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    const v4, 0x7f1000f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "repassword":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900cb

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 54
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v3}, Lcom/prey/preferences/ChangePasswordPreferences;->showDialog(Landroid/os/Bundle;)V

    .line 65
    .end local v0    # "old_password":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "repassword":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v0    # "old_password":Ljava/lang/String;
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "repassword":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 57
    new-instance v3, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;

    invoke-direct {v3, p0, v8}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;-><init>(Lcom/prey/preferences/ChangePasswordPreferences;Lcom/prey/preferences/ChangePasswordPreferences$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v7

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 59
    :cond_2
    new-instance v3, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;

    invoke-direct {v3, p0, v8}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;-><init>(Lcom/prey/preferences/ChangePasswordPreferences;Lcom/prey/preferences/ChangePasswordPreferences$1;)V

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/prey/preferences/ChangePasswordPreferences$ChangePassword;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 62
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v3}, Lcom/prey/preferences/ChangePasswordPreferences;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/prey/preferences/ChangePasswordPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, "i":Landroid/view/LayoutInflater;
    const v1, 0x7f04004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/prey/preferences/ChangePasswordPreferences;->changePassword:Landroid/view/View;

    return-object v1
.end method
