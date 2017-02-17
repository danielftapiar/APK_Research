.class public abstract Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ValidatedDialogPreference.java"


# instance fields
.field private mValidationCallback:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    sget-object v3, Lde/viktorreiser/toolbox/R$styleable;->ValidatedDialogPreference:[I

    .line 164
    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "callback":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->setOnValidation(Ljava/lang/String;)V

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public setOnValidation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 74
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;

    .line 76
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    const-class v3, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    const-string v3, ") should return a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    return-void

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-class v3, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    const-string v3, ") doesn\'t exist in activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOnValidation(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->setOnValidation(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 135
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;

    invoke-direct {v1, p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;-><init>(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method protected validateInput(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)Z
    .locals 1
    .param p1, "pref"    # Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
