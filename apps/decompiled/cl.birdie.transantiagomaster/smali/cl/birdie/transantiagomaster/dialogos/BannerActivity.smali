.class public Lcl/birdie/transantiagomaster/dialogos/BannerActivity;
.super Landroid/app/Activity;
.source "BannerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final cerrar()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->finish()V

    .line 52
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->cerrar()V

    .line 47
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->requestWindowFeature(I)Z

    .line 23
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->setContentView(I)V

    .line 24
    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 25
    .local v1, "wv":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 26
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 27
    const-string v2, "http://www.birdie.cl/transantiagomaster/android/index.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/BannerActivity;)V

    .line 33
    .local v0, "wbc":Landroid/webkit/WebChromeClient;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 35
    const v2, 0x7f080076

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 36
    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$2;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/BannerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/BannerActivity;->cerrar()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x7f08016f
        :pswitch_0
    .end packed-switch
.end method
