.class final Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;
.super Ljava/lang/Object;
.source "DisplayPhotoFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->procesarImageModel(Lcl/birdie/transantiagomaster/facebook/models/ImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 208
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "Error al obtener likeCount"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 198
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$4;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->likeCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
