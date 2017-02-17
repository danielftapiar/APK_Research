.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;
.super Ljava/lang/Object;
.source "SambaAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

.field private final synthetic val$l:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;->val$l:Landroid/view/View$OnFocusChangeListener;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mFocusListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$15(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 365
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$1;->val$l:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 366
    return-void
.end method
