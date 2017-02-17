.class final Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;
.super Landroid/webkit/WebViewClient;
.source "WebViewOAuthDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientOAuth"
.end annotation


# instance fields
.field final synthetic this$0:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;


# direct methods
.method private constructor <init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;->this$0:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;B)V
    .locals 0
    .param p1, "x0"    # Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;-><init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;)V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    new-instance v0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;

    invoke-direct {v0, p0}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;-><init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method
