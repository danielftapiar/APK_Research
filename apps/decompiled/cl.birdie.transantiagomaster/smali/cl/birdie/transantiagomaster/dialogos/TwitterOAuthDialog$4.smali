.class final Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$4;
.super Ljava/lang/Object;
.source "TwitterOAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->tryAgain$13462e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$4;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->access$0(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
