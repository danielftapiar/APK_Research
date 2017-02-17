.class public Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SambaAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;,
        Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;,
        Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;,
        Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;
    }
.end annotation


# static fields
.field private static final DROPDOWN_LAYOUT:I

.field private static final HOST_TASK_PERIOD:I = 0x9c4

.field private static mCurrentPoolId:I

.field private static final mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/viktorreiser/toolbox/os/WeakPool",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableHosts:[Ljava/lang/String;

.field private mAvailableHostsTaskId:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mDeniedAccessToast:Landroid/widget/Toast;

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

.field private mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mFolderPath:Ljava/lang/String;

.field private mInputFilter:Landroid/text/InputFilter;

.field private mIsLoading:Z

.field private mLastAdapterId:Ljava/lang/String;

.field private mLastAvailableHostsCheck:J

.field private mLastTextInput:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPathAutoCompleteTaskId:I

.field private mSambaLoadListener:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

.field private mShowFiles:Z

.field private mSmbFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljcifs/smb/SmbFile;",
            ">;"
        }
    .end annotation
.end field

.field private mStartsWith:Ljava/lang/String;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lde/viktorreiser/toolbox/R$layout;->slim_dropdown_list_item:I

    sput v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->DROPDOWN_LAYOUT:I

    .line 71
    new-instance v0, Lde/viktorreiser/toolbox/os/WeakPool;

    invoke-direct {v0}, Lde/viktorreiser/toolbox/os/WeakPool;-><init>()V

    sput-object v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    .line 74
    const/4 v0, 0x1

    sput v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    .line 324
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    .line 329
    invoke-direct {p0, p2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->initialize(Landroid/util/AttributeSet;)V

    .line 330
    return-void
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Z)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V

    return-void
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;J)V
    .locals 0

    .prologue
    .line 128
    iput-wide p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    return-void
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->DROPDOWN_LAYOUT:I

    return v0
.end method

