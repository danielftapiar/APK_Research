.class public Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DisplayCommentFragment.java"


# static fields
.field static idPost:Ljava/lang/String;


# instance fields
.field CommentClickListener:Landroid/view/View$OnClickListener;

.field LikeClickListener:Landroid/view/View$OnClickListener;

.field TAG:Ljava/lang/String;

.field comentarListener:Landroid/view/View$OnClickListener;

.field imageSubida:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

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

.field textOfCaption:Landroid/widget/TextView;

.field textOfComment:Landroid/widget/TextView;

.field textOfName:Landroid/widget/TextView;

.field txtForComment:Landroid/widget/EditText;

.field userOfComment:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 37
    const-string v0, "DisplayCommentFragment"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    .line 98
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$1;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->comentarListener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$2;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    .line 364
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$3;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->CommentClickListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method private generarVistaComentario(Lcl/birdie/transantiagomaster/facebook/models/CommentModel;)Landroid/view/View;
    .locals 7
    .param p1, "cm"    # Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .prologue
    .line 302
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": generarVistaComentario()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030031

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 305
    .local v2, "linear":Landroid/widget/LinearLayout;
    const v4, 0x7f0800ab

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 306
    .local v0, "imagen":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    monitor-enter v5

    .line 309
    :try_start_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 313
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    invoke-static {v4, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 315
    :cond_0
    const v4, 0x7f0800ac

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 316
    .local v3, "user":Landroid/widget/TextView;
    const v4, 0x7f0800a7

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 318
    iget v5, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->LikeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const v4, 0x7f0800a6

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 321
    .local v1, "img":Landroid/widget/ImageView;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v4, 0x7f0800ad

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->Message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-object v2

    .line 308
    .end local v1    # "img":Landroid/widget/ImageView;
    .end local v3    # "user":Landroid/widget/TextView;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private regenerarLayout()V
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 291
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Comments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 294
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .line 296
    .local v0, "c":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->generarVistaComentario(Lcl/birdie/transantiagomaster/facebook/models/CommentModel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 395
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 385
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 387
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
    .line 63
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    const-string v1, "IdPost"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->idPost:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->setHasOptionsMenu(Z)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": onCreateView()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfComment:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfCaption:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->userOfComment:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 82
    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->likeCount:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imgLikePost:Landroid/widget/ImageView;

    .line 84
    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageSubida:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfName:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageSubida:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 90
    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->txtForComment:Landroid/widget/EditText;

    .line 92
    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->comentarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 126
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idPost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->idPost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commentPost.Id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->idPost:Ljava/lang/String;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->procesarPost(Lcl/birdie/transantiagomaster/facebook/models/PostModel;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": LoadContent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->idPost:Ljava/lang/String;

    new-instance v2, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$4;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetPost(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0
.end method

.method public final procesarPost(Lcl/birdie/transantiagomaster/facebook/models/PostModel;)V
    .locals 7
    .param p1, "post"    # Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .prologue
    const/16 v6, 0x8

    .line 180
    const-string v4, "DisplayCommentFragment"

    const-string v5, "DisplayCommentFragment: RefrescarPost()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v4, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->commentPost:Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 182
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->userOfComment:Landroid/widget/TextView;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    .line 185
    .local v2, "textforPost":Ljava/lang/String;
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    sget-object v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Photo:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    if-ne v4, v5, :cond_5

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Object_id:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 187
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Object_id:Ljava/lang/String;

    new-instance v6, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$5;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$5;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    invoke-interface {v4, v5, v6}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 226
    :cond_0
    :goto_0
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 227
    const-string v2, ""

    .line 228
    :cond_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfComment:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfComment:Landroid/widget/TextView;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->CommentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfName:Landroid/widget/TextView;

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfCaption:Landroid/widget/TextView;

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 235
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 237
    :cond_2
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->likeCount:Landroid/widget/TextView;

    iget v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->LikeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->likeCount:Landroid/widget/TextView;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->likeCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imgLikePost:Landroid/widget/ImageView;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imgLikePost:Landroid/widget/ImageView;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->LikeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 245
    .local v3, "usuariosSinImagenes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v5, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Comments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 260
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v4, :cond_4

    .line 261
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    new-instance v6, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$7;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$7;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    invoke-interface {v4, v5, v6}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetUrlProfilePictureUI(Ljava/util/Collection;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 284
    :cond_4
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->regenerarLayout()V

    .line 287
    return-void

    .line 202
    .end local v3    # "usuariosSinImagenes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    :cond_5
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    sget-object v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Link:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    if-ne v4, v5, :cond_6

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 203
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Link:Ljava/lang/String;

    const-string v5, "http://www.facebook.com/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v5, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$6;

    invoke-direct {v5, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$6;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V

    invoke-interface {v4, v1, v5}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetPhoto(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "id":Ljava/lang/String;
    :cond_6
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Type:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    sget-object v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Video:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    if-ne v4, v5, :cond_7

    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 220
    iget-object v4, p1, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageSubida:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 222
    :cond_7
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageSubida:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v4, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->textOfName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 231
    :cond_8
    const-string v4, ""

    goto/16 :goto_1

    .line 232
    :cond_9
    const-string v4, ""

    goto/16 :goto_2

    .line 248
    .restart local v3    # "usuariosSinImagenes":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/models/UserModel;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;

    .line 250
    .local v0, "c":Lcl/birdie/transantiagomaster/facebook/models/CommentModel;
    iget-object v5, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 252
    iget-object v5, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RefrescarPost: a\u00f1adiendo id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    iget-object v5, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Id:Ljava/lang/String;

    iget-object v6, v0, Lcl/birdie/transantiagomaster/facebook/models/CommentModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public final redibujarImagenes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imagenes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    monitor-exit v2

    return-void

    .line 169
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 170
    .local v0, "img":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-static {p2, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "img":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
