.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;
.super Ljava/lang/Object;
.source "SambaAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setupFocusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 619
    if-eqz p2, :cond_0

    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    invoke-virtual {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$6;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 622
    :cond_0
    return-void
.end method
