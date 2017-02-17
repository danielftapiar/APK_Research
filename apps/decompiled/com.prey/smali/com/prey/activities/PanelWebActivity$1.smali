.class Lcom/prey/activities/PanelWebActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "PanelWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/PanelWebActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/PanelWebActivity;


# direct methods
.method constructor <init>(Lcom/prey/activities/PanelWebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/PanelWebActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/prey/activities/PanelWebActivity$1;->this$0:Lcom/prey/activities/PanelWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prey/activities/PanelWebActivity$1;->this$0:Lcom/prey/activities/PanelWebActivity;

    # getter for: Lcom/prey/activities/PanelWebActivity;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/prey/activities/PanelWebActivity;->access$000(Lcom/prey/activities/PanelWebActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/prey/activities/PanelWebActivity$1;->this$0:Lcom/prey/activities/PanelWebActivity;

    # getter for: Lcom/prey/activities/PanelWebActivity;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/prey/activities/PanelWebActivity;->access$000(Lcom/prey/activities/PanelWebActivity;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 60
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/prey/activities/PanelWebActivity$1;->this$0:Lcom/prey/activities/PanelWebActivity;

    # getter for: Lcom/prey/activities/PanelWebActivity;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/prey/activities/PanelWebActivity;->access$000(Lcom/prey/activities/PanelWebActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 62
    :cond_0
    return-void
.end method
