.class Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;
.super Ljava/lang/Object;
.source "PathAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/PathAutoComplete;->initialize(Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    iget-object v1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$4;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    invoke-virtual {v1}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 310
    return-void
.end method
