.class public Lcom/prey/util/KeyboardStatusDetector;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"


# instance fields
.field keyboardVisible:Z

.field visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/util/KeyboardStatusDetector;->keyboardVisible:Z

    return-void
.end method


# virtual methods
.method public registerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prey/util/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/prey/util/KeyboardStatusDetector;

    .line 26
    return-void
.end method

.method public registerView(Landroid/view/View;)Lcom/prey/util/KeyboardStatusDetector;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/prey/util/KeyboardStatusDetector$1;

    invoke-direct {v1, p0, p1}, Lcom/prey/util/KeyboardStatusDetector$1;-><init>(Lcom/prey/util/KeyboardStatusDetector;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    return-object p0
.end method

.method public setVisibilityListener(Lcom/prey/util/KeyboardVisibilityListener;)Lcom/prey/util/KeyboardStatusDetector;
    .locals 0
    .param p1, "listener"    # Lcom/prey/util/KeyboardVisibilityListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/prey/util/KeyboardStatusDetector;->visibilityListener:Lcom/prey/util/KeyboardVisibilityListener;

    .line 56
    return-object p0
.end method
