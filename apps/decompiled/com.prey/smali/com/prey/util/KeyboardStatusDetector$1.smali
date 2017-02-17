.class Lcom/prey/util/KeyboardStatusDetector$1;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/util/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/prey/util/KeyboardStatusDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/util/KeyboardStatusDetector;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/prey/util/KeyboardStatusDetector;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/util/KeyboardStatusDetector;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iput-object p2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 35
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 36
    .local v0, "heightDiff":I
    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-boolean v2, v2, Lcom/prey/util/KeyboardStatusDetector;->keyboardVisible:Z

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iput-boolean v6, v2, Lcom/prey/util/KeyboardStatusDetector;->keyboardVisible:Z

    .line 40
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-object v2, v2, Lcom/prey/util/KeyboardStatusDetector;->visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-object v2, v2, Lcom/prey/util/KeyboardStatusDetector;->visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;

    invoke-interface {v2, v6}, Lcom/prey/util/KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-boolean v2, v2, Lcom/prey/util/KeyboardStatusDetector;->keyboardVisible:Z

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iput-boolean v5, v2, Lcom/prey/util/KeyboardStatusDetector;->keyboardVisible:Z

    .line 45
    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-object v2, v2, Lcom/prey/util/KeyboardStatusDetector;->visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/prey/util/KeyboardStatusDetector$1;->this$0:Lcom/prey/util/KeyboardStatusDetector;

    iget-object v2, v2, Lcom/prey/util/KeyboardStatusDetector;->visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;

    invoke-interface {v2, v5}, Lcom/prey/util/KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0
.end method
