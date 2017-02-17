.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComplainDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipoReclamoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;",
        ">;"
    }
.end annotation


# instance fields
.field reclamos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "reclamos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;>;"
    const v0, 0x7f030033

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 165
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;->reclamos:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;->reclamos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 209
    .line 211
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 213
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    check-cast v3, Landroid/view/LayoutInflater;

    .line 215
    const v4, 0x7f030033

    .line 216
    const/4 v5, 0x0

    .line 215
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 219
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;->reclamos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    .line 221
    .local v1, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 222
    iget-object v4, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->texto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    .local v0, "img":Landroid/widget/ImageView;
    iget-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->icon:Ljava/lang/String;

    invoke-static {v3, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 227
    return-object v2
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;->reclamos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 185
    .line 187
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 188
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 189
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    check-cast v3, Landroid/view/LayoutInflater;

    .line 191
    const v4, 0x7f030033

    .line 192
    const/4 v5, 0x0

    .line 191
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 195
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;->reclamos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    .line 197
    .local v1, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    iget-object v4, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->texto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const v3, 0x7f0800b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 201
    .local v0, "img":Landroid/widget/ImageView;
    iget-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->icon:Ljava/lang/String;

    invoke-static {v3, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 203
    return-object v2
.end method
