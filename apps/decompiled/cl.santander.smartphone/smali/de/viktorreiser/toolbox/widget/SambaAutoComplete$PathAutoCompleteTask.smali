.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;
.super Landroid/os/AsyncTask;
.source "SambaAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAutoCompleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mmException:Ljcifs/smb/SmbException;

.field private mmFile:Ljcifs/smb/SmbFile;

.field private mmFiles:[Ljcifs/smb/SmbFile;

.field private mmShowFiles:Z

.field view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lde/viktorreiser/toolbox/widget/SambaAutoComplete;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbFile;Z)V
    .locals 1
    .param p1, "file"    # Ljcifs/smb/SmbFile;
    .param p2, "showFiles"    # Z

    .prologue
    .line 946
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->view:Ljava/lang/ref/WeakReference;

    .line 947
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFile:Ljcifs/smb/SmbFile;

    .line 948
    iput-boolean p2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmShowFiles:Z

    .line 949
    return-void
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmShowFiles:Z

    return v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)Ljcifs/smb/SmbFile;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFile:Ljcifs/smb/SmbFile;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 956
    :try_start_0
    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFile:Ljcifs/smb/SmbFile;

    new-instance v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask$1;

    invoke-direct {v2, p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask$1;-><init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;)V

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v1

    iput-object v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljcifs/smb/SmbException;
    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmException:Ljcifs/smb/SmbException;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 971
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    .line 973
    .local v2, "v":Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
    if-nez v2, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 977
    :cond_0
    # invokes: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V
    invoke-static {v2, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$0(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Z)V

    .line 979
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmException:Ljcifs/smb/SmbException;

    if-eqz v3, :cond_2

    .line 980
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmException:Ljcifs/smb/SmbException;

    invoke-static {v3}, Lde/viktorreiser/toolbox/util/SmbUtils;->isAccessDenied(Ljcifs/smb/SmbException;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 981
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$7(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 982
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$7(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 983
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mDeniedAccessToast:Landroid/widget/Toast;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$7(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 987
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$8(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$5(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_2
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    array-length v3, v3

    if-eqz v3, :cond_4

    .line 994
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mSmbFileComparator:Ljava/util/Comparator;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$9(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 996
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 998
    .local v0, "complete":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 1002
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v4

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->DROPDOWN_LAYOUT:I
    invoke-static {}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$10()I

    move-result v5

    .line 1003
    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1002
    # invokes: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setSuperAdapter(Landroid/widget/ListAdapter;)V
    invoke-static {v2, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$11(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/widget/ListAdapter;)V

    .line 1004
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mStartsWith:Ljava/lang/String;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$12(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performSuperFiltering(Ljava/lang/CharSequence;I)V
    invoke-static {v2, v3, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$13(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/CharSequence;I)V

    .line 1009
    .end local v0    # "complete":[Ljava/lang/String;
    .end local v1    # "i":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFolderPath:Ljava/lang/String;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$8(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$5(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 999
    .restart local v0    # "complete":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$PathAutoCompleteTask;->mmFiles:[Ljcifs/smb/SmbFile;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1006
    .end local v0    # "complete":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mEmptyAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$14(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    # invokes: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setSuperAdapter(Landroid/widget/ListAdapter;)V
    invoke-static {v2, v3}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$11(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method
