.class final Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$2;
.super Ljava/lang/Object;
.source "TwitterOAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->tryAgain$13462e()V

    .line 128
    return-void
.end method
