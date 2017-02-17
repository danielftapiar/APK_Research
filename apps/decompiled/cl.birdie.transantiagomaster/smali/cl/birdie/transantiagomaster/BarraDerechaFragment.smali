.class public final Lcl/birdie/transantiagomaster/BarraDerechaFragment;
.super Landroid/support/v4/app/ListFragment;
.source "BarraDerechaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;,
        Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;
    }
.end annotation


# instance fields
.field private mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 123
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

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 130
    .local v1, "l":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    :try_start_0
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    .line 137
    .local v2, "post":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    iget-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->geom:Lcom/google/android/maps/GeoPoint;

    if-eqz v3, :cond_0

    .line 138
    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 139
    iget-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->geom:Lcom/google/android/maps/GeoPoint;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 140
    iget-object v3, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v2    # "post":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "excepcion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 104
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onActualizarSocialFeed()V

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    new-instance v3, Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$1;-><init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)V

    .line 63
    .local v3, "ocl":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 64
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 65
    const v6, 0x7f030062

    const/4 v7, 0x0

    .line 64
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "headerView":Landroid/view/View;
    const v5, 0x7f080152

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 68
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 72
    new-instance v0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;-><init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Landroid/content/Context;)V

    .line 73
    .local v0, "adapter":Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v6

    .line 75
    :try_start_0
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    .line 76
    .local v4, "p":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    invoke-virtual {v0, v4}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v4    # "p":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final refrescarFeed()V
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;

    .line 85
    .local v0, "adapter":Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;
    if-nez v0, :cond_0

    .line 86
    const-string v2, "BarraDerechaFragment"

    const-string v3, "adapter null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->clear()V

    .line 91
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 92
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    .line 93
    .local v1, "p":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$SampleAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v1    # "p":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final refreshLikeCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;

    invoke-direct {v1, p0, p1}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;-><init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onPostLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 217
    :cond_0
    return-void
.end method
