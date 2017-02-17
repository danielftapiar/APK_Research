.class Lcom/google/zxing/client/android/share/ShareActivity$4;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/share/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/share/ShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/zxing/client/android/share/ShareActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/zxing/client/android/share/ShareActivity$4;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity$4;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-static {v1}, Lcom/google/zxing/client/android/clipboard/ClipboardInterface;->getText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity$4;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/zxing/client/android/share/ShareActivity;->launchSearch(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/zxing/client/android/share/ShareActivity;->access$000(Lcom/google/zxing/client/android/share/ShareActivity;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
