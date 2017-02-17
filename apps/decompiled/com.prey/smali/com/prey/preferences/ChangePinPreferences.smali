.class public Lcom/prey/preferences/ChangePinPreferences;
.super Landroid/preference/DialogPreference;
.source "ChangePinPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/ChangePinPreferences$ChangePin;
    }
.end annotation


# instance fields
.field changePin:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/prey/preferences/ChangePinPreferences;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/preferences/ChangePinPreferences;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/prey/preferences/ChangePinPreferences;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 58
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    const v2, 0x7f1000f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "pinEdit":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 64
    new-instance v1, Lcom/prey/preferences/ChangePinPreferences$ChangePin;

    invoke-direct {v1, p0, v5}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;-><init>(Lcom/prey/preferences/ChangePinPreferences;Lcom/prey/preferences/ChangePinPreferences$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    .end local v0    # "pinEdit":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "pinEdit":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/prey/preferences/ChangePinPreferences$ChangePin;

    invoke-direct {v1, p0, v5}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;-><init>(Lcom/prey/preferences/ChangePinPreferences;Lcom/prey/preferences/ChangePinPreferences$1;)V

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/prey/preferences/ChangePinPreferences$ChangePin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, "i":Landroid/view/LayoutInflater;
    const v4, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    .line 45
    iget-object v4, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    const v5, 0x7f1000f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 46
    .local v3, "pinEdit":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/prey/preferences/ChangePinPreferences;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyConfig;->getPinNumber()I

    move-result v2

    .line 47
    .local v2, "pin":I
    if-ltz v2, :cond_0

    .line 48
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/prey/preferences/ChangePinPreferences;->changePin:Landroid/view/View;

    return-object v4

    .line 48
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
