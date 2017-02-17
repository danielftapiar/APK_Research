.class public final Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;
.super Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;
.source "WebViewOAuthDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;
    }
.end annotation


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebView must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->webView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->webView:Landroid/webkit/WebView;

    new-instance v1, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper$WebViewClientOAuth;-><init>(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;B)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;-><init>(Landroid/webkit/WebView;)V

    .line 80
    return-void
.end method

.method static synthetic access$100(Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->trackUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final loadHTML(Ljava/lang/String;)V
    .locals 3
    .param p1, "htmlContent"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->webView:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected final loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected final requestToken()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-super {p0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->requestToken()V

    .line 89
    return-void
.end method

.method protected final triggerOnAccessDenied(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    invoke-super {p0, p1}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnAccessDenied(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected final triggerOnAuthorize(Lcom/twitterapime/xauth/Token;)V
    .locals 2
    .param p1, "accessToken"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 109
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-super {p0, p1}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnAuthorize(Lcom/twitterapime/xauth/Token;)V

    .line 112
    return-void
.end method

.method protected final triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    invoke-super {p0, p1, p2}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
