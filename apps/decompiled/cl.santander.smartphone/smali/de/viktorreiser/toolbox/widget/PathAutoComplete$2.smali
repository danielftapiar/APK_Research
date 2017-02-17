.class Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;
.super Ljava/lang/Object;
.source "PathAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->access$1(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 217
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$2;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mCustomFocusListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->access$2(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 218
    return-void
.end method
