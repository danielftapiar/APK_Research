.class final Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;
.super Ljava/lang/Object;
.source "DisplayPhotoFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->LoadContent()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v1, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void

    .line 144
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 138
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$3;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    check-cast p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->procesarImageModel(Lcl/birdie/transantiagomaster/facebook/models/ImageModel;)V

    .line 139
    return-void
.end method
