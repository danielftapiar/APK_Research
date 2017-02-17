.class Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;
.super Ljava/lang/Object;
.source "PathAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/PathAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

.field private final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/PathAutoComplete;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;->val$listener:Landroid/view/View$OnClickListener;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->access$0(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 194
    return-void
.end method
