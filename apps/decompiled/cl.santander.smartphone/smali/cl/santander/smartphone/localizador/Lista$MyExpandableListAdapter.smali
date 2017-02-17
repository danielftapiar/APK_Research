.class public Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "Lista.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/Lista;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyExpandableListAdapter"
.end annotation


# instance fields
.field calendar:Ljava/util/Calendar;

.field final synthetic this$0:Lcl/santander/smartphone/localizador/Lista;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/localizador/Lista;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    .line 174
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->calendar:Ljava/util/Calendar;

    .line 177
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    sget-object v5, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 199
    .local v5, "mapa":Lcom/google/android/maps/MapView;
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 200
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v4, v4, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    const v6, 0x7f030065

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 203
    const v4, 0x7f0602e5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 206
    .local v13, "l":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    :cond_1
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v4, v4, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 222
    .local v14, "ofi":Lcl/santander/santanderCL/data/response/ItemPOI;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v4}, Lcl/santander/smartphone/localizador/Lista;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0200e5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 224
    .local v3, "marker":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 225
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 224
    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v10

    .line 235
    .local v10, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    new-instance v2, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v4}, Lcl/santander/smartphone/localizador/Lista;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v7, v7, Lcl/santander/smartphone/localizador/Lista;->handlerBubble:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v8}, Lcl/santander/smartphone/localizador/Lista;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v18, 0x7f020098

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapActivity;Lcom/google/android/maps/MapView;ZLandroid/os/Handler;Landroid/graphics/drawable/Drawable;)V

    .line 238
    .local v2, "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    const/4 v4, 0x1

    new-array v12, v4, [Landroid/graphics/drawable/Drawable;

    .line 240
    .local v12, "iconos":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 242
    .local v16, "texts":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v15, v4, [Lcom/google/android/maps/GeoPoint;

    .line 244
    .local v15, "points":[Lcom/google/android/maps/GeoPoint;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 246
    .local v17, "values":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 249
    .local v9, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v7}, Lcl/santander/smartphone/localizador/Lista;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v12, v4

    .line 255
    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v7

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v7, v7, v18

    double-to-int v7, v7

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v8, v0

    invoke-direct {v6, v7, v8}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v6, v15, v4

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v4

    .line 259
    const/4 v4, 0x0

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v17, v4

    .line 263
    invoke-virtual {v2, v15}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setPoints([Lcom/google/android/maps/GeoPoint;)V

    .line 264
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setOficinas([Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v12}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setIconos([Landroid/graphics/drawable/Drawable;)V

    .line 266
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setTexts([Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->iniciaOverlay()V

    .line 269
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 277
    new-instance v11, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v6

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v18

    double-to-int v4, v6

    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v6

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v18

    double-to-int v6, v6

    invoke-direct {v11, v4, v6}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 279
    .local v11, "geopoint":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 280
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v4

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 283
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v5, v4}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/google/android/maps/MapView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return-object p4

    .line 285
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, -0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 314
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 320
    if-nez p3, :cond_0

    .line 322
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    const v10, 0x7f030044

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 326
    :cond_0
    const v9, 0x7f0601f1

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, "name":Landroid/widget/TextView;
    const v9, 0x7f0601f2

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 328
    .local v3, "location":Landroid/widget/TextView;
    const v9, 0x7f0601f8

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    .local v0, "distance":Landroid/widget/TextView;
    const v9, 0x7f0601f3

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 332
    .local v1, "icon":Landroid/widget/ImageView;
    const v9, 0x7f0601f4

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 333
    .local v2, "ll_estrella":Landroid/widget/LinearLayout;
    const v9, 0x7f0601f5

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 334
    .local v6, "tv_estrella_1":Landroid/widget/TextView;
    const v9, 0x7f0601f6

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 335
    .local v7, "tv_estrella_2":Landroid/widget/TextView;
    const v9, 0x7f0601f7

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 340
    .local v8, "tv_estrella_3":Landroid/widget/TextView;
    const v9, 0x7f0601f0

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 342
    .local v5, "root":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v9, v5}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 346
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDistanciaScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v9

    sget-object v10, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v9, v10}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 352
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDescOferta()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcl/santander/smartphone/Utils;->formatearEstrellaOferta(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 363
    :goto_0
    iget-object v9, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v9, v9, Lcl/santander/smartphone/localizador/Lista;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v10}, Lcl/santander/smartphone/localizador/Lista;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-object p3

    .line 359
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method
