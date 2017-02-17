.class public final Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomGridViewAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private lstImagesModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/ImageModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/facebook/models/ImageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "lstImagesModel":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/ImageModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v2, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 51
    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/LinearLayout;

    .line 54
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const v2, 0x7f0800b7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    invoke-static {v2, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 58
    const v2, 0x7f0800b8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "texto":Landroid/widget/TextView;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/adapter/CustomGridViewAdapter;->lstImagesModel:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->NameImage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    return-object p2
.end method
