.class public Lnet/veritran/MobileArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MobileArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private cycle:Z

.field private elements:I

.field private heightZoomMultiplier:F

.field private itemMaxHeight:I

.field private itemMaxWidth:I

.field private showSingleItem:Z

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field

.field private widthZoomMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
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
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 39
    sget v0, Lnet/veritran/R$layout;->list_mobile:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const-string v0, "MOBILEARRAYADAPTER"

    iput-object v0, p0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    .line 26
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    .line 28
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->widthZoomMultiplier:F

    .line 29
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->heightZoomMultiplier:F

    .line 31
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    .line 32
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->elements:I

    .line 33
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->showSingleItem:Z

    .line 40
    iput-object p1, p0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lnet/veritran/MobileArrayAdapter;->values:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemMaxHeight"    # I
    .param p4, "itemMaxWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 45
    sget v0, Lnet/veritran/R$layout;->list_mobile:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const-string v0, "MOBILEARRAYADAPTER"

    iput-object v0, p0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    .line 26
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    .line 28
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->widthZoomMultiplier:F

    .line 29
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->heightZoomMultiplier:F

    .line 31
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    .line 32
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->elements:I

    .line 33
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->showSingleItem:Z

    .line 46
    iput-object p1, p0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lnet/veritran/MobileArrayAdapter;->values:Ljava/util/List;

    .line 49
    iput p3, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    .line 50
    iput p4, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IIZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemMaxHeight"    # I
    .param p4, "itemMaxWidth"    # I
    .param p5, "cycle"    # Z
    .param p6, "elements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;IIZI)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 54
    sget v0, Lnet/veritran/R$layout;->list_mobile:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const-string v0, "MOBILEARRAYADAPTER"

    iput-object v0, p0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    .line 26
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    .line 28
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->widthZoomMultiplier:F

    .line 29
    iput v2, p0, Lnet/veritran/MobileArrayAdapter;->heightZoomMultiplier:F

    .line 31
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    .line 32
    iput v1, p0, Lnet/veritran/MobileArrayAdapter;->elements:I

    .line 33
    iput-boolean v3, p0, Lnet/veritran/MobileArrayAdapter;->showSingleItem:Z

    .line 55
    iput-object p1, p0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lnet/veritran/MobileArrayAdapter;->values:Ljava/util/List;

    .line 58
    iput p3, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    .line 59
    iput p4, p0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    .line 61
    iput-boolean p5, p0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    .line 62
    iput p6, p0, Lnet/veritran/MobileArrayAdapter;->elements:I

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7fffffff

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    iget-object v2, p0, Lnet/veritran/MobileArrayAdapter;->values:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "positionIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v12, "ll":Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/MobileArrayAdapter;->cycle:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->elements:I

    move/from16 v20, v0

    rem-int v15, p1, v20

    .line 93
    .local v15, "position":I
    :goto_0
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MobileArrayAdapter["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->values:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 108
    .local v9, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v20, "imgsrc"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "imageId":Ljava/lang/String;
    const-string v20, "resourceOrigin"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "resourceOrigin":Ljava/lang/String;
    new-instance v4, Lnet/veritran/Banner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v4, v7, v0, v1}, Lnet/veritran/Banner;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 114
    .local v4, "banner":Lnet/veritran/Banner;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->widthZoomMultiplier:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->heightZoomMultiplier:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lnet/veritran/Banner;->setZoomMultiplier(FF)V

    .line 116
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v20

    const-string v21, "listtype"

    invoke-virtual/range {v20 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 117
    .local v11, "listType":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Warning! Listtype not defined. using \'image\'"

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v11, "image"

    .line 122
    :cond_0
    const/16 v17, 0x0

    .line 123
    .local v17, "singleItemLayout":Landroid/widget/LinearLayout;
    const-string v20, "image"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "slider"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 124
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lnet/veritran/Banner;->setStreatcheable(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/MobileArrayAdapter;->showSingleItem:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 127
    new-instance v17, Landroid/widget/LinearLayout;

    .end local v17    # "singleItemLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/MobileArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .restart local v17    # "singleItemLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/Gallery$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 132
    .local v6, "glp":Landroid/widget/Gallery$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/MobileArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .local v8, "innerLayout":Landroid/widget/LinearLayout;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v13, "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    .end local v6    # "glp":Landroid/widget/Gallery$LayoutParams;
    .end local v8    # "innerLayout":Landroid/widget/LinearLayout;
    .end local v13    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v20

    const-string v21, "textalign"

    invoke-virtual/range {v20 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, "textAlign":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "textalign="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz v18, :cond_3

    .line 154
    const-string v20, "center"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "textaligned=CENTER_HORIZONTAL"

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_3
    if-eqz v7, :cond_a

    .line 162
    const/4 v5, 0x0

    .line 164
    .local v5, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "It\'s defined the itemMaxWidth: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " and the itemMaxHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getImage()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_6

    .line 170
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    move/from16 v22, v0

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v7, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    :goto_1
    if-eqz v5, :cond_9

    .line 194
    invoke-virtual {v4, v5}, Lnet/veritran/Banner;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    :goto_2
    const-string v20, "text"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "label":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "label:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v20, "combo"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "dropdown"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "text"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 209
    :cond_4
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v19, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .end local v19    # "tv":Landroid/widget/TextView;
    :goto_3
    return-object v19

    .line 90
    .end local v4    # "banner":Lnet/veritran/Banner;
    .end local v7    # "imageId":Ljava/lang/String;
    .end local v9    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "listType":Ljava/lang/String;
    .end local v15    # "position":I
    .end local v16    # "resourceOrigin":Ljava/lang/String;
    .end local v17    # "singleItemLayout":Landroid/widget/LinearLayout;
    .end local v18    # "textAlign":Ljava/lang/String;
    :cond_5
    move/from16 v15, p1

    .restart local v15    # "position":I
    goto/16 :goto_0

    .line 174
    .restart local v4    # "banner":Lnet/veritran/Banner;
    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    .restart local v7    # "imageId":Ljava/lang/String;
    .restart local v9    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .restart local v11    # "listType":Ljava/lang/String;
    .restart local v16    # "resourceOrigin":Ljava/lang/String;
    .restart local v17    # "singleItemLayout":Landroid/widget/LinearLayout;
    .restart local v18    # "textAlign":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getImage()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bm":Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 179
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "It\'s NOT defined the itemMaxWidth: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " or the itemMaxHeight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/MobileArrayAdapter;->itemMaxHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getImage()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_8

    .line 185
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v20

    const/16 v21, 0x3e8

    const/16 v22, 0x3e8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v7, v1, v2}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_1

    .line 189
    :cond_8
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getImage()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bm":Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 196
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DRAWABLE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " IS NULL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 199
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/MobileArrayAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMAGE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " IS NULL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 219
    .restart local v10    # "label":Ljava/lang/String;
    :cond_b
    if-eqz v17, :cond_c

    move-object/from16 v19, v17

    .line 220
    goto/16 :goto_3

    :cond_c
    move-object/from16 v19, v4

    .line 222
    goto/16 :goto_3
.end method

.method public setShowSingleItem(Z)V
    .locals 0
    .param p1, "showSingleItem"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lnet/veritran/MobileArrayAdapter;->showSingleItem:Z

    .line 243
    return-void
.end method

.method public setZoomModifier(FF)V
    .locals 0
    .param p1, "widthMultiplier"    # F
    .param p2, "heightMultiplier"    # F

    .prologue
    .line 236
    iput p1, p0, Lnet/veritran/MobileArrayAdapter;->widthZoomMultiplier:F

    .line 237
    iput p2, p0, Lnet/veritran/MobileArrayAdapter;->heightZoomMultiplier:F

    .line 239
    return-void
.end method
