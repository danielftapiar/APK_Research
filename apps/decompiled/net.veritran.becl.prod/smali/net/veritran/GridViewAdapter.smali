.class public Lnet/veritran/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final gridItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field

.field private hashImage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hashImagePressed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
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
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/veritran/GridViewAdapter;->hashImage:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/veritran/GridViewAdapter;->hashImagePressed:Landroid/util/SparseArray;

    .line 32
    const-string v0, "GridViewAdapter"

    iput-object v0, p0, Lnet/veritran/GridViewAdapter;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lnet/veritran/GridViewAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/GridViewAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/GridViewAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lnet/veritran/GridViewAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    new-instance p2, Landroid/widget/RelativeLayout;

    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v13, "itemWidth"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 70
    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v13, "itemHeight"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, "height":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " width="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";height="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 92
    .local v3, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->hashImage:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->hashImage:Landroid/util/SparseArray;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v13

    const-string v14, "imgsrc"

    invoke-virtual {v3, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v15

    invoke-virtual {v13, v14, v11, v2, v15}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->hashImagePressed:Landroid/util/SparseArray;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imgsrc"

    invoke-virtual {v3, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_pressed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v15

    invoke-virtual {v13, v14, v11, v2, v15}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    :cond_0
    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;-><init>()V

    .line 100
    .local v1, "componentImage":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;
    const-string v13, "src"

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v14, "imgsrc"

    invoke-virtual {v12, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v13, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v12, "width"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "px"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v10, Lnet/veritran/component/VTImage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->context:Landroid/content/Context;

    check-cast v12, Lnet/veritran/VTCommonActivity;

    invoke-direct {v10, v12}, Lnet/veritran/component/VTImage;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 104
    .local v10, "vtimage":Lnet/veritran/component/VTImage;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lnet/veritran/component/VTImage;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 105
    invoke-virtual {v10, v1}, Lnet/veritran/component/VTImage;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 106
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lnet/veritran/component/VTImage;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 107
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lnet/veritran/component/VTImage;->setMayHoover(Z)V

    .line 108
    invoke-virtual {v10}, Lnet/veritran/component/VTImage;->init()V

    .line 109
    invoke-virtual {v10}, Lnet/veritran/component/VTImage;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/view/VTImageView;

    .line 111
    .local v4, "iv":Lnet/veritran/component/view/VTImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->hashImage:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v12}, Lnet/veritran/component/view/VTImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->hashImagePressed:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v12}, Lnet/veritran/component/view/VTImageView;->setImagePressed(Landroid/graphics/Bitmap;)V

    move-object/from16 v12, p2

    .line 117
    check-cast v12, Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v12

    add-int v12, v12, p1

    invoke-virtual {v4, v12}, Lnet/veritran/component/view/VTImageView;->setId(I)V

    .line 121
    new-instance v12, Lnet/veritran/GridViewAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/veritran/GridViewAdapter$1;-><init>(Lnet/veritran/GridViewAdapter;)V

    invoke-virtual {v4, v12}, Lnet/veritran/component/view/VTImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v13, "text"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "text":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 134
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v9, "tv":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xe

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    const/4 v12, 0x3

    invoke-virtual {v4}, Lnet/veritran/component/view/VTImageView;->getId()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v12, p2

    .line 142
    check-cast v12, Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v12, v11, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v13, "next"

    invoke-virtual {v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "nextAction":Ljava/lang/String;
    new-instance v5, Lnet/veritran/component/VTHorizontalItemOnClickListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/GridViewAdapter;->gridItems:Ljava/util/List;

    .line 157
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/GridViewAdapter;->context:Landroid/content/Context;

    check-cast v13, Lnet/veritran/VTCommonActivity;

    invoke-direct {v5, v12, v13}, Lnet/veritran/component/VTHorizontalItemOnClickListener;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;Lnet/veritran/VTCommonActivity;)V

    .line 158
    .local v5, "listener":Lnet/veritran/component/VTHorizontalItemOnClickListener;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-object p2
.end method
