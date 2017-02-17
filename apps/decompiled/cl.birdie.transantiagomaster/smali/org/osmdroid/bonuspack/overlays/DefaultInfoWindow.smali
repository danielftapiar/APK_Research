.class public Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;
.super Lorg/osmdroid/bonuspack/overlays/InfoWindow;
.source "DefaultInfoWindow.java"


# static fields
.field static mDescriptionId:I

.field static mImageId:I

.field static mSubDescriptionId:I

.field static mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mTitleId:I

    sput v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mDescriptionId:I

    sput v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mSubDescriptionId:I

    sput v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mImageId:I

    .line 21
    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/bonuspack/overlays/InfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 39
    sget v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mTitleId:I

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id/bubble_title"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mTitleId:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id/bubble_description"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mDescriptionId:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id/bubble_subdescription"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "id/bubble_image"

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mImageId:I

    sget v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mTitleId:I

    if-eqz v0, :cond_0

    sget v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mDescriptionId:I

    if-eqz v0, :cond_0

    sget v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mSubDescriptionId:I

    if-eqz v0, :cond_0

    sget v0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mImageId:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "BONUSPACK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DefaultInfoWindow: unable to get res ids in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mView:Landroid/view/View;

    new-instance v1, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow$1;-><init>(Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V
    .locals 10
    .param p1, "item"    # Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 53
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "title":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 55
    const-string v5, ""

    .line 56
    :cond_0
    iget-object v6, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mView:Landroid/view/View;

    sget v7, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mTitleId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "snippet":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 60
    const-string v2, ""

    .line 61
    :cond_1
    iget-object v6, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mView:Landroid/view/View;

    sget v7, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mDescriptionId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v6, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mView:Landroid/view/View;

    sget v7, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 65
    .local v4, "subDescText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getSubDescription()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "subDesc":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 67
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v6, p0, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mView:Landroid/view/View;

    sget v7, Lorg/osmdroid/bonuspack/overlays/DefaultInfoWindow;->mImageId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_1
    return-void

    .line 70
    .end local v0    # "image":Landroid/graphics/drawable/Drawable;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    .restart local v0    # "image":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
