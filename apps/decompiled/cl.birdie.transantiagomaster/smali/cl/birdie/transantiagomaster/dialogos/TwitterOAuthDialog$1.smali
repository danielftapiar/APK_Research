.class final Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$1;
.super Landroid/webkit/WebChromeClient;
.source "TwitterOAuthDialog.java"


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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    .line 100
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 103
    return-void
.end method
