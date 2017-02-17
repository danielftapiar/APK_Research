.class Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;
.super Ljava/lang/Object;
.source "SambaAutoComplete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

.field private final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    iput-object p2, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;->val$listener:Landroid/view/View$OnClickListener;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;->this$0:Lde/viktorreiser/toolbox/widget/SambaAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SambaAutoComplete;->access$16(Lde/viktorreiser/toolbox/widget/SambaAutoComplete;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SambaAutoComplete$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 388
    return-void
.end method
