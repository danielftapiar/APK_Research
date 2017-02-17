.class Lnet/veritran/component/VTHTMLAreaComponent$1;
.super Landroid/webkit/WebViewClient;
.source "VTHTMLAreaComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTHTMLAreaComponent;->setWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTHTMLAreaComponent;

.field final synthetic val$htmlAreaConfiguration:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTHTMLAreaComponent;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTHTMLAreaComponent;

    .prologue
    .line 189
    iput-object p1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    iput-object p2, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->val$htmlAreaConfiguration:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    # getter for: Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lnet/veritran/component/VTHTMLAreaComponent;->access$000(Lnet/veritran/component/VTHTMLAreaComponent;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 193
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->val$htmlAreaConfiguration:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    const-string v2, "onerrornext"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "onErrorNext":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    invoke-virtual {v1}, Lnet/veritran/component/VTHTMLAreaComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/utils/InternetConnection;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    invoke-virtual {v1}, Lnet/veritran/component/VTHTMLAreaComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    invoke-virtual {v1}, Lnet/veritran/component/VTHTMLAreaComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/VTHTMLAreaComponent$1;->this$0:Lnet/veritran/component/VTHTMLAreaComponent;

    # getter for: Lnet/veritran/component/VTHTMLAreaComponent;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lnet/veritran/component/VTHTMLAreaComponent;->access$000(Lnet/veritran/component/VTHTMLAreaComponent;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
