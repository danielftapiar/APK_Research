.class public Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DisplayPhotoFragment.java"


# instance fields
.field LikeClickListener:Landroid/view/View$OnClickListener;

.field TAG:Ljava/lang/String;

.field comentarListener:Landroid/view/View$OnClickListener;

.field commentTitle:Landroid/widget/TextView;

.field idPhoto:Ljava/lang/String;

.field imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

.field imagenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/utils/ResizableImageView;",
            ">;"
        }
    .end annotation
.end field

.field imgLikePost:Landroid/widget/ImageView;

.field likeCount:Landroid/widget/TextView;

.field linearLayout:Landroid/widget/LinearLayout;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field txtForComment:Landroid/widget/EditText;

.field txtNombreUsuarioPost:Landroid/widget/TextView;

.field txtTextOfPhoto:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 33
    const-string v0, "DisplayPhotoFragment"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imagenes:Ljava/util/List;

    .line 149
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->comentarListener:Landroid/view/View$OnClickListener;

    .line 367
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$2;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method private generarVistaComentario(Lcl/birdie/transantiagomaster/facebook/models/CommentModel;)Landroid/view/View;
    .locals 7
    .param p1, "cm"    # Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": generarVistaComentario()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-nez v4, :cond_0

    .line 364
    :goto_0
    return-object v3

    .line 335
    :cond_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 336
    const v5, 0x7f030031

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 338
    .local v3, "linear":Landroid/widget/LinearLayout;
    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 339
    .local v1, "imagen":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imagenes:Ljava/util/List;

    monitor-enter v5

    .line 342
    :try_start_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imagenes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 346
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-static {v4, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 348
    :cond_1
    const v4, 0x7f0800ac

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 349
    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const v4, 0x7f0800a7

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    .local v0, "LikeCount":Landroid/widget/TextView;
    iget v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 357
    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 358
    .local v2, "img":Landroid/widget/ImageView;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 361
    const v4, 0x7f0800ad

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 362
    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 341
    .end local v0    # "LikeCount":Landroid/widget/TextView;
    .end local v2    # "img":Landroid/widget/ImageView;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public final LoadContent()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->idPhoto:Ljava/lang/String;

    new-instance v2, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->TAG:Ljava/lang/String;

    .line 55
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 64
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
    .line 85
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "IdImage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->idPhoto:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f08011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 115
    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtTextOfPhoto:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtNombreUsuarioPost:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 118
    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->commentTitle:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->commentTitle:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imgLikePost:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtForComment:Landroid/widget/EditText;

    .line 125
    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->comentarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LoadContent()V

    .line 108
    return-void
.end method

.method public final procesarImageModel(Lcl/birdie/transantiagomaster/facebook/models/ImageModel;)V
    .locals 7
    .param p1, "dataImage"    # Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .prologue
    .line 177
    const-string v2, "DisplayPhotoFragment"

    const-string v3, "DisplayPhotoFragment: RefrescarImagen()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->image:Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .line 179
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    invoke-static {v2, v3}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 181
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtTextOfPhoto:Landroid/widget/TextView;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->NameImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    if-eqz v2, :cond_5

    .line 183
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtNombreUsuarioPost:Landroid/widget/TextView;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    iget v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->LikeCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imgLikePost:Landroid/widget/ImageView;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imgLikePost:Landroid/widget/ImageView;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v3, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->IdImage:Ljava/lang/String;

    new-instance v4, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V

    invoke-interface {v2, v3, v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onLikeCount(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 214
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v3, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 216
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 232
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$5;

    invoke-direct {v5, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$5;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V

    invoke-interface {v2, v4, v5}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetUrlProfilePicture(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 214
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 265
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->Comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 266
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->commentTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :cond_4
    return-void

    .line 185
    :cond_5
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtNombreUsuarioPost:Landroid/widget/TextView;

    const-string v3, "TransantiagoMaster!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 220
    :cond_6
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .line 222
    .local v1, "m":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    iget-object v4, v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 224
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RefrescarPosts: a\u00f1adiendo id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->usuariosSinImagenes:Ljava/util/Hashtable;

    iget-object v5, v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v6, v1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 214
    .end local v1    # "m":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 261
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .line 263
    .local v0, "c":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->generarVistaComentario(Lcl/birdie/transantiagomaster/facebook/models/CommentModel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final redibujarImagenes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imageView:Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    invoke-static {p2, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 316
    :cond_0
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imagenes:Ljava/util/List;

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->imagenes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    monitor-exit v2

    return-void

    .line 317
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 318
    .local v0, "img":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-static {p2, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 316
    .end local v0    # "img":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
