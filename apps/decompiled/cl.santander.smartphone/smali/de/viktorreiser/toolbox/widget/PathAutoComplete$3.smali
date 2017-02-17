.class Lde/viktorreiser/toolbox/widget/PathAutoComplete$3;
.super Ljava/lang/Object;
.source "PathAutoComplete.java"

# interfaces
.implements Ljava/io/FileFilter;


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
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$3;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 302
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/PathAutoComplete$3;->this$0:Lde/viktorreiser/toolbox/widget/PathAutoComplete;

    # getter for: Lde/viktorreiser/toolbox/widget/PathAutoComplete;->mShowFiles:Z
    invoke-static {v0}, Lde/viktorreiser/toolbox/widget/PathAutoComplete;->access$3(Lde/viktorreiser/toolbox/widget/PathAutoComplete;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
