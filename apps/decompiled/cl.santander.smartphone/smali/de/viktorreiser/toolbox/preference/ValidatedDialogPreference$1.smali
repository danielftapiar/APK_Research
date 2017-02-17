.class Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;
.super Ljava/lang/Object;
.source "ValidatedDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 141
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    iget-object v2, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->validateInput(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    # getter for: Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->access$0(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    # getter for: Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->mValidationCallback:Ljava/lang/reflect/Method;
    invoke-static {v1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->access$0(Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference$1;->this$0:Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :cond_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
