.class public Lde/viktorreiser/toolbox/preference/PathDialogPreference;
.super Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;
.source "PathDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

.field private mEditTextlayout:Landroid/widget/LinearLayout;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->initialize(Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 227
    new-instance v1, Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    .line 228
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setImeOptions(I)V

    .line 229
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v1, v4}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 231
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    const/high16 v1, 0x41200000    # 10.0f

    .line 235
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 234
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 235
    const/high16 v2, 0x3f000000    # 0.5f

    .line 234
    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 237
    .local v0, "dip":I
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    .line 238
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 239
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    return-void
.end method


# virtual methods
.method public getPathAutoComplete()Lde/viktorreiser/toolbox/widget/PathAutoComplete;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 123
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 124
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditTextlayout:Landroid/widget/LinearLayout;

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onDialogClosed(Z)V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mEditText:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getPathText()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->setText(Ljava/lang/String;)V

    .line 221
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 205
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 202
    check-cast v0, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    .line 203
    .local v0, "myState":Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
    invoke-virtual {v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 204
    iget-object v1, v0, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 183
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 189
    :goto_0
    return-object v0

    .line 187
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    .local v0, "myState":Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lde/viktorreiser/toolbox/preference/PathDialogPreference$SavedState;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->setText(Ljava/lang/String;)V

    .line 174
    return-void

    .line 173
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string p1, ""

    .line 73
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->shouldDisableDependents()Z

    move-result v1

    .line 75
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mText:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->persistString(Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->shouldDisableDependents()Z

    move-result v0

    .line 81
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->notifyDependencyChange(Z)V

    .line 84
    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lde/viktorreiser/toolbox/preference/ValidatedDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/PathDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 149
    const/4 v1, 0x5

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 150
    return-void
.end method
