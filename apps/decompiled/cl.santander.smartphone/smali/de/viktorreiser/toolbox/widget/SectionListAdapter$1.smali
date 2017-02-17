.class Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/SectionListAdapter;


# direct methods
.method constructor <init>(Lde/viktorreiser/toolbox/widget/SectionListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;->this$0:Lde/viktorreiser/toolbox/widget/SectionListAdapter;

    .line 25
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 29
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;->this$0:Lde/viktorreiser/toolbox/widget/SectionListAdapter;

    # invokes: Lde/viktorreiser/toolbox/widget/SectionListAdapter;->updateSessionCache()V
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->access$0(Lde/viktorreiser/toolbox/widget/SectionListAdapter;)V

    .line 30
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 35
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/SectionListAdapter$1;->this$0:Lde/viktorreiser/toolbox/widget/SectionListAdapter;

    # invokes: Lde/viktorreiser/toolbox/widget/SectionListAdapter;->updateSessionCache()V
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/SectionListAdapter;->access$0(Lde/viktorreiser/toolbox/widget/SectionListAdapter;)V

    .line 36
    return-void
.end method
