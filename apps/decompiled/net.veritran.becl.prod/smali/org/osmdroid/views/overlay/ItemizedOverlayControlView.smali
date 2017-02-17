.class public Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;
.super Landroid/widget/LinearLayout;
.source "ItemizedOverlayControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;
    }
.end annotation


# instance fields
.field protected mCenterToButton:Landroid/widget/ImageButton;

.field protected mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

.field protected mNavToButton:Landroid/widget/ImageButton;

.field protected mNextButton:Landroid/widget/ImageButton;

.field protected mPreviousButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/osmdroid/ResourceProxy;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/osmdroid/ResourceProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    const/4 v2, -0x2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    .line 44
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->previous:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->next:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->center:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    .line 54
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->navto_small:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {p3, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->initViewListeners()V

    .line 71
    return-void
.end method

.method private initViewListeners()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mCenterToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$3;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$4;-><init>(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public setItemizedOverlayControlViewListener(Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;)V
    .locals 0
    .param p1, "lis"    # Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mLis:Lorg/osmdroid/views/overlay/ItemizedOverlayControlView$ItemizedOverlayControlViewListener;

    .line 79
    return-void
.end method

.method public setNavToVisible(I)V
    .locals 1
    .param p1, "pVisibility"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNavToButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public setNextEnabled(Z)V
    .locals 1
    .param p1, "pEnabled"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method public setPreviousEnabled(Z)V
    .locals 1
    .param p1, "pEnabled"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayControlView;->mPreviousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 87
    return-void
.end method
