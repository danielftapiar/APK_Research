.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;
.super Landroid/os/AsyncTask;
.source "SambaAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvailableHostsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 860
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->view:Ljava/lang/ref/WeakReference;

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;)V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 870
    const/4 v0, 0x1

    invoke-static {v0}, Lde/viktorreiser/toolbox/util/SmbUtils;->listAvailableHosts(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 8
    .param p1, "hosts"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 875
    iget-object v5, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$AvailableHostsTask;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    .line 877
    .local v4, "v":Lde/viktorreiser/toolbox/widget/SambaAutoComplete;
    if-nez v4, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    # invokes: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->triggerLoading(Z)V
    invoke-static {v4, v7}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$0(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Z)V

    .line 882
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$1(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;J)V

    .line 884
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 886
    new-instance v0, Ljava/util/HashSet;

    .line 887
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mAvailableHosts:[Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$2(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 886
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 888
    .local v0, "currentHosts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v3, "newHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 891
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_3

    .line 897
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$3(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;[Ljava/lang/String;)V

    .line 910
    .end local v0    # "currentHosts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "newHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastAdapterId:Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$4(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hosts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 911
    const-string v5, ""

    invoke-static {v4, v5}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$5(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Ljava/lang/String;)V

    .line 914
    :cond_2
    invoke-virtual {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 915
    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mLastTextInput:Ljava/lang/String;
    invoke-static {v4}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$6(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 892
    .restart local v0    # "currentHosts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "newHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 900
    .end local v0    # "currentHosts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "newHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    .line 902
    .local v1, "hostsWithSlash":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v5, v1

    if-lt v2, v5, :cond_6

    .line 906
    invoke-static {v4, v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$3(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;[Ljava/lang/String;)V

    goto :goto_2

    .line 903
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
