.class final Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;
.super Ljava/lang/Object;
.source "BarraDerechaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/BarraDerechaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeListener"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "postId"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->id:Ljava/lang/String;

    .line 156
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    # getter for: Lcl/birdie/transantiagomaster/BarraDerechaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->access$0(Lcl/birdie/transantiagomaster/BarraDerechaFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;->id:Ljava/lang/String;

    new-instance v2, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;

    invoke-direct {v2, p0, p1}, Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener$1;-><init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment$LikeListener;Landroid/view/View;)V

    invoke-interface {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onLike(Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 181
    :cond_0
    return-void
.end method
