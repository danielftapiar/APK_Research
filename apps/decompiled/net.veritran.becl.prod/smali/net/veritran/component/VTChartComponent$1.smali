.class Lnet/veritran/component/VTChartComponent$1;
.super Landroid/webkit/WebViewClient;
.source "VTChartComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTChartComponent;->setWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTChartComponent;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTChartComponent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTChartComponent;

    .prologue
    .line 1261
    iput-object p1, p0, Lnet/veritran/component/VTChartComponent$1;->this$0:Lnet/veritran/component/VTChartComponent;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 1269
    .local v2, "ratio":F
    const/16 v0, 0x168

    .line 1271
    .local v0, "TAM_RESIZE":I
    move v3, v0

    .line 1272
    .local v3, "width":I
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v1, v4

    .line 1274
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 1276
    const-string v4, "file:///android_asset/chart.html"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTChartComponent$1;->this$0:Lnet/veritran/component/VTChartComponent;

    # invokes: Lnet/veritran/component/VTChartComponent;->createJsFlotLibrary(II)Ljava/lang/String;
    invoke-static {v5, v3, v1}, Lnet/veritran/component/VTChartComponent;->access$300(Lnet/veritran/component/VTChartComponent;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1280
    :cond_0
    return-void
.end method
