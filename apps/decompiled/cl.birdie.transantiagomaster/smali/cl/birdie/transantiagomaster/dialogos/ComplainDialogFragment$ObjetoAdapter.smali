.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ComplainDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjetoAdapter"
.end annotation


# instance fields
.field favs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/IFavorito;",
            ">;"
        }
    .end annotation
.end field

.field paraderos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            ">;"
        }
    .end annotation
.end field

.field servicios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
            ">;"
        }
    .end annotation
.end field

.field tipo:C


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p4, "tipo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/IFavorito;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "favs":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/IFavorito;>;"
    .local p2, "pars":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    .local p3, "svcs":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Servicio;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 239
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    .line 240
    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->paraderos:Ljava/util/List;

    .line 241
    iput-object p3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->servicios:Ljava/util/List;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->tipo:C

    .line 243
    return-void
.end method

.method private getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resId"    # I

    .prologue
    .line 276
    .line 278
    move-object v4, p2

    .local v4, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 279
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 280
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 279
    check-cast v5, Landroid/view/LayoutInflater;

    .line 282
    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :cond_0
    move-object v3, v4

    .line 285
    check-cast v3, Landroid/widget/TextView;

    .line 288
    .local v3, "t":Landroid/widget/TextView;
    iget-char v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->tipo:C

    sparse-switch v5, :sswitch_data_0

    .line 300
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v5, :cond_1

    .line 301
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 302
    .local v1, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Paradero "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .end local v1    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 315
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    return-object v4

    .line 290
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_0
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->paraderos:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 291
    .restart local v1    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Paradero "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :sswitch_1
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->servicios:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 296
    .local v2, "r":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Servicio "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->getGlosaSentido()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "r":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :cond_1
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-eqz v5, :cond_2

    .line 304
    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 305
    .restart local v2    # "r":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Servicio "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->getGlosaSentido()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 307
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "r":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :cond_2
    const-string v0, "ERROR"

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 247
    iget-char v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->tipo:C

    sparse-switch v0, :sswitch_data_0

    .line 253
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    .line 249
    :sswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->paraderos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 251
    :sswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->servicios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 332
    .line 333
    const v0, 0x1090009

    .line 332
    invoke-direct {p0, p1, p2, p3, v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 259
    iget-char v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->tipo:C

    sparse-switch v0, :sswitch_data_0

    .line 265
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->favs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 261
    :sswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->paraderos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 263
    :sswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->servicios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    .line 326
    const v0, 0x1090008

    .line 325
    invoke-direct {p0, p1, p2, p3, v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
