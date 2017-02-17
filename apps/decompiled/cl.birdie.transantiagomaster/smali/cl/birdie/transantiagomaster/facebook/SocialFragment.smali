.class public Lcl/birdie/transantiagomaster/facebook/SocialFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SocialFragment.java"


# instance fields
.field cgvAdapter:Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;

.field gridview:Landroid/widget/GridView;

.field public itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 76
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/SocialFragment$1;-><init>(Lcl/birdie/transantiagomaster/facebook/SocialFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    const v1, 0x7f030041

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->gridview:Landroid/widget/GridView;

    .line 114
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    new-instance v1, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataImages:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->cgvAdapter:Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;

    .line 117
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->gridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->cgvAdapter:Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 46
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Fotos"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/SocialFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/SocialFragment$2;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/facebook/SocialFragment$2;-><init>(Lcl/birdie/transantiagomaster/facebook/SocialFragment;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetPhotosAlbum(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 126
    return-void
.end method
