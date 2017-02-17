.class final Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$3;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->login()V

    .line 151
    return-void
.end method