.method static synthetic access$11(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setSuperAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$12(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0, p1, p2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performSuperFiltering(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$14(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$16(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$17(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    return v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastTextInput:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$8(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSmbFileComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private autoCompletePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 737
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 740
    .local v2, "lastSlash":I
    if-ne v2, v7, :cond_0

    const-string v0, ""

    .line 743
    .local v0, "folderPath":Ljava/lang/String;
    :goto_0
    if-ne v2, v7, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    .line 746
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 747
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;

    invoke-super {p0, v4, v6}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    move v4, v5

    .line 786
    :goto_2
    return v4

    .line 740
    .end local v0    # "folderPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 744
    .restart local v0    # "folderPath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 743
    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 744
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 752
    :cond_2
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    move-result-object v3

    .line 753
    .local v3, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getAvailableHostsTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    move-result-object v1

    .line 755
    .local v1, "hostTaks":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    if-eqz v1, :cond_3

    .line 756
    invoke-virtual {v1, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->cancel(Z)Z

    .line 757
    iput v6, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    .line 760
    :cond_3
    if-eqz v3, :cond_4

    .line 761
    invoke-virtual {v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v7, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v7, :cond_6

    .line 762
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 763
    invoke-virtual {v3, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->cancel(Z)Z

    .line 764
    const/4 v3, 0x0

    .line 771
    :cond_4
    :goto_3
    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;

    .line 774
    if-nez v3, :cond_5

    .line 775
    invoke-direct {p0, v5}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V

    .line 777
    new-instance v3, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    .line 778
    .end local v3    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    iget-object v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    invoke-static {v4, v5, p1, v0}, Lde/viktorreiser/toolbox/util/SmbUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbFile;

    move-result-object v4

    iget-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    .line 777
    invoke-direct {v3, v4, v5}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;-><init>(Ljcifs/smb/SmbFile;Z)V

    .line 779
    .restart local v3    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->view:Ljava/lang/ref/WeakReference;

    .line 780
    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 782
    sget v4, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    iput v4, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    .line 783
    sget-object v4, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    iget v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    invoke-virtual {v4, v5, v3}, Lde/viktorreiser/toolbox/os/WeakPool;->put(ILjava/lang/Object;)V

    :cond_5
    move v4, v6

    .line 786
    goto :goto_2

    .line 767
    :cond_6
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private getAvailableHostsTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    .locals 3

    .prologue
    .line 665
    sget-object v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    iget v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/os/WeakPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 667
    .local v0, "task":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    if-eqz v1, :cond_0

    .line 668
    check-cast v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    .line 670
    .end local v0    # "task":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "task":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    .locals 3

    .prologue
    .line 650
    sget-object v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    iget v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/os/WeakPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 652
    .local v0, "task":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    if-eqz v1, :cond_0

    .line 653
    check-cast v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    .line 655
    .end local v0    # "task":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "task":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 507
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->DROPDOWN_LAYOUT:I

    new-array v3, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    .line 509
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$3;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$3;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    .line 516
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupSmbFileComparator()V

    .line 519
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupInputFilter()V

    .line 520
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupFocusListener()V

    .line 522
    if-eqz p1, :cond_0

    .line 523
    invoke-direct {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupXmlAttributes(Landroid/util/AttributeSet;)V

    .line 526
    :cond_0
    invoke-super {p0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 527
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 528
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mInputFilter:Landroid/text/InputFilter;

    aput-object v1, v0, v4

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 529
    return-void
.end method

.method private performCompletion(Ljava/lang/String;)Z
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 683
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "p":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 686
    .local v0, "firstSlash":I
    if-ne v0, v10, :cond_4

    move-object v1, v3

    .line 687
    .local v1, "host":Ljava/lang/String;
    :goto_0
    if-ne v0, v10, :cond_5

    const-string v4, ""

    .line 689
    .local v4, "path":Ljava/lang/String;
    :goto_1
    if-ne v0, v10, :cond_6

    .line 690
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getAvailableHostsTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    move-result-object v2

    .line 691
    .local v2, "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    move-result-object v5

    .line 693
    .local v5, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    if-eqz v5, :cond_0

    .line 694
    invoke-virtual {v5, v7}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->cancel(Z)Z

    .line 695
    iput v7, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    .line 698
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v8

    sget-object v9, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v8, v9, :cond_2

    .line 699
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-wide v10, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x9c4

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 700
    invoke-direct {p0, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V

    .line 701
    new-instance v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    .end local v2    # "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;)V

    .line 702
    .restart local v2    # "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->view:Ljava/lang/ref/WeakReference;

    .line 703
    new-array v8, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v8}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    sget v8, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    iput v8, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    .line 706
    sget-object v8, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    iget v9, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    invoke-virtual {v8, v9, v2}, Lde/viktorreiser/toolbox/os/WeakPool;->put(ILjava/lang/Object;)V

    .line 710
    :cond_2
    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 711
    iget-object v8, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    const-string v9, "hosts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 712
    const-string v8, "hosts"

    iput-object v8, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 713
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->DROPDOWN_LAYOUT:I

    .line 714
    iget-object v11, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 713
    invoke-super {p0, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 717
    :cond_3
    invoke-super {p0, v1, v7}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 725
    .end local v2    # "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    .end local v5    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    :goto_2
    return v6

    .line 686
    .end local v1    # "host":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 687
    .restart local v1    # "host":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 722
    .restart local v4    # "path":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v1, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->autoCompletePath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    .restart local v2    # "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    .restart local v5    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    :cond_7
    move v6, v7

    .line 725
    goto :goto_2
.end method

.method private performSuperFiltering(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 640
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 641
    return-void
.end method

.method private setSuperAdapter(Landroid/widget/ListAdapter;)V
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
    .line 633
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 634
    return-void
.end method

.method private setupFocusListener()V
    .locals 1

    .prologue
    .line 616
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 625
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 626
    return-void
.end method

.method private setupInputFilter()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$4;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$4;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mInputFilter:Landroid/text/InputFilter;

    .line 585
    return-void
.end method

.method private setupSmbFileComparator()V
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;

    invoke-direct {v0, p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$5;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSmbFileComparator:Ljava/util/Comparator;

    .line 610
    return-void
.end method

.method private setupXmlAttributes(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 535
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 536
    sget-object v5, Lde/viktorreiser/toolbox/R$styleable;->SambaAutoComplete:[I

    .line 535
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 538
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "showFiles":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 540
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setShowFiles(Z)V

    .line 544
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 545
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-virtual {p0, v4, v5}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setLoginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 548
    .local v1, "image":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 551
    if-nez v1, :cond_2

    .line 552
    invoke-virtual {p0, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setDeniedAccessMessage(Ljava/lang/CharSequence;)V

    .line 558
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 559
    return-void

    .line 554
    :cond_2
    invoke-virtual {p0, v3, v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setDeniedAccessMessage(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private triggerLoading(Z)V
    .locals 1
    .param p1, "isLoading"    # Z

    .prologue
    .line 796
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    if-eq v0, p1, :cond_0

    .line 797
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 799
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSambaLoadListener:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSambaLoadListener:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

    invoke-interface {v0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;->onSambaLoad(Z)V

    .line 803
    :cond_0
    return-void
.end method


# virtual methods
.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getOnSambaLoadListener()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSambaLoadListener:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

    return-object v0
.end method

.method public getShowFiles()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    return v0
.end method

.method public isSambaLoading()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v5, 0x1

    .line 478
    move-object v1, p1

    check-cast v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;

    .line 479
    .local v1, "myState":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;
    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/AutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 480
    iget v3, v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->availableHostsTaskId:I

    iput v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    .line 481
    iget v3, v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->pathAutoComleteTaskId:I

    iput v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    .line 482
    iget v3, v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->lastAvailableHostsCheck:I

    int-to-long v3, v3

    iput-wide v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAvailableHostsCheck:J

    .line 484
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getAvailableHostsTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    move-result-object v0

    .line 485
    .local v0, "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    move-result-object v2

    .line 487
    .local v2, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    if-eqz v0, :cond_0

    .line 488
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->view:Ljava/lang/ref/WeakReference;

    .line 490
    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_0

    .line 491
    iput-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 495
    :cond_0
    if-eqz v2, :cond_1

    .line 496
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->view:Ljava/lang/ref/WeakReference;

    .line 498
    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 499
    iput-boolean v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mIsLoading:Z

    .line 502
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 466
    .local v0, "myState":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;
    iget v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHostsTaskId:I

    iput v1, v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->availableHostsTaskId:I

    .line 467
    iget v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    iput v1, v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$SavedState;->pathAutoComleteTaskId:I

    .line 468
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastTextInput:Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lde/viktorreiser/toolbox/util/AndroidUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastTextInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 416
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 417
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 419
    invoke-direct {p0, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastTextInput:Ljava/lang/String;

    invoke-direct {p0, v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performCompletion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 425
    const-string v2, ""

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;

    invoke-super {p0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 430
    :cond_3
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    move-result-object v1

    .line 431
    .local v1, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getAvailableHostsTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;

    move-result-object v0

    .line 433
    .local v0, "hostTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_1

    .line 434
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_1

    .line 435
    :cond_5
    invoke-direct {p0, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 450
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

    .line 452
    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p0, v0, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 456
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
    .line 347
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    return-void
.end method

.method public setDeniedAccessMessage(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setDeniedAccessMessage(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public setDeniedAccessMessage(II)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "imgId"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setDeniedAccessMessage(Ljava/lang/CharSequence;I)V

    .line 298
    return-void
.end method

.method public setDeniedAccessMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    .line 259
    return-void
.end method

.method public setDeniedAccessMessage(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "imgId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 279
    invoke-static {v0, p2, p1, v1}, Lde/viktorreiser/toolbox/util/AndroidUtils;->makeImageToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;

    .line 281
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0
    .param p1, "inputfilters"    # [Landroid/text/InputFilter;

    .prologue
    .line 339
    return-void
.end method

.method public setLoginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    .line 152
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .end local p2    # "password":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    .line 158
    :goto_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    const-string v1, "hosts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 161
    :cond_1
    return-void

    .line 154
    .restart local p2    # "password":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPassword:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mUser:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 378
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 379
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :goto_0
    return-void

    .line 380
    :cond_0
    if-nez p1, :cond_1

    .line 381
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 383
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;

    invoke-direct {v0, p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 356
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 369
    :goto_0
    return-void

    .line 358
    :cond_0
    if-nez p1, :cond_1

    .line 359
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 361
    :cond_1
    new-instance v0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;

    invoke-direct {v0, p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/view/View$OnFocusChangeListener;)V

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setOnSambaLoadListener(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

    .prologue
    .line 170
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSambaLoadListener:Lde/viktorreiser/toolbox/widget/SambaAutoComplete$OnSambaLoadListener;

    .line 171
    return-void
.end method

.method public setShowFiles(Z)V
    .locals 5
    .param p1, "showFiles"    # Z

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-boolean v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    if-eq v2, p1, :cond_0

    .line 201
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    .line 203
    iget-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    const-string v3, "hosts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const-string v2, ""

    iput-object v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getPathAutoCompleteTask()Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    move-result-object v0

    .line 209
    .local v0, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 210
    invoke-virtual {v0, v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->cancel(Z)Z

    .line 211
    new-instance v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFile:Ljcifs/smb/SmbFile;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->access$3(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)Ljcifs/smb/SmbFile;

    move-result-object v2

    iget-boolean v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mShowFiles:Z

    invoke-direct {v1, v2, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;-><init>(Ljcifs/smb/SmbFile;Z)V

    .line 212
    .end local v0    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    .local v1, "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->view:Ljava/lang/ref/WeakReference;

    .line 213
    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    sget v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mCurrentPoolId:I

    iput v2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    .line 216
    sget-object v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDataPool:Lde/viktorreiser/toolbox/os/WeakPool;

    iget v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mPathAutoCompleteTaskId:I

    invoke-virtual {v2, v3, v1}, Lde/viktorreiser/toolbox/os/WeakPool;->put(ILjava/lang/Object;)V

    .line 220
    .end local v1    # "pathTask":Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
    :cond_0
    return-void
.end method
