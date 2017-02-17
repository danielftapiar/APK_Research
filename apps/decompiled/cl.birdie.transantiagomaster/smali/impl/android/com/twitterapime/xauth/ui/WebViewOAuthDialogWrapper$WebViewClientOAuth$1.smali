.class final Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;
.super Landroid/os/AsyncTask;
.source "WebViewOAuthDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;


# direct methods
.method constructor <init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;->this$1:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;->this$1:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;

    iget-object v0, v0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;->this$0:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->trackUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->access$100(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;Ljava/lang/String;)V

    .line 144
    aget-object v0, p1, v2

    return-object v0
.end method
