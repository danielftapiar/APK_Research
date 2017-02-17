.class Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImagenesCheque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/ImagenesCheque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagenesPageAdapter"
.end annotation


# instance fields
.field act:Landroid/app/Activity;

.field cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

.field final synthetic this$0:Lcl/santander/smartphone/ImagenesCheque;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/ImagenesCheque;Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemCheque;)V
    .locals 0
    .param p2, "_act"    # Landroid/app/Activity;
    .param p3, "_cheque"    # Lcl/santander/santanderCL/data/response/ItemCheque;

    .prologue
    .line 260
    iput-object p1, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->this$0:Lcl/santander/smartphone/ImagenesCheque;

    .line 261
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 262
    iput-object p2, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->act:Landroid/app/Activity;

    .line 263
    iput-object p3, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 264
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/widget/LinearLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 274
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 280
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x2

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 268
    const/4 v0, -0x2

    return v0
.end method

.method public getStructure(I)Landroid/widget/LinearLayout;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 301
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->act:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->act:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "imagen":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 306
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemCheque;->getImagenBack()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    return-object v0

    .line 311
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemCheque;->getImagenFront()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 291
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;->getStructure(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 293
    .local v0, "container":Landroid/widget/LinearLayout;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 294
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
