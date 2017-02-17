.class public Lcl/birdie/transantiagomaster/facebook/WallFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/IPhotoTarget;


# static fields
.field public static Path:Ljava/lang/String;


# instance fields
.field adapter:Lcl/birdie/transantiagomaster/adapter/PostAdapter;

.field btnComentar:Landroid/widget/ImageView;

.field public btnComentarListener:Landroid/view/View$OnClickListener;

.field btnFoto:Landroid/widget/ImageView;

.field imageAttach:Landroid/widget/ImageView;

.field public itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

.field list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field txtComentario:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/TranSantiagoMaster.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->Path:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 192
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$1;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 222
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnComentarListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method private refreshFacebookStatus()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0
.end method


# virtual methods
.method public final LoadContent()V
    .locals 2

    .prologue
    .line 425
    const-string v0, "WallFragment"

    const-string v1, "LoadContent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/WallFragment$6;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$6;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetWallPosts(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 78
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
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string v0, "WallFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->setHasOptionsMenu(Z)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    const-string v3, "WallFragment"

    const-string v4, "onCreateView()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const v3, 0x7f030042

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 308
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0800d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    .line 309
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->itemSelectListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 323
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/WallFragment$3;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$3;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setOnRefreshListener(Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$OnRefreshListener;)V

    .line 333
    const v3, 0x7f0800aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnComentar:Landroid/widget/ImageView;

    .line 334
    const v3, 0x7f0800a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    .line 335
    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    .line 344
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 347
    sget v3, Lcl/birdie/transantiagomaster/Pantalla;->displayHeight:I

    div-int/lit8 v0, v3, 0x4

    .line 349
    .local v0, "h":I
    const/16 v3, 0x32

    if-ge v0, v3, :cond_0

    .line 350
    const/16 v0, 0x32

    .line 352
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 353
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 355
    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    .line 356
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$4;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->receivePhoto(Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnComentar:Landroid/widget/ImageView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnComentarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v3, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    .line 393
    .local v1, "postModel":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    new-instance v3, Lcl/birdie/transantiagomaster/adapter/PostAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcl/birdie/transantiagomaster/adapter/PostAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->adapter:Lcl/birdie/transantiagomaster/adapter/PostAdapter;

    .line 394
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->adapter:Lcl/birdie/transantiagomaster/adapter/PostAdapter;

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    if-eqz p3, :cond_1

    const-string v3, "comentario"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    const-string v4, "comentario"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_1
    return-object v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 445
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->refreshFacebookStatus()V

    .line 446
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "comentario"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->txtComentario:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->guardarSesion(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 98
    const-string v0, "WallFragment"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 100
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->refreshFacebookStatus()V

    .line 102
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Muro"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 105
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 107
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "wall.txt"

    invoke-static {v0}, Lcl/birdie/transantiagomaster/utils/ArchivoTXT;->leer(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    :try_start_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_2

    :try_start_8
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->adapter:Lcl/birdie/transantiagomaster/adapter/PostAdapter;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->notifyDataSetChanged()V

    .line 108
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->LoadContent()V

    .line 105
    :goto_3
    monitor-exit v1

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 107
    :cond_2
    :try_start_b
    new-instance v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/facebook/models/PostModel;-><init>(Lorg/json/JSONObject;)V

    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :try_start_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->dataPosts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v3

    throw v0

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment;->LoadContent()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 107
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public final procesarPosts()V
    .locals 2

    .prologue
    .line 406
    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->list:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;

    new-instance v1, Lcl/birdie/transantiagomaster/facebook/WallFragment$5;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$5;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment;)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final receivePhoto(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mostrarImagen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    invoke-static {p1}, Lcl/birdie/transantiagomaster/Pantalla;->borrarImagen(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 291
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 300
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v1, 0x0

    iput-object v1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->imageAttach:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->btnFoto:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
