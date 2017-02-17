.class final Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$6;
.super Ljava/lang/Object;
.source "DisplayCommentFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->procesarPost(Lcl/birdie/transantiagomaster/facebook/models/PostModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$6;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 215
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;

    .line 210
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lcl/birdie/transantiagomaster/facebook/models/ImageModel;->UrlImage:Ljava/lang/String;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment$6;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/DisplayCommentFragment;->imageSubida:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 211
    return-void
.end method
