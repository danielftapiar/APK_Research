.class Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;
.super Ljava/lang/Object;
.source "PathAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setupFocusListener()V
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
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 401
    if-eqz p2, :cond_0

    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$7;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 404
    :cond_0
    return-void
.end method
