.class Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Mapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/Mapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation


# instance fields
.field calendar:Ljava/util/Calendar;

.field final synthetic this$0:Lcl/santander/smartphone/localizador/Mapa;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/localizador/Mapa;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    .line 349
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->calendar:Ljava/util/Calendar;

    .line 352
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "count":I
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v1, v1, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 360
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 377
    if-nez p2, :cond_0

    .line 379
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    # getter for: Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcl/santander/smartphone/localizador/Mapa;->access$0(Lcl/santander/smartphone/localizador/Mapa;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    const v10, 0x7f030044

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 384
    :cond_0
    const v9, 0x7f0601f1

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 385
    .local v4, "name":Landroid/widget/TextView;
    const v9, 0x7f0601f2

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 386
    .local v3, "location":Landroid/widget/TextView;
    const v9, 0x7f0601f8

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 387
    .local v0, "distance":Landroid/widget/TextView;
    const v9, 0x7f0601f3

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 389
    .local v1, "icon":Landroid/widget/ImageView;
    const v9, 0x7f0601f4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 390
    .local v2, "ll_estrella":Landroid/widget/LinearLayout;
    const v9, 0x7f0601f5

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 391
    .local v6, "tv_estrella_1":Landroid/widget/TextView;
    const v9, 0x7f0601f6

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 392
    .local v7, "tv_estrella_2":Landroid/widget/TextView;
    const v9, 0x7f0601f7

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 397
    .local v8, "tv_estrella_3":Landroid/widget/TextView;
    const v9, 0x7f0601f0

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 399
    .local v5, "root":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    # getter for: Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcl/santander/smartphone/localizador/Mapa;->access$0(Lcl/santander/smartphone/localizador/Mapa;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    invoke-static {v9, v5}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 402
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDistanciaScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v9

    sget-object v10, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v9, v10}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 409
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDescOferta()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcl/santander/smartphone/Utils;->formatearEstrellaOferta(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 418
    :goto_0
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;->this$0:Lcl/santander/smartphone/localizador/Mapa;

    invoke-virtual {v10}, Lcl/santander/smartphone/localizador/Mapa;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    return-object p2

    .line 415
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
