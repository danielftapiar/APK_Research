.class public Lcom/prey/activities/PanelWebActivity;
.super Landroid/app/Activity;
.source "PanelWebActivity.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private myWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object p0, p0, Lcom/prey/activities/PanelWebActivity;->activity:Landroid/app/Activity;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/activities/PanelWebActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/PanelWebActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/prey/activities/PanelWebActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/PanelWebActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/prey/activities/DeviceReadyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/PanelWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/prey/activities/PanelWebActivity;->finish()V

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/prey/activities/PanelWebActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/prey/activities/PanelWebActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f10009a

    invoke-virtual {p0, v0}, Lcom/prey/activities/PanelWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 50
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 51
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 52
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 54
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/prey/activities/PanelWebActivity$1;

    invoke-direct {v5, p0}, Lcom/prey/activities/PanelWebActivity$1;-><init>(Lcom/prey/activities/PanelWebActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 66
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/prey/activities/PanelWebActivity$2;

    invoke-direct {v5, p0}, Lcom/prey/activities/PanelWebActivity$2;-><init>(Lcom/prey/activities/PanelWebActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    invoke-virtual {p0}, Lcom/prey/activities/PanelWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyConfig;->getPreyPanelJwt()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/prey/activities/PanelWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyConfig;->getTokenJwt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "postData":Ljava/lang/String;
    const-string v4, "BASE64"

    invoke-static {v1, v4}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    .local v0, "postByte":[B
    iget-object v4, p0, Lcom/prey/activities/PanelWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 93
    return-void
.end method
