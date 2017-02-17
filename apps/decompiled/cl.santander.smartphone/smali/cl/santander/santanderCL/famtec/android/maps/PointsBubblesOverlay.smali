.class public Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;


# instance fields
.field private a:Lcom/google/android/maps/MapView;

.field private b:Landroid/view/View;

.field private c:Lcom/google/android/maps/OverlayItem;

.field private d:Lcom/google/android/maps/MapActivity;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:[Lcom/google/android/maps/GeoPoint;

.field public items:Ljava/util/List;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapActivity;Lcom/google/android/maps/MapView;ZLandroid/os/Handler;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    iput-object p3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->f:Z

    iput-object p6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->h:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->g:Landroid/os/Handler;

    iput-boolean p4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->e:Z

    invoke-static {p1}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic b(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Lcom/google/android/maps/MapView;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method static synthetic c(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addBubble(Lcom/google/android/maps/OverlayItem;I)V
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x6

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v1, -0x2

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setId(I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLines(I)V

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setId(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLines(I)V

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxEms(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    new-instance v2, Lcl/santander/santanderCL/famtec/android/maps/b;

    invoke-direct {v2, p0}, Lcl/santander/santanderCL/famtec/android/maps/b;-><init>(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->d:Lcom/google/android/maps/MapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02008b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    const/4 v4, 0x0

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    neg-int v5, v2

    const/16 v6, 0x31

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;III)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    return-void
.end method

.method public iniciaOverlay()V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->i:[Lcom/google/android/maps/GeoPoint;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->f:Z

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->populate()V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/maps/OverlayItem;

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->i:[Lcom/google/android/maps/GeoPoint;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->k:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->e:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->l:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v3}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isSet()Z
    .locals 1

    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->f:Z

    return v0
.end method

.method protected onTap(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->c:Lcom/google/android/maps/OverlayItem;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->c:Lcom/google/android/maps/OverlayItem;

    invoke-virtual {p0, v0, p1}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->addBubble(Lcom/google/android/maps/OverlayItem;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public removeBubble()V
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b:Landroid/view/View;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->g:Landroid/os/Handler;

    return-void
.end method

.method public setIconos([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->l:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOficinas([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->k:[Ljava/lang/String;

    return-void
.end method

.method public setPoints([Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->i:[Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method public setTexts([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->j:[Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
