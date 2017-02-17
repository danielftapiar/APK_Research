.class final Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;
.super Ljava/lang/Object;
.source "DisplayPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;)Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->idPhoto:Ljava/lang/String;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtForComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1$1;-><init>(Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCreateComment(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 169
    iget-object v0, p0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment$1;->this$0:Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/DisplayPhotoFragment;->txtForComment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method
