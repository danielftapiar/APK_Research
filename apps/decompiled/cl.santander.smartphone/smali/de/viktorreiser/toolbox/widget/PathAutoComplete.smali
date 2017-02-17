.class public Lde/viktorreiser/toolbox/widget/PathAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "PathAutoComplete.java"


# static fields
.field private static final DROPDOWN_LAYOUT:I


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mEmptyAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileFilter:Ljava/io/FileFilter;

.field private mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mInputFilter:Landroid/text/InputFilter;

.field private mLastAdapterId:Ljava/lang/String;

.field private mRootDir:Ljava/lang/String;

.field private mShowFiles:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget v0, Lde/viktorreiser/toolbox/R$layout;->slim_dropdown_list_item:I

    sput v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->DROPDOWN_LAYOUT:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    .line 47
    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 147
    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 152
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    return v0
.end method

.method private createAutoCompleteForFolder(Ljava/lang/String;)V
    .locals 6
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 419
    .local v1, "files":[Ljava/io/File;
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 421
    .local v0, "complete":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFileComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 424
    array-length v3, v1

    new-array v0, v3, [Ljava/lang/String;

    .line 426
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 435
    .end local v2    # "i":I
    :cond_0
    if-nez v0, :cond_3

    .line 436
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    :goto_1
    return-void

    .line 427
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 429
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 426
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "i":I
    :cond_3
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->DROPDOWN_LAYOUT:I

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-super {p0, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 297
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->DROPDOWN_LAYOUT:I

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    .line 299
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$3;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$3;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFileFilter:Ljava/io/FileFilter;

    .line 306
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setRootDir(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setupFileComparator()V

    .line 318
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setupInputFilter()V

    .line 319
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setupFocusListener()V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setupXmlAttributes(Landroid/util/AttributeSet;)V

    .line 325
    :cond_0
    invoke-super {p0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 326
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mInputFilter:Landroid/text/InputFilter;

    aput-object v1, v0, v4

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 328
    return-void
.end method

.method private setupFileComparator()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$6;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$6;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFileComparator:Ljava/util/Comparator;

    .line 376
    return-void
.end method

.method private setupFocusListener()V
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 407
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 408
    return-void
.end method

.method private setupInputFilter()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$5;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$5;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mInputFilter:Landroid/text/InputFilter;

    .line 354
    return-void
.end method

.method private setupXmlAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 382
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/viktorreiser/toolbox/R$styleable;->PathAutoComplete:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 384
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "showFiles":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 386
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setShowFiles(Z)V

    .line 389
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setRootDir(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 392
    return-void
.end method


# virtual methods
.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getPathText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getShowFiles()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    return v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "currentString":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 245
    const-string v4, ""

    iput-object v4, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 246
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 273
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_1
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 258
    .local v2, "lastSlash":I
    const/4 v4, 0x0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "folderPath":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "startsWith":Ljava/lang/String;
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    invoke-direct {p0, v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->createAutoCompleteForFolder(Ljava/lang/String;)V

    .line 269
    :cond_2
    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 272
    invoke-super {p0, v3, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0, v0, v3}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 292
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0
    .param p1, "inputfilters"    # [Landroid/text/InputFilter;

    .prologue
    .line 167
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 184
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    if-nez p1, :cond_1

    .line 187
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;

    invoke-direct {v0, p0, p1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 206
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 208
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;-><init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setRootDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mRootDir:Ljava/lang/String;

    .line 95
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public setShowFiles(Z)V
    .locals 1
    .param p1, "showFiles"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 117
    return-void
.end method
