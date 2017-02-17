.class public final Lcl/birdie/transantiagomaster/adapter/PostAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostAdapter.java"


# instance fields
.field public CountLikes:Landroid/widget/TextView;

.field Post:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/PostModel;",
            ">;"
        }
    .end annotation
.end field

.field public TextPost:Landroid/widget/TextView;

.field public UserNamePost:Landroid/widget/TextView;

.field private activity:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/PostModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "posts":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p1, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->Post:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->Post:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->Post:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    .line 55
    .local v5, "post":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 63
    :cond_0
    const-string v8, "ItemPost"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Post sin foto: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03003a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 69
    .local v7, "vi":Landroid/view/View;
    const v8, 0x7f080069

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->UserNamePost:Landroid/widget/TextView;

    .line 70
    const v8, 0x7f080072

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->TextPost:Landroid/widget/TextView;

    .line 71
    const v8, 0x7f0800a7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->CountLikes:Landroid/widget/TextView;

    .line 72
    const v8, 0x7f080067

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 73
    .local v2, "image":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    const v8, 0x7f080073

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const/4 v3, 0x0

    .line 74
    .local v3, "image2":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    .line 75
    .local v6, "textforPost":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 76
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    .line 118
    :cond_1
    :goto_0
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->UserNamePost:Landroid/widget/TextView;

    iget-object v9, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->CountLikes:Landroid/widget/TextView;

    iget v9, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->LikeCount:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->TextPost:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->UserNamePost:Landroid/widget/TextView;

    iget-object v9, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->Name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->User:Lcl/birdie/transantiagomaster/facebook/models/UserModel;

    iget-object v4, v8, Lcl/birdie/transantiagomaster/facebook/models/UserModel;->UrlProfilePicture:Ljava/lang/String;

    .line 125
    .local v4, "imageSource":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cargando imagen "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    invoke-static {v4, v2}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 130
    :cond_2
    return-object v7

    .line 79
    .end local v2    # "image":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    .end local v3    # "image2":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    .end local v4    # "imageSource":Ljava/lang/String;
    .end local v6    # "textforPost":Ljava/lang/String;
    .end local v7    # "vi":Landroid/view/View;
    :cond_3
    const-string v8, "ItemPost"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Post con foto: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03003b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 85
    .restart local v7    # "vi":Landroid/view/View;
    const v8, 0x7f080069

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->UserNamePost:Landroid/widget/TextView;

    .line 86
    const v8, 0x7f080072

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->TextPost:Landroid/widget/TextView;

    .line 87
    const v8, 0x7f080074

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, "TextCaption":Landroid/widget/TextView;
    const v8, 0x7f0800a7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcl/birdie/transantiagomaster/adapter/PostAdapter;->CountLikes:Landroid/widget/TextView;

    .line 89
    const v8, 0x7f080067

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 90
    .restart local v2    # "image":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    const v8, 0x7f080073

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcl/birdie/transantiagomaster/utils/ResizableImageView;

    .line 92
    .restart local v3    # "image2":Lcl/birdie/transantiagomaster/utils/ResizableImageView;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->setAdjustViewBounds(Z)V

    .line 95
    sget v8, Lcl/birdie/transantiagomaster/Pantalla;->displayHeight:I

    div-int/lit8 v1, v8, 0xa

    .line 97
    .local v1, "h":I
    const/16 v8, 0x32

    if-ge v1, v8, :cond_4

    .line 98
    const/16 v1, 0x32

    .line 100
    :cond_4
    invoke-virtual {v3, v1}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->setMaxWidth(I)V

    .line 101
    invoke-virtual {v3, v1}, Lcl/birdie/transantiagomaster/utils/ResizableImageView;->setMaxHeight(I)V

    .line 104
    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Caption:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .restart local v6    # "textforPost":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    .line 112
    if-nez v6, :cond_5

    .line 113
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    .line 115
    :cond_5
    iget-object v8, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    invoke-static {v8, v3}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 107
    .end local v6    # "textforPost":Ljava/lang/String;
    :cond_6
    iget-object v6, v5, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Name:Ljava/lang/String;

    .restart local v6    # "textforPost":Ljava/lang/String;
    goto :goto_1
.end method
