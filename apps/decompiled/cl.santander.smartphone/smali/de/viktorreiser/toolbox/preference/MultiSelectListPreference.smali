.class public Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = "\u00e2\u2020\ufffd\u00c5\u00a7\u00c3\u00b8\u00e2\u2020\u2019"


# instance fields
.field private mSelected:[Z

.field private mSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    .line 85
    const-string v1, "\u00e2\u2020\ufffd\u00c5\u00a7\u00c3\u00b8\u00e2\u2020\u2019"

    iput-object v1, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSeparator:Ljava/lang/String;

    .line 87
    if-nez p2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    sget-object v2, Lde/viktorreiser/toolbox/R$styleable;->MultiSelectListPreference:[I

    .line 91
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->setSeparator(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;)[Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    return-object v0
.end method

.method private restoreCheckedEntries()V
    .locals 9

    .prologue
    .line 168
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "value":Ljava/lang/String;
    const/4 v7, 0x0

    new-array v6, v7, [Ljava/lang/String;

    .line 173
    .local v6, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 174
    iget-object v7, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSeparator:Ljava/lang/String;

    invoke-static {v7, v5}, Lde/viktorreiser/toolbox/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 177
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v7, v6

    if-lt v3, v7, :cond_1

    .line 189
    return-void

    .line 178
    :cond_1
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "v":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v1

    if-lt v2, v7, :cond_2

    .line 177
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_2
    aget-object v0, v1, v2

    .line 183
    .local v0, "entry":Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    iget-object v7, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v2

    goto :goto_2

    .line 180
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSelected()[Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .param p1, "positiveResult"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 140
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 142
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 148
    iget-object v3, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSeparator:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lde/viktorreiser/toolbox/util/StringUtils;->join(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 151
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_3

    .line 157
    const-string v3, "\u00e2\u2020\ufffd\u00c5\u00a7\u00c3\u00b8\u00e2\u2020\u2019"

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lde/viktorreiser/toolbox/util/StringUtils;->join(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    .end local v1    # "i":I
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void

    .line 143
    .restart local v1    # "i":I
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v3, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    .line 144
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v3, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_4

    .line 153
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 112
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 115
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 117
    const-string v3, "ListPreference requires an entries array and an entryValues array which are both the same length"

    .line 116
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    invoke-direct {p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->restoreCheckedEntries()V

    .line 123
    iget-object v2, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    .line 124
    new-instance v3, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference$1;

    invoke-direct {v3, p0}, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference$1;-><init>(Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;)V

    .line 123
    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 104
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSelected:[Z

    .line 105
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 2
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "\u00e2\u2020\ufffd\u00c5\u00a7\u00c3\u00b8\u00e2\u2020\u2019"

    iput-object v0, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSeparator:Ljava/lang/String;

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lde/viktorreiser/toolbox/preference/MultiSelectListPreference;->mSeparator:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method
