.class final Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;
.super Ljava/lang/Object;
.source "BarraDerechaFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/BarraDerechaFragment;->refreshLikeCount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

.field private final synthetic val$postId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/BarraDerechaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;->val$postId:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 191
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;->this$0:Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->getListView()Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    .local v0, "container":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 203
    iget-object v2, p0, Lcl/birdie/transantiagomaster/BarraDerechaFragment$2;->val$postId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    .local v1, "likeCount":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 206
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    .end local v0    # "container":Landroid/widget/ListView;
    .end local v1    # "likeCount":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    const-string v2, "BarraDerechaFragment"

    const-string v3, "illegal state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
