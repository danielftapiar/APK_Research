.class final Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

.field private final synthetic val$comentario:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->val$comentario:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 274
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 257
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;)Lcl/birdie/transantiagomaster/facebook/WallFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->this$1:Lcl/birdie/transantiagomaster/facebook/WallFragment$2;

    # getter for: Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->this$0:Lcl/birdie/transantiagomaster/facebook/WallFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2;->access$0(Lcl/birdie/transantiagomaster/facebook/WallFragment$2;)Lcl/birdie/transantiagomaster/facebook/WallFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/WallFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;->val$comentario:Ljava/lang/String;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    new-instance v3, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2$1;-><init>(Lcl/birdie/transantiagomaster/facebook/WallFragment$2$2;)V

    invoke-interface {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCreatePost(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 270
    :cond_0
    return-void
.end method
