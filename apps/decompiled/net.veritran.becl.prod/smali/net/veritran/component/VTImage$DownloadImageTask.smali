.class Lnet/veritran/component/VTImage$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "VTImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTImage;

.field urldisplay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTImage;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage$DownloadImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 239
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 240
    .local v1, "urldisplayUnformatted":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v0, p1, v2

    .line 241
    .local v0, "expires":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->urldisplay:Ljava/lang/String;

    .line 243
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->urldisplay:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lnet/veritran/utils/ImageHandler;->preLoadImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTImage$DownloadImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 251
    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 252
    .local v2, "width":I
    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 254
    .local v1, "height":I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->urldisplay:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 257
    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    invoke-virtual {v5}, Lnet/veritran/component/VTImage;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v3, p0, Lnet/veritran/component/VTImage$DownloadImageTask;->this$0:Lnet/veritran/component/VTImage;

    # getter for: Lnet/veritran/component/VTImage;->vtImageView:Landroid/view/View;
    invoke-static {v3}, Lnet/veritran/component/VTImage;->access$000(Lnet/veritran/component/VTImage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 264
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 236
    return-void
.end method
