.class Lnet/veritran/component/VTImage$BackgroundImageTask;
.super Landroid/os/AsyncTask;
.source "VTImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field imageName:Ljava/lang/String;

.field final synthetic this$0:Lnet/veritran/component/VTImage;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTImage;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 280
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 288
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 290
    .local v1, "imageNameUnformatted":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->imageName:Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 293
    .local v2, "width":I
    iget-object v3, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 295
    .local v0, "height":I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->imageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v0}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage$BackgroundImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 301
    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v0}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v0}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    invoke-virtual {v2}, Lnet/veritran/component/VTImage;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lnet/veritran/component/VTImage$BackgroundImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v0}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 310
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage$BackgroundImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 285
    return-void
.end method
