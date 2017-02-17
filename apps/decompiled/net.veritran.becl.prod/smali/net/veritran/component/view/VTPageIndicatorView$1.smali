.class Lnet/veritran/component/view/VTPageIndicatorView$1;
.super Ljava/lang/Object;
.source "VTPageIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/view/VTPageIndicatorView;->changeIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/view/VTPageIndicatorView;

.field final synthetic val$ly:Landroid/widget/LinearLayout;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lnet/veritran/component/view/VTPageIndicatorView;ILandroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/view/VTPageIndicatorView;

    .prologue
    .line 98
    iput-object p1, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->this$0:Lnet/veritran/component/view/VTPageIndicatorView;

    iput p2, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->val$pos:I

    iput-object p3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->val$ly:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->this$0:Lnet/veritran/component/view/VTPageIndicatorView;

    iget v3, v3, Lnet/veritran/component/view/VTPageIndicatorView;->count:I

    if-ge v1, v3, :cond_1

    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "img":Landroid/graphics/Bitmap;
    iget v3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->val$pos:I

    if-ne v3, v1, :cond_0

    .line 107
    iget-object v3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->this$0:Lnet/veritran/component/view/VTPageIndicatorView;

    iget-object v2, v3, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOn:Landroid/graphics/Bitmap;

    .line 113
    :goto_1
    iget-object v3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->val$ly:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .local v0, "bitmap":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "bitmap":Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lnet/veritran/component/view/VTPageIndicatorView$1;->this$0:Lnet/veritran/component/view/VTPageIndicatorView;

    iget-object v2, v3, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOff:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 119
    .end local v2    # "img":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
