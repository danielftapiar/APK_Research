.class final Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;
.super Ljava/lang/Thread;
.source "OAuthDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;


# direct methods
.method constructor <init>(Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;->this$0:Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;->this$0:Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;

    invoke-virtual {v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->requestToken()V

    .line 323
    return-void
.end method
